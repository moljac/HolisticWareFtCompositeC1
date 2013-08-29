using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using System.Web;
using System.Reflection;
using System.Diagnostics;
using System.Configuration;



using Composite.Data;
using Composite.Core.Application;
using Composite.Data.Types;
using System.Net;
using System.IO;

namespace HolisticWare.Optimizations.SearchEngine
{
	/// <summary>
	/// Application start in global.asax run before the data system is initialized so this 
	/// would only work if you place your code after our unit code there. I'd suggest that 
	/// you use our ApplicationStartup feature since we can then promise that everything is 
	/// ready to rock, also across future releases.
	/// </summary>
	/// <see cref="http://api.composite.net/"/>
	/// <see cref="http://api.composite.net/html/T_Composite_Data_SitemapNavigator.htm"/>
	/// <see cref="http://msdn.microsoft.com/en-us/library/e468hxky(v=vs.100).aspx"/>
	/// <see cref="http://c1packages.codeplex.com/SourceControl/changeset/view/8053#129098"/>
	/// <see cref="http://docs.composite.net/Packages/CompositeC1searchpackages/SEOSitemap"/>
	/// <see cref="http://support.google.com/webmasters/bin/answer.py?hl=en&answer=183669"/>
	public partial class SiteMapGenerator
	{
		static SiteMapGenerator()
		{
			//RegisterEvents();

			return;
		}

		public static void RegisterEvents()
		{
			DataEvents<IPage>.OnAfterAdd += new DataEventHandler(DataEvents_OnAferAdd);
			DataEvents<IPage>.OnDeleted += new DataEventHandler(DataEvents_OnDeleted);
			DataEvents<IPage>.OnNew += new DataEventHandler(DataEvents_OnNew);
			DataEvents<IPage>.OnStoreChanged += new StoreEventHandler(DataEvents_OnStoreChanged);

			return;
		}
		/// <summary>
		/// Event triggered after Page Add and Publish
		/// </summary>
		/// <returns></returns>
		static void DataEvents_OnAferAdd(object sender, DataEventArgs dataEventArgs)
		{
			// here a minor update to the cache could be done 
			// (like adding info about the new element only).
			RegenerateSiteMaps();

			return;
		}

		/// <summary>
		/// About the OnNew event - you shouldn't manipulate your cache on this one. OnNew gets 
		/// fired when DataConnection.New<T>() is called and you can set things like default value 
		/// on properties before the newly created T gets returned to the caller. So On New run 
		/// before OnAdd and OnAdd may never be called later on.
		/// </summary>
		/// <param name="sender"></param>
		/// <param name="dataEventArgs"></param>
		static void DataEvents_OnNew(object sender, DataEventArgs dataEventArgs)
		{
			// here a minor update to the cache could be done 
			// (like adding info about the new element only).

			RegenerateSiteMaps();

			return;
		}

		static void DataEvents_OnDeleted(object sender, DataEventArgs dataEventArgs)
		{
			// here a minor update to the cache could be done 
			// (like adding info about the new element only).
			RegenerateSiteMaps();

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

		/// <summary>
		/// 
		/// </summary>
		/// <see cref="http://support.google.com/webmasters/bin/answer.py?hl=en&answer=183668"/>
		/// <see cref="http://msdn.microsoft.com/en-us/library/hh969349.aspx"/>
		private static void RegenerateSiteMaps()
		{
			string host = string.Empty;
			string port = string.Empty;

			host = HttpContext.Current.Request.ServerVariables["SERVER_NAME"];
			host = HttpContext.Current.Request.ServerVariables["SERVER_NAME"];
			// host = Application.Current.Host.Source;	// Silverlight


			port = HttpContext.Current.Request.ServerVariables["SERVER_PORT"];
			if (port == null || port == "80" || port == "443")
			{
				port = "";
			}
			else
			{
				port = ":" + port;
			}

			
			//......................................................................
			//string msg = string.Empty;
			StringBuilder sb = new StringBuilder();
			sb.Append("http://");
			sb.Append(host);
			sb.Append(port);
			sb.Append("/Sitemap.ashx");
			//......................................................................
	
			string url = sb.ToString();
			HttpWebRequest request = null;
			HttpWebResponse response = null;

			try
			{
				request = (HttpWebRequest)WebRequest.Create(url);
				response = (HttpWebResponse)request.GetResponse();

				Stream stream = response.GetResponseStream();

				byte[] data = new byte[4096];
				int read;
				while ((read = stream.Read(data, 0, data.Length)) > 0)
				{
					Process(data, read);
				}

			}
			catch (System.Exception sexc)
			{

			}
			finally
			{
				if (response != null)
				{
					response.Close();
					response = null;
					request = null;
				}
			}

			using (TextWriter writer = File.CreateText("sitemap.xml"))
			{
				writer.WriteLine(sitemap_xml_content);
			}

			return;
		}

		static string sitemap_xml_content = "";
		private static void Process(byte[] data, int read)
		{
			string sitemap_xml_content_chunk = UTF8Encoding.UTF8.GetString(data);
			StringBuilder sb = new StringBuilder(sitemap_xml_content);
			sb.Append(sitemap_xml_content_chunk);
			sitemap_xml_content = sb.ToString();

			Debug.WriteLine(sitemap_xml_content);
		}

	}
}