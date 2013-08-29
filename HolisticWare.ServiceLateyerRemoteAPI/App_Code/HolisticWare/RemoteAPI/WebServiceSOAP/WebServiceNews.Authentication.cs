using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace HolisticWareFtCompositeC1.RemoteAPI.WebServicesSOAP
{
	public partial class WebServiceNews
	{
		private static string Authentication(string username, string password)
		{
			# region    standard .net user validation
			//-------------------------------------------------------------------------
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
			//-------------------------------------------------------------------------
			# endregion standard .net user validation

			# region    Composite C1 user validation
			//-------------------------------------------------------------------------
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
			//-------------------------------------------------------------------------
			# endregion Composite C1 user validation


			# region    Username extraction
			//-------------------------------------------------------------------------
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
			//-------------------------------------------------------------------------
			# endregion Username extraction


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
				//System.Web.Security.Membership.ValidateUser(username, password)
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
	}
}