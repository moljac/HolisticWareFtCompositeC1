using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using Composite.Core.Application;
using Composite.Data;

namespace HolisticWareFtCompositeC1.News
{
	[ApplicationStartup]
	public partial class News
	{
		static News()
		{
			RegisterEvents();

			return;
		}

		public static void OnBeforeInitialize()
		{
			//RegisterEvents();

			return;
		}

		public static void OnInitialized()
		{
			//RegisterEvents();

			return;
		}

		public static void RegisterEvents()
		{
			DataEvents<IPageData>.OnAfterAdd += new DataEventHandler(DataEvents_OnAferAdd);
			//DataEvents<IPageData>.OnDeleted += new DataEventHandler(DataEvents_OnDeleted);
			//DataEvents<IPageData>.OnNew += new DataEventHandler(DataEvents_OnNew);
			DataEvents<IPageData>.OnStoreChanged += new StoreEventHandler(DataEvents_OnStoreChanged);

			//DataEvents<Composite.News.NewsItem>.OnAfterAdd += new DataEventHandler(DataEvents_OnAferAdd);
			//DataEvents<Composite.News.NewsItem>.OnDeleted += new DataEventHandler(DataEvents_OnDeleted);
			//DataEvents<Composite.News.NewsItem>.OnNew += new DataEventHandler(DataEvents_OnNew);
			//DataEvents<Composite.News.NewsItem>.OnStoreChanged += new StoreEventHandler(DataEvents_OnStoreChanged);

			return;
		}

		/// <summary>
		/// </summary>
		/// <returns></returns>
		static void DataEvents_OnAferAdd(object sender, DataEventArgs dataEventArgs)
		{
			// here a minor update to the cache could be done (like adding info about the new element only).

			Type type_of_object_changed = dataEventArgs.DataType;

			// typeof	= takes a type name (which you specify at compile time).
			// GetType	= gets the runtime type of an instance.
			// is		= returns true if an instance is in the inheritance tree.

			//CheckType(dataEventArgs, type_of_object_changed);

	
			return;
		}



		static void DataEvents_OnNew(object sender, DataEventArgs dataEventArgs)
		{
			// here a minor update to the cache could be done 
			// (like adding info about the new element only).

			return;
		}

		static void DataEvents_OnDeleted(object sender, DataEventArgs dataEventArgs)
		{
			// here a minor update to the cache could be done 
			// (like adding info about the new element only).

			return;
		}

		static void DataEvents_OnStoreChanged(object sender, StoreEventArgs storeEventArgs)
		{
			if (!storeEventArgs.DataEventsFired)
			{
				// an external update event happened - DataEvents_OnBeforeAdd not fired
				// here a complete cache flush could be done

			}

			return;
		}

	}
}