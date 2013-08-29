using System;
using System.Collections.Generic;
using System.Data.Services;
using System.Data.Services.Common;
using System.Data.Services.Providers;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.ServiceModel.Channels;
using Composite.Core.Threading;
using Composite.Data;
using Composite.Data.Types;

namespace Composite.OData
{
	public class C1DataServicePD : C1DataService<PublicDefaultC1DataContextEntity>
	{
		// This method is called only once to initialize service-wide policies.
		public static void InitializeService(DataServiceConfiguration config)
		{
			config.SetEntitySetAccessRule("*", EntitySetRights.AllRead);
			config.DataServiceBehavior.MaxProtocolVersion = DataServiceProtocolVersion.V2;
			config.DataServiceBehavior.AcceptProjectionRequests = true;
			config.UseVerboseErrors = true;
		}
	}


	public abstract class C1DataService<T> : DataService<T>, IServiceProvider, IRequestHandler where T : C1DataContextEntity
	{
		C1MetadataProvider _metadata;
		C1QueryProvider<T> _query;

		public C1DataService()
		{
			_metadata = GetMetadataProvider(typeof(T));
			_query = GetQueryProvider(_metadata);
		}

		Message IRequestHandler.ProcessRequestForMessage(Stream messageBody)
		{
			Message result;

			// System.ServiceModel.Web.WebOperationContext.Current.OutgoingResponse.SuppressEntityBody = true;
			IDisposable disposable = null;

			try
			{
				disposable = ThreadDataManager.EnsureInitialize();

				result = base.ProcessRequestForMessage(messageBody);
			}
			catch (Exception)
			{
				if (disposable != null)
				{
					disposable.Dispose();
				}

				throw;
			}

			var messageWrapper = new MessageWrapper(result);
			messageWrapper.OnDispose += disposable.Dispose;

			return messageWrapper;
		}

		public object GetService(Type serviceType)
		{
			if (serviceType == typeof(IDataServiceMetadataProvider))
			{
				return _metadata;
			}

			if (serviceType == typeof(IDataServiceQueryProvider))
			{
				return _query;
			}

			return null;
		}

		private C1MetadataProvider GetMetadataProvider(Type dataSourceType)
		{
			C1MetadataProvider metadata = new C1MetadataProvider();

			foreach (Type type in DataFacade.GetAllKnownInterfaces())
			{
				// "Minimal" security
				if (type.FullName.StartsWith("Composite.Data.Types.IUser")
					|| type.FullName.StartsWith("Composite.Community.Extranet.")
					|| type == typeof(ISqlConnection)
					|| type == typeof(ILockingInformation))
				{
					continue;
				}

				Guid typeId = default(Guid);
				List<string> keys = type.GetKeyPropertyNames();
				bool hasKey = false;

				foreach (object ca in type.GetCustomAttributes(typeof(ImmutableTypeIdAttribute), true))
				{
					typeId = ((ImmutableTypeIdAttribute)ca).ImmutableTypeId;
				}

				var rType = new ResourceType(
					type,
					ResourceTypeKind.EntityType,
					null,
					type.Namespace,
					type.Name,
					false
				);

				foreach (PropertyInfo pi in type.GetProperties())
				{
					ResourceProperty rProperty;
					if (keys.Contains(pi.Name))
					{
						hasKey = true;
						rProperty = new ResourceProperty(
						   pi.Name,
						   ResourcePropertyKind.Key | ResourcePropertyKind.Primitive,
						   ResourceType.GetPrimitiveResourceType(pi.PropertyType)
						);
					}
					else
					{
						rProperty = new ResourceProperty(
						   pi.Name,
						   ResourcePropertyKind.Primitive,
						   ResourceType.GetPrimitiveResourceType(pi.PropertyType)
						);
					}
					rType.AddProperty(rProperty);
				}

				if (typeId != default(Guid))
				{
					Data.DynamicTypes.DataTypeDescriptor dd = Data.DynamicTypes.DynamicTypeManager.GetDataTypeDescriptor(typeId);
					if (dd != null)
					{
						foreach (Type superType in dd.SuperInterfaces)
						{
							keys = type.GetKeyPropertyNames();
							foreach (PropertyInfo pi in superType.GetProperties())
							{
								ResourceProperty rProperty;
								if (keys.Contains(pi.Name))
								{
									hasKey = true;
									rProperty = new ResourceProperty(
									   pi.Name,
									   ResourcePropertyKind.Key | ResourcePropertyKind.Primitive,
									   ResourceType.GetPrimitiveResourceType(pi.PropertyType)
									);
								}
								else
								{
									rProperty = new ResourceProperty(
									   pi.Name,
									   ResourcePropertyKind.Primitive,
									   ResourceType.GetPrimitiveResourceType(pi.PropertyType)
									);
								}
								rProperty.CanReflectOnInstanceTypeProperty = false;
								rType.AddProperty(rProperty);
							}
						}
					}
				}
				if(hasKey)
				{
					metadata.AddResourceType(rType);
					metadata.AddResourceSet(new ResourceSet(type.FullName.Replace('.', '_'), rType));
				}
			}
			return metadata;
		}

		private C1QueryProvider<T> GetQueryProvider(C1MetadataProvider metadata)
		{
			return new C1QueryProvider<T>(metadata);
		}
	}

	public class PublicDefaultC1DataContextEntity : C1DataContextEntity
	{
		public override DataScopeIdentifier DataScope
		{
			get { return DataScopeIdentifier.Public; }
		}
		public override CultureInfo Culture
		{
			get { return DataLocalizationFacade.DefaultLocalizationCulture; }
		}
	}

	public abstract class C1DataContextEntity
	{
		public abstract DataScopeIdentifier DataScope { get; }
		public abstract CultureInfo Culture { get; }
	}
}