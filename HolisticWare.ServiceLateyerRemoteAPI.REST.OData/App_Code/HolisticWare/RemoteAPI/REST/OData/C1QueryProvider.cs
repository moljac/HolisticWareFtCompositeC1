using System;
using System.Collections.Generic;
using System.Data.Services.Providers;
using System.Linq;
using Composite.Data;

namespace Composite.OData
{
	public class C1QueryProvider<T> : IDataServiceQueryProvider where T : C1DataContextEntity
	{
		#region Custom

		T _currentDataSource;
		C1MetadataProvider _metadata;

		public C1QueryProvider(C1MetadataProvider metadata)
		{
			_metadata = metadata;
		}

		#endregion

		#region IDataServiceQueryProvider
		public object CurrentDataSource
		{
			get
			{
				return _currentDataSource;
			}
			set
			{
				_currentDataSource = value as T;
			}
		}

		public object GetOpenPropertyValue(object target, string propertyName)
		{
			throw new NotImplementedException();
		}

		public IEnumerable<KeyValuePair<string, object>> GetOpenPropertyValues(object target)
		{
			throw new NotImplementedException();
		}

		public object GetPropertyValue(object target, ResourceProperty resourceProperty)
		{
			return target.GetType().GetProperty(resourceProperty.Name).GetValue(target, null);
		}

		public IQueryable GetQueryRootForResourceSet(ResourceSet resourceSet)
		{
			using (new DataScope(_currentDataSource.DataScope, _currentDataSource.Culture))
			{
				return DataFacade.GetData(resourceSet.ResourceType.InstanceType, false);
			}
		}

		private static IQueryable Evaluate<T>(IQueryable query) where T : class
		{
			return new List<T>(query as IEnumerable<T>).AsQueryable();
		}

		public ResourceType GetResourceType(object target)
		{
			IData data = target as IData;
			return _metadata.GetResourceType(data.DataSourceId.InterfaceType.FullName);
		}

		public object InvokeServiceOperation(ServiceOperation serviceOperation, object[] parameters)
		{
			throw new NotImplementedException();
		}

		public bool IsNullPropagationRequired
		{
			get { return true; }
		}
		#endregion
	}
}