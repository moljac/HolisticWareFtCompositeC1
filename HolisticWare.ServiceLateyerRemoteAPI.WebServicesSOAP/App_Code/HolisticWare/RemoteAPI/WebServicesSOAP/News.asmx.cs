using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;



using Composite.Data;
using Composite.Data.Types;

// Composite Remote API
// Handlers
//		http://docs.composite.net/HTML/FrontendFAQ?q=Can+I+call+C1+Functions+AJAX+style+from+JavaScript+or+Flash%3F
// Pages
//		http://docs.composite.net/Data/Adding-pages-with-Csharp
// Blogs
//		http://compositec1.codeplex.com/discussions/278732
//		http://compositec1.codeplex.com/workitem/788
// General data
//		http://docs.composite.net/Data/AccessingDataWithCSharp/How-to-Query-Data-Using-LINQ
//		http://stackoverflow.com/questions/13564468/composite-c1-how-to-retrieve-data-from-datatypes
//		http://pastebin.com/2p3y17si
// OData
//		http://www.odata.org/
//		
//
//
//
//
//		http://stackoverflow.com/questions/11068338/create-a-detailed-user-profile-with-composite-c1

//namespace HolisticWareAPI
namespace HolisticWare.Communication.RemoteAPI.WebServicesSOAP
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

		# region    Publish
		//-------------------------------------------------------------------------
		[WebMethod]
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
				// templateId = connection.Get<Composite.Core.PageTemplates.IPageTemplate>().First().Id;

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

			return msg;
		}
		//-------------------------------------------------------------------------
		# endregion Publish


		public static void CreateNewTemplate(Guid gTemplateGuid, string sTitle)
		{
			using (DataConnection connection = new DataConnection())
			{
				IXmlPageTemplate data = DataConnection.New<IXmlPageTemplate>();
				data.Id = gTemplateGuid;
				data.Title = sTitle;
				data.PageTemplateFilePath = String.Format("/{0}.xml", sTitle);
				connection.Add<IXmlPageTemplate>(data);
			}
		}

	}
}
