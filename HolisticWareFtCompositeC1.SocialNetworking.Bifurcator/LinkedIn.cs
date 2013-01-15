using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


//using LinkedIn;
//using LinkedIn.ServiceEntities;
using System.Web.SessionState;

namespace HolisticWareFtCompositeC1.SocialNetworking.Bifurcator
{
	public partial class LinkedIn
	{
		public LinkedIn()
		{
			this.Authorization = 
				null
				//new WebOAuthAuthorization(this.TokenManager, this.AccessToken)
				;

			//if (!IsPostBack)
			{
				string accessToken = this.Authorization.CompleteAuthorize();
				if (accessToken != null)
				{
					this.AccessToken = accessToken;

					//Response.Redirect(Request.Path);
				}

				if (AccessToken == null)
				{
					this.Authorization.BeginAuthorize();
				}
			}
		}

		HttpSessionState Session;

		private string AccessToken
		{
			get { return (string)Session["AccessToken"]; }
			set { Session["AccessToken"] = value; }
		}

		protected WebOAuthAuthorization Authorization
		{
			get;
			private set;
		}

		private InMemoryTokenManager TokenManager
		{
			get
			{
				var tokenManager = (InMemoryTokenManager)Application["TokenManager"];
				if (tokenManager == null)
				{
					// string consumerKey = ConfigurationManager.AppSettings["LinkedInConsumerKey"];
					// string consumerSecret = ConfigurationManager.AppSettings["LinkedInConsumerSecret"];
					if (string.IsNullOrEmpty(consumerKey) == false)
					{
						tokenManager = new InMemoryTokenManager(consumerKey, consumerSecret);
						//Application["TokenManager"] = tokenManager;
					}
				}

				return tokenManager;
			}
		}

		private void ShowCurrentStatus()
		{
			LinkedInService service = new LinkedInService(this.Authorization);

			List<ProfileField> fields = new List<ProfileField>();
			fields.Add(ProfileField.PersonId);
			fields.Add(ProfileField.FirstName);
			fields.Add(ProfileField.LastName);
			fields.Add(ProfileField.Headline);
			fields.Add(ProfileField.CurrentStatus);
			fields.Add(ProfileField.PositionId);
			fields.Add(ProfileField.PositionTitle);
			fields.Add(ProfileField.PositionSummary);
			fields.Add(ProfileField.PositionStartDate);
			fields.Add(ProfileField.PositionEndDate);
			fields.Add(ProfileField.PositionIsCurrent);
			fields.Add(ProfileField.PositionCompanyName);
			fields.Add(ProfileField.PictureUrl);

			Person currentUser = service.GetCurrentUser(ProfileType.Standard, fields);

			return;
		}
	}
}
