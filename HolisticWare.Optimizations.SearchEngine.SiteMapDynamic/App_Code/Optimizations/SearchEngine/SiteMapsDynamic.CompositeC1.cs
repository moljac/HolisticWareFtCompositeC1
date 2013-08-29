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

namespace HolisticWare.Optimizations.SearchEngine
{
	/// <summary>
	/// <see cref="http://api.composite.net/"/>
	/// <see cref="http://api.composite.net/html/T_Composite_Data_SitemapNavigator.htm"/>
	/// <see cref="http://msdn.microsoft.com/en-us/library/e468hxky(v=vs.100).aspx"/>
	/// <see cref="http://c1packages.codeplex.com/SourceControl/changeset/view/8053#129098"/>
	/// </summary>
	[ApplicationStartup]
	public partial class SiteMapGenerator
	{
		public static void OnBeforeInitialize()
		{
			//RegisterEvents();

			return;
		}

		public static void OnInitialized()
		{
			RegisterEvents();

			return;
		}

	}
}
