using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Composite.Core.Application;
using Composite.Data;

namespace HolisticWareFtCompositeC1.News
{

	public partial class News
	{
		private static void CheckType(DataEventArgs dataEventArgs, Type type_of_object_changed)
		{
			if (type_of_object_changed == typeof(IPageData))
			{
				string msg = "";
			}
			if (type_of_object_changed == typeof(Composite.News.NewsItem))
			{
				string msg = "";

				Composite.News.NewsItem ni = dataEventArgs.Data as Composite.News.NewsItem;

				//ReplaceCharactersInUrl(ni);
			}

			if (type_of_object_changed.GetType() == typeof(IPageData))
			{
				string msg = "";
			}
			if (type_of_object_changed.GetType() == typeof(Composite.News.NewsItem))
			{
				string msg = "";
			}

			if (type_of_object_changed is IPageData)
			{
				string msg = "";
			}
			if (type_of_object_changed is Composite.News.NewsItem)
			{
				string msg = "";
			}
		}

		private static void ReplaceCharactersInUrl(Composite.News.NewsItem ni)
		{
			string title = ni.Title;
			string teaser = ni.Teaser;
			string desscription = ni.Description;
			string titleurl = ni.TitleUrl;

			titleurl = titleurl.Replace("Ć", "C");
			titleurl = titleurl.Replace("Č", "C");
			titleurl = titleurl.Replace("Đ", "D");
			titleurl = titleurl.Replace("Š", "S");
			titleurl = titleurl.Replace("Ž", "Z");
			titleurl = titleurl.Replace("ć", "c");
			titleurl = titleurl.Replace("č", "c");
			titleurl = titleurl.Replace("đ", "d");
			titleurl = titleurl.Replace("š", "s");
			titleurl = titleurl.Replace("ž", "z");

			ni.TitleUrl = titleurl;
		}
	}
}