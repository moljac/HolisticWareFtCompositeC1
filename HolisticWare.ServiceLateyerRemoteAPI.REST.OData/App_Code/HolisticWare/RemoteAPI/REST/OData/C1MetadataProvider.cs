using System;
using System.Collections.Generic;
using System.Data.Services.Providers;

namespace Composite.OData
{
	public class C1MetadataProvider : IDataServiceMetadataProvider
	{
		#region Custom

		private Dictionary<string, ResourceType> _resourceTypes = new Dictionary<string, ResourceType>();
		private Dictionary<string, ResourceSet> _resourceSets = new Dictionary<string, ResourceSet>();

		public C1MetadataProvider()
		{
		}

		public void AddResourceType(ResourceType type)
		{
			type.SetReadOnly();
			_resourceTypes.Add(type.FullName, type);
		}

		public void AddResourceSet(ResourceSet set)
		{
			set.SetReadOnly();
			_resourceSets.Add(set.Name, set);
		}

		public ResourceType GetResourceType(string FullName)
		{
			return _resourceTypes[FullName];
		}

		#endregion

		#region IDataServiceMetadataProvider
		public string ContainerName
		{
			get { return "Container"; }
		}

		public string ContainerNamespace
		{
			get { return "Namespace"; }
		}

		public IEnumerable<ResourceType> GetDerivedTypes(ResourceType resourceType)
		{
			yield break;
		}

		public ResourceAssociationSet GetResourceAssociationSet(ResourceSet resourceSet, ResourceType resourceType, ResourceProperty resourceProperty)
		{
			throw new NotImplementedException();
		}

		public bool HasDerivedTypes(ResourceType resourceType)
		{
			return false;
		}

		public IEnumerable<ResourceSet> ResourceSets
		{
			get { return this._resourceSets.Values; }
		}

		public IEnumerable<ServiceOperation> ServiceOperations
		{
			get { yield break; }
		}

		public bool TryResolveResourceSet(string name, out ResourceSet resourceSet)
		{
			return _resourceSets.TryGetValue(name, out resourceSet);
		}

		public bool TryResolveResourceType(string name, out ResourceType resourceType)
		{
			return _resourceTypes.TryGetValue(name, out resourceType);
		}

		public bool TryResolveServiceOperation(string name, out ServiceOperation serviceOperation)
		{
			serviceOperation = null;
			return false;
		}

		public IEnumerable<ResourceType> Types
		{
			get { return this._resourceTypes.Values; }
		}
		#endregion
	}
}