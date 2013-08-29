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
	/// </summary>
	public partial class AuthentiicationHandler
	{

		public void Dispose()
		{
		}

		public void Init(HttpApplication application)
		{
			application.AuthenticateRequest += new
				EventHandler(this.OnAuthenticateRequest2);
			application.EndRequest += new
				EventHandler(this.OnEndRequest);
		}

		public void OnAuthenticateRequest2
			(
			  object source
			, EventArgs eventArgs
			)
		{
			HttpApplication app = (HttpApplication)source;

			string authHeader = app.Request.Headers["Authorization"];
			if (!string.IsNullOrEmpty(authHeader))
			{
				string authStr = app.Request.Headers["Authorization"];

				if (authStr == null || authStr.Length == 0)
				{
					return;
				}

				authStr = authStr.Trim();
				if (authStr.IndexOf("Basic", 0) != 0)
				{
					return;
				}

				authStr = authStr.Trim();

				string encodedCredentials = authStr.Substring(6);

				byte[] decodedBytes =
				Convert.FromBase64String(encodedCredentials);
				string s = new ASCIIEncoding().GetString(decodedBytes);

				string[] userPass = s.Split(new char[] { ':' });
				string username = userPass[0];
				string password = userPass[1];

				if ( ! Validate(username, password))
				{
					DenyAccess(app);
					return;
				}
			}
			else
			{
				app.Response.StatusCode = 401;
				app.Response.End();
			}
		}
		public void OnEndRequest(object source, EventArgs eventArgs)
		{
			if (HttpContext.Current.Response.StatusCode == 401)
			{
				HttpContext context = HttpContext.Current;
				context.Response.StatusCode = 401;
				context.Response.AddHeader("WWW-Authenticate", "Basic Realm");
			}
		}

		private void DenyAccess(HttpApplication app)
		{
			app.Response.StatusCode = 401;
			app.Response.StatusDescription = "Access Denied";
			app.Response.Write("401 Access Denied");
			app.CompleteRequest();
		}
	}
}