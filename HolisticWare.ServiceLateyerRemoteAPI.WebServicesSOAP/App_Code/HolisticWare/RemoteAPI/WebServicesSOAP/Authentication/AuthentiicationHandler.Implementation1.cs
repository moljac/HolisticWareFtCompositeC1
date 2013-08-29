using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



using System.Text;

namespace Composite.App_Code.HolisticWare.WebServicesSOAP
{
	/// <summary>
	/// http://stackoverflow.com/questions/10861568/asmx-web-service-basic-authentication
	/// http://stackoverflow.com/questions/1092404/asmx-web-service-client-authentication
	/// http://stackoverflow.com/questions/10718003/setting-http-basic-authentication-for-asmx-web-service-call
	/// http://stackoverflow.com/questions/1400198/is-there-a-way-to-restrict-access-to-an-asmx-webservice-i-e-the-asmx-page-and
	/// http://www.codeguru.com/csharp/csharp/cs_webservices/security/article.php/c5479/Build-Secure-Web-Services-With-SOAP-Headers-and-Extensions.htm
	/// 
	/// </summary>
	public partial class AuthentiicationHandler
	{
		void IHttpModule.Init(HttpApplication context)
		{
			context.AuthenticateRequest += new EventHandler(OnAuthenticateRequest);
		}

		void OnAuthenticateRequest(object sender, EventArgs e)
		{
			string header = HttpContext.Current.Request.Headers["Authorization"];

			if (header != null && header.StartsWith("Basic"))  //if has header
			{
				string encodedUserPass = header.Substring(6).Trim();  //remove the "Basic"
				Encoding encoding = Encoding.GetEncoding("iso-8859-1");
				string userPass = encoding.GetString(Convert.FromBase64String(encodedUserPass));
				string[] credentials = userPass.Split(':');
				string username = credentials[0];
				string password = credentials[1];

				if (! Validate(username, password))
				{
					HttpContext.Current.Response.StatusCode = 401;
					HttpContext.Current.Response.End();
				}
			}
			else
			{
				//send request header for the 1st round
				HttpContext context = HttpContext.Current;
				context.Response.StatusCode = 401;
				context.Response.AddHeader("WWW-Authenticate", String.Format("Basic realm=\"{0}\"", string.Empty));
			}
		}

		private bool Validate(string username, string password)
		{
			throw new NotImplementedException();
		}

		void IHttpModule.Dispose()
		{
		}
	}
}