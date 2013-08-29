using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Collections.Specialized;

namespace HolisticWare.Communication.RemoteAPI
{
	public 
		partial
		class 
		Authentication
	{

		//---------------------------------------------------------------------------
		# region  Property.HttpContext
		/// <summary>
		/// HttpContext
		/// </summary>
		public
		  HttpContext
		  HttpContext
		{
			get
			{
				return http_context;
			} // HttpContext.get
			set
			{
				// for multi threading apps uncomment lines beginnig with //MT:
				//MT: object locker =  new object();          
				if (value != http_context)
				{
					// raise/trigger Event if somebody has subscribed to the event
					if (null != HttpContextChanging)
					{
						// raise/trigger Event
						HttpContextChanging(this, new EventArgs());
					}

					//MT: lock(http_context)
					{
						// Set the property value
						http_context = value;
						// raise/trigger Event if somebody has subscribed to the event
						if (null != HttpContextChanged)
						{
							// raise/trigger Event
							HttpContextChanged(this, new EventArgs());
						}
					}

					// raise/trigger Event if somebody has subscribed to the event
					if (null != HttpContextChangePerformed)
					{
						// raise/trigger Event
						HttpContextChangePerformed(this, new EventArgs());
					}
				}
				//MT: locker = null;

				return;
			} // HttpContext.set
		} // HttpContext

		/// <summary>
		/// private member field for holding HttpContext data
		/// </summary>
		private
			HttpContext
			http_context
			;

		///<summary>
		/// Event for wiring BusinessLogic object changes and presentation
		/// layer notifications.
		/// HttpContextChanged (<propertyname>Changed) is intercepted by Windows Forms
		/// 1.x and 2.0 event dispatcher 
		/// and for some CLR types by WPF event dispatcher 
		/// usually INotifyPropertyChanged and PropertyChanged event
		///</summary>
		public
			event
			EventHandler
			HttpContextChanged
			;

		///<summary>
		/// Event for wiring BusinessLogic object changes and presentation
		/// layer notifications.
		/// Use this event to catch start of the property before it changes
		///</summary>
		public
			event
			EventHandler    //Core.Globals.PropertyChangedEventHandler
			HttpContextChanging
			;

		///<summary>
		/// Event for wiring BusinessLogic object changes and presentation
		/// layer notifications.
		/// Use this event to catch end of the property after it changes
		///</summary>
		public
			event
			EventHandler    //Core.Globals.PropertyChangedEventHandler
			HttpContextChangePerformed
			;
		# endregion Property.HttpContext
		//---------------------------------------------------------------------------
		
		public
			Dictionary<string, string>
			Login
			(
			  string username
			, string password
			)
		{
			if (null == this.http_context)
			{
				return null;
			}

			Dictionary<string, string> debug_authentification;
			debug_authentification = new Dictionary<string, string>();

			HttpRequest request = this.HttpContext.Request;
			NameValueCollection NVCSrvElements = request.ServerVariables;

			debug_authentification["Request.IsAuthenticated"] =
					this.HttpContext.Request.IsAuthenticated.ToString();
			debug_authentification["AUTH_TYPE"] =
					this.HttpContext.Request.ServerVariables["AUTH_TYPE"];
			debug_authentification["AUTH_USER"] =
					this.HttpContext.Request.ServerVariables["AUTH_USER"];
			debug_authentification["AUTH_PASSWORD"] =
					 this.HttpContext.Request.ServerVariables["AUTH_PASSWORD"];
			debug_authentification["LOGON_USER"] =
					this.HttpContext.Request.ServerVariables["LOGON_USER"];
			debug_authentification["REMOTE_USER"] =
					this.HttpContext.Request.ServerVariables["REMOTE_USER"];
			debug_authentification["Context.User.Identity.Name"] =
					this.HttpContext.User.Identity.Name;
			debug_authentification["Context.User.Identity.AuthenticationTyp"] =
					this.HttpContext.User.Identity.Name;
			debug_authentification["WindowsIdentity.GetCurrent().Name"] =
					System.Security.Principal.WindowsIdentity.GetCurrent().Name;

			return debug_authentification;
		}


		public static string Authenticate(string username, string password)
		{
			bool user_validated_standard = ValidateUserFrameworkStandard(username, password);

			bool user_validated_composite_c1 = ValidateUserCompositeC1();

			string username_extracted = "N/A";
			username_extracted = username_extracted = UserName();

			// /Composite/services/Login/Login.asmx
			// public bool ValidateAndLogin(string username, string password)
			//    calls:
			//    UserValidationFacade.FormValidateUser(username, password);
			//
			// public bool Logout(bool dummy)
			//    calls:
			//    UserValidationFacade.Logout();
			// 
			if (user_validated_composite_c1)
			{
				//System.Web.Security.Membership.ValidateUserFrameworkStandard(username, password)
				// does not login - just valiates if credentials are ok

				return "hi " + username + "authenticated!";
			}
			else
			{
				// log, do custom logic!
				return "Denied only auth users!";
			}

			return "Something is wrong!";
		}

		public static string UserName()
		{
			string username_extracted = "N/A";

			try
			{
				username_extracted =
					Composite.C1Console.Security.UserValidationFacade.GetUsername();
			}
			catch (System.Exception exc)
			{
				string msg = exc.ToString();
				System.Diagnostics.Debug.WriteLine(msg);
			}
			System.Diagnostics.Debug.WriteLine("username_extracted = {0}", username_extracted);

			return username_extracted;
		}

		public static bool ValidateUserCompositeC1()
		{
			bool user_validated_composite_c1 = false;

			try
			{
				user_validated_composite_c1 =
					Composite.C1Console.Security.UserValidationFacade.IsLoggedIn();
			}
			catch (System.Exception exc)
			{
				string msg = exc.ToString();
				System.Diagnostics.Debug.WriteLine(msg);
			}
			System.Diagnostics.Debug.WriteLine("validate(CompositeC1 = {0}", user_validated_composite_c1);

			return user_validated_composite_c1;
		}

		/// <summary>
		/// Standard .net User Validation
		/// </summary>
		/// <param name="username"></param>
		/// <param name="password"></param>
		/// <returns></returns>
		public static bool ValidateUserFrameworkStandard(string username, string password)
		{
			bool user_validated_std = false;

			try
			{
				user_validated_std =
					System.Web.Security.Membership.ValidateUser(username, password);

			}
			catch (System.Exception exc)
			{
				string msg = exc.ToString();
				System.Diagnostics.Debug.WriteLine(msg);
			}
			System.Diagnostics.Debug.WriteLine("validate(CompositeC1 = {0}", user_validated_std);

			return user_validated_std;
		}
	}
}