﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
///  OData/WS server-side authentication
///		validate a user 
///			Composite.C1Console.Security.UserValidationFacade.FormValidateUser(username, password);
///			
///			This call will set a cookie on the current request and the 
///		validate a cookie 
///		
///			Composite.C1Console.Security.UserValidationFacade.IsLoggedIn()
///			
///		get the username for a user that have been validated earlier use
///		
///			Composite.C1Console.Security.UserValidationFacade.GetUsername()
///			
/// OData/SOAP client behavior:
/// 
///		1. Given user name and password call a service which call FormValidateUser
///		2. On the client, if this call returns true, keep authentication cookie and 
///			send it along all further requests		
///		3. On server, for data functions use IsLoggedIn to verify you have an 
///			authenticated user
///
///		To match read/write addess to a specific data element (as defined in the tree) 
///		let me know – I can’t remember the specific calls in my head, but it is possible 
///		to check if a given user has edit access to a data item etc.
/// </summary>

/// <summary>
/// Summary description for WebServiceNews
/// </summary>
/// 

namespace HolisticWare.Communication.RemoteAPI.WebServicesSOAP
{
	[WebService(Namespace = "http://news.compositec1.holisticware.net/")]
	[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
	// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
	// [System.Web.Script.Services.ScriptService]
	public partial class WebServiceNews : System.Web.Services.WebService
	{

		public WebServiceNews()
		{
			//Uncomment the following line if using designed components 
			//InitializeComponent(); 
		}

		[WebMethod]
		public string HelloWorld()
		{
			/*
			string [] astrRoles = {"Whatever"};
			GenericIdentity i = new GenericIdentity("Whoever");
			Context.User = new GenericPrincipal(i, astrRoles);
			 */
			string hw = "Hello World";

			hw = hw
				+ Environment.NewLine +
				"User name: " + Context.User.Identity.Name
				+ Environment.NewLine +
				" Authenticated: " + Context.User.Identity.IsAuthenticated.ToString()
				+ Environment.NewLine +
				"In \"Whatever\" role: " + Context.User.IsInRole("Whatever").ToString()
				;
			return hw;
		}

		// Tokens for security
		// avoid passing username/password all the time
		// remove tokens after timeout!
		// Tokens are put into Session object in Login.aspx page
		// Session["NewsWebServiceSecurityToken"] = guid;
		// 
		// Removing tokens after Logout or Sesion end in Seesion_End
		// Session_End event is raised only if sessionstate mode is InProc in Web.Config
		// if the sessionstate is StateServer or SQLServer this event is not called.
		//  this.Session.Add("NewsWebServiceSecurityToken", guid);
		// remove
		//      this.Session.Add("NewsWebServiceSecurityToken", guid);

		List<Guid> TokenStore = new List<Guid>();

		[WebMethod]
		public
			Guid
			Login
			(
			  string username
			, string password
			)
		{
			//Composite.HolisticWare.RemoteAPI.Authentification authentication;
			//authentication = new Composite.HolisticWare.RemoteAPI.Authentification();
			//authentification.HttpContext = this.Context;
			Guid guid = new Guid();

			this.Session.Add("NewsWebServiceSecurityToken", guid);
			//this.Session["NewsWebServiceSecurityToken"] = guid;

			this.Session.Remove("NewsWebServiceSecurityToken");
			//this.Session["NewsWebServiceSecurityToken"] = "";
			//this.Session["NewsWebServiceSecurityToken"] = null;

			// Store Tokens: Session, some object, database, file
			TokenStore.Add(guid);


			return
				//authentification.Login(username, password)
				 guid;
		}

		[WebMethod]
		public string Calculate(string username, string password)
		{
			bool valid = Authentication.ValidateUserFrameworkStandard(username, password);
			string msg = valid.ToString();

			return msg;
		}



		[WebMethod]
		public string CalculateAuthenticated(string token)
		{
			string session_token = this.Session["NewsServiceSecurityToken"] as string;
			if (
				  token == ""
				  ||
				  null == token
				)
			{
				// log, do custom logic!
				return "Denied only auth users!";
			}
			else
			{
				Guid token_sent = new Guid(token);
				Guid token_found =
						(
							from t in TokenStore
							where t == token_sent
							select t
						).FirstOrDefault<Guid>();  // checking uniqeness

				return "hi authenticated!";
			}

			return "Something is wrong!";
		}
	}

}
