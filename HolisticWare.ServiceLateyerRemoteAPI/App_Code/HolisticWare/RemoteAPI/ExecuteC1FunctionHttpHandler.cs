using System;
using System.Collections;
using System.Globalization;
using System.IO;
using System.Web;
using System.Xml.Linq;

using Composite.Core;
using Composite.Data;
using Composite.Functions;

namespace HolisticWare.RemoteAPI
{
	/// <summary>
	/// Executes a C1 Function. 
	/// The name of the function is copied from the name of this .ashx file,
	/// i.e. 
	///		file named 
	///			"Composite.Pages.QuickSitemap.ashx" 
	///		calls function
	///			"Composite.Pages.QuickSitemap"
	/// Parameters specified in the URL will be passed on to the function.
	/// 
	/// Control the data culture through the URL parameter "cultureScope"
	///		like "cultureScope=en-US".
	/// 
	/// Usage of the class 
	///		create a .ashx file 
	///			which inherit from this class (ExecuteC1FunctionHttpHandler) and 
	///			name it (full function name).ashx
	/// </summary>
	public abstract partial class ExecuteC1FunctionHttpHandler : IHttpHandler
	{
		public void ProcessRequest(HttpContext context)
		{
			// Get the name of the function to execute by copying the current file name 
			// (without the .ashx extension)
			string functionName = Path.GetFileNameWithoutExtension(context.Request.Path);
			// Locate the data culture to use - like en-US or nl-NL
			CultureInfo dataCulture = GetCurrentDataCulture(context);

			using (DataScope dataScope = new DataScope(DataScopeIdentifier.Public, dataCulture))
			{
				// Grab a function object to execute
				IFunction function = FunctionFacade.GetFunction(functionName);

				// Execute the function, passing all query string parameters as input parameters
				object functionResult = FunctionFacade.Execute<object>(function, context.Request.QueryString);

				// output result
				if (functionResult != null)
				{
					context.Response.Write(functionResult.ToString());
					if (functionResult is XNode && function.ReturnType != typeof(Composite.Core.Xml.XhtmlDocument))
						context.Response.ContentType = "text/xml";
				}
			}
		}


		public bool IsReusable
		{
			get
			{
				return true;
			}
		}


		/// <summary>
		/// Locates the data scope culture that the function should be scoped to.
		/// I.e. the 'language' of the data to work on. 
		/// The Query String variable 'cultureScope' will be used, or the systems 
		/// default culure is this parameter is not specified.
		/// </summary>
		private CultureInfo GetCurrentDataCulture(HttpContext context)
		{
			string cultureScope = context.Request.QueryString["cultureScope"];
			if (string.IsNullOrEmpty(cultureScope) == false)
			{
				return new CultureInfo(cultureScope);
			}

			return DataLocalizationFacade.DefaultLocalizationCulture;
		}
	}
}