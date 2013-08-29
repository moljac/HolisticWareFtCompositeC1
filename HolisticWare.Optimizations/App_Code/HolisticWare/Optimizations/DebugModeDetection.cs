using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using System.Web;
using System.Reflection;
using System.Diagnostics;
using System.Configuration;

namespace HolisticWare.Optimizations
{
	/// <summary>
	/// Implementation of Debug mode detection for ASP.net applications.
	/// 
	/// HolisticWare team uses this class for detecting Debug mode in Composite C1
	/// Composite C1 Console +/ Functions +/ C3 Functions +/ Add external function 
	/// for type paste:
	///			HolisticWare.Optimizations.Configuration.DebugModeDetection
	///	then select methods to use.
	///	
	/// Note: 
	///  +	Composite C1 XSLT function that uses all methods for detecting
	///		HolisticWare.Optimizations.DebugModeDetection.xslt
	///	 +	DebugMacroDefined - most accurate (in Release mode in Visual Studio other
	///		methods return true, meaning it is Debug mode)
	///	 +	when using in WebApplications after copying to App_Code folder set 
	///		Build Action = None. Otherwise Compilation erros will occur
	///		
	/// <see cref="holisticware webapps vs websites"/>
	/// <see cref="http://docs.composite.net/ASP-NET/CSharpFunctions/Creating-External-C-Functions"/>
	/// <see cref="http://docs.composite.net/ASP-NET/CSharpFunctions/Using-C-Functions"/>
	/// <see cref="http://docs.composite.net/XSLT/XSLTFAQ?q=How+to+run+CSharp+function+in+XSLT%3F"/>
	/// </summary>
	public class DebugModeDetection
	{
		public static readonly bool HttpContextDebuggingEnabled;
		public static readonly bool AssemblyExecutingDebuggableAttributeApplied;
		public static readonly bool DebuggerAttached;
		public static readonly string WebConfigDebug;
		public static readonly bool DebugMacroDefined;

		static DebugModeDetection()
		{
			//=====================================================================================
			// property basically encapsulates the web.config setting
			// It doesn't actually take the page-level debug directive into account. 
			HttpContextDebuggingEnabled 
					= HttpContext.Current.IsDebuggingEnabled;
			Debug.WriteLine
				(
				  "HttpContextDebuggingEnabled = {0}"
				, HttpContextDebuggingEnabled.ToString()
				);
			//=====================================================================================


			//=====================================================================================
			// take page-level debug directive into account: check if the DebuggableAttribute is 
			// applied on the current assembly
			AssemblyExecutingDebuggableAttributeApplied
					= Assembly.GetExecutingAssembly().IsDefined(typeof(DebuggableAttribute), false);
			Debug.WriteLine
				(
				  "AssemblyExecutingDebuggableAttributeApplied = {0}"
				, AssemblyExecutingDebuggableAttributeApplied.ToString()
				);
			//=====================================================================================

			//=====================================================================================
			DebuggerAttached = Debugger.IsAttached;
			Debug.WriteLine
				(
				  "DebuggerAttached = {0}"
				, DebuggerAttached.ToString()
				);
			//=====================================================================================

			//=====================================================================================
			WebConfigDebug =
				ConfigurationSettings.GetConfig("system.web/compilation").ToString();
			Debug.WriteLine
				(
				  "WebConfigDebug = {0}"
				, WebConfigDebug.ToString()
				);
			//=====================================================================================

			//=====================================================================================
			#if DEBUG
			DebugMacroDefined = true;
			Debug.WriteLine
				(
				  "DebugMacroDefined = {0}"
				, DebugMacroDefined.ToString()
				);
			#endif
			//=====================================================================================

			return;
		}

		/// <summary>
		/// Use this one if working from Visual Studio - differs Debug and Release
		/// </summary>
		/// <returns></returns>
		public static bool IsHttpContextDebuggingEnabled()
		{
			return HttpContextDebuggingEnabled;
		}

		public static bool IsAssemblyExecutingDebuggableAttributeApplied()
		{
			return AssemblyExecutingDebuggableAttributeApplied;
		}

		public static bool IsDebuggerAttached()
		{
			return DebuggerAttached;
		}

		public static bool IsDebugMacroDefined()
		{
			return DebugMacroDefined;
		}

	}
}
