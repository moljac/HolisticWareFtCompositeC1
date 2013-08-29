using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using System.Web;
using Composite.Core;
using Composite.Data;

namespace HolisticWare.Layout.Content
{
	public partial class DistributedNavigationRelativeRoot
	{
		public string CompositeUrlBuilder()
		{
			HttpContext context = System.Web.HttpContext.Current;
			UrlBuilder urlBuilder = new UrlBuilder(context.Request.RawUrl);
			urlBuilder.ServerUrl = new UrlBuilder(context.Request.Url.ToString()).ServerUrl;

			return urlBuilder.ToString();
		}

		// url that was used to access the page
		// internal url, that is a result of url-rewriting, something like /Renderers/Page.aspx?id={pageId}
		public string PageRequestAccessUrl()
		{
			return System.Web.HttpContext.Current.Request.Url.ToString();
		}

		// Composite's url to the page being rendered 
		// page url, but without query string and PathInfo, this could work, but if there's some kind of 
		// url routing, it's not a fact that it will work.
		public string CompositeRenderedUrl()
		{
			string retval = string.Empty;

			using (DataConnection dc = new DataConnection())
			{
				Composite.Data.SitemapNavigator smn = new Composite.Data.SitemapNavigator(dc);
				retval = smn.CurrentPageNode.Url;
			}

			return retval;
		}

		public int DistributedNavigationRootDepth()
		{
			int retval = -1;

			string path = CompositeRenderedUrl();
			string[] parts = path.Split(new string[] {"/"},	StringSplitOptions.None);
			retval = parts.Length;

			return retval;
		}

	}
}