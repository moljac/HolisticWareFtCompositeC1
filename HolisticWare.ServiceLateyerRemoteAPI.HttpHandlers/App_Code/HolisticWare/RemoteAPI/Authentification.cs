using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Collections.Specialized;

namespace Composite.HolisticWare.RemoteAPI
{
	public 
		partial
		class 
		Authentification
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
	}
}