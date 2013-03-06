using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;



using Composite.Data;

namespace HolisticWareFtCompositeC1.Communication.RemoteAPI.SOAPWebServices
{
	/// <summary>
	/// Summary description for News
	/// </summary>
	[WebService(Namespace = "http://news.compositec1.holisticware.net/")]
	[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
	[System.ComponentModel.ToolboxItem(false)]
	// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
	// [System.Web.Script.Services.ScriptService]
	public partial class News : System.Web.Services.WebService
	{

		[WebMethod]
		public string Status()
		{
			return DateTime.Now.ToString();
		}

		[WebMethod(Description = "Select News from Composite C1 CMS system")]
		public
			List<HolisticWareFtCompositeC1.News.NewsItem> Select()
		{
			return News.SelectNews();
		}

		# region    Publish
		//-------------------------------------------------------------------------
		//[System.Web.Services.Protocols.SoapHeader("Credentials", Required = true)]
		[WebMethod(Description = "Publish/Push/Insert News item into Composite C1 CMS system")]
		public
			string
			Push
			(
			  string datetime
			, string title
			, string article
			)
		{
			string msg =
				//"OK"
				"Date=" + datetime
				+ Environment.NewLine +
				"Title=" + title
				+ Environment.NewLine +
				"Article=" + article
				;

			//context.Response.Write(functionResult.ToString());

			InsertPage(title);

			return msg;
		}



		public static List<HolisticWareFtCompositeC1.News.NewsItem> SelectNews()
		{
			// reference Composite.Generated.dll 
			// for
			// global::Composite.News.NewsItem
			IQueryable<Composite.News.NewsItem> news_collection = null;
			IQueryable<string> titles = null;

			using (DataConnection connection = new DataConnection())
			{
				news_collection = from news in connection.Get<Composite.News.NewsItem>()
								  select news;
				titles = from news in news_collection
							 select news.Title
							 ;
			}

			List<HolisticWareFtCompositeC1.News.NewsItem> list = null;
			list = new List<HolisticWareFtCompositeC1.News.NewsItem>();

			foreach (Composite.News.NewsItem ni_c1 in news_collection)
			{
				HolisticWareFtCompositeC1.News.NewsItem ni_hwc1;
				ni_hwc1 = new HolisticWareFtCompositeC1.News.NewsItem()
				{
				  Date = ni_c1.Date
				, Title = ni_c1.Title
				, Teaser = ni_c1.Teaser
				, Description = ni_c1.Description
				, TitleUrl = ni_c1.TitleUrl
				};

				list.Add(ni_hwc1);
			}
			return list;
		}

		private static void InsertPage(string title)
		{
			using
				(
				  Composite.Data.DataConnection connection = new Composite.Data.DataConnection()
				)
			{
				////// *** PAGE *** //////

				// PageType Id find
				Guid pageTypeId;
				pageTypeId = connection.Get<Composite.Data.Types.IPageType>().First().Id;
				// Template Page ID find
				//Guid templateId;
				//templateId = connection.Get<IPageTemplate>().First().Id;

				// // make new website
				Guid parentId = Guid.Empty;

				// Culture = Danish
				System.Globalization.CultureInfo pageCulture;
				pageCulture = new System.Globalization.CultureInfo("en-US");
				// test markup
				string pageContentXhtml = "<h1>This is content</h1><p>Hello world!</p>";

				Composite.Data.Types.IPage page;
				page = Composite.Data.DataConnection.New<Composite.Data.Types.IPage>();

				page.Id = Guid.NewGuid();
				page.PageTypeId = Guid.NewGuid();
				page.TemplateId = Guid.NewGuid();
				page.Title = title;
				page.CultureName = pageCulture.Name;
				page.UrlTitle = "Title";
				page.MenuTitle = "Menu";
				page.Description = "Description";
				//page = page.AddPageAtBottom(parentId);

				////// *** PLACEHOLDER *** //////

				Composite.Data.Types.IPagePlaceholderContent placeholder_content;
				placeholder_content = Composite.Data.DataConnection
					.New<Composite.Data.Types.IPagePlaceholderContent>();

				placeholder_content.Content = pageContentXhtml;
				placeholder_content.PlaceHolderId = "contentplaceholder";
				placeholder_content.PageId = page.Id;

				using
					(
					  Composite.Data.DataScope dataScope =
						  new Composite.Data.DataScope
							  (
								Composite.Data.DataScopeIdentifier.Administrated
							  )
					)
				{
					page = connection.Add<Composite.Data.Types.IPage>(page);
					placeholder_content =
						connection.Add<Composite.Data.Types.IPagePlaceholderContent>
								(
								  placeholder_content
								);

					page.PublicationStatus = "published";
					placeholder_content.PublicationStatus = "published";

					connection.Update<Composite.Data.Types.IPage>(page);
					connection.Update<Composite.Data.Types.IPagePlaceholderContent>(placeholder_content);
				}

			}
		}
		//-------------------------------------------------------------------------
		# endregion Publish

	}
}
