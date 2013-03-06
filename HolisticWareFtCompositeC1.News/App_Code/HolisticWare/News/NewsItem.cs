using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HolisticWareFtCompositeC1.News
{
	public partial class NewsItem
	{
		//-------------------------------------------------------------------------
		# region Property DateTime Date w Event post (DateChanged)
		/// <summary>
		/// Date
		/// </summary>
		public
		  DateTime
		  Date
		{
			get
			{
				return date;
			} // Date.get
			set
			{
				//if (date != value)		// do not write if equivalent/equal/same
				{
					// for multi threading apps uncomment lines beginnig with //MT:
					//MT: lock(date) // MultiThread safe				
					{
						date = value;
						if (null != DateChanged)
						{
							DateChanged(this, new EventArgs());
						}
					}
				}
			} // Date.set
		} // Date

		/// <summary>
		/// private member field for holding Date data
		/// </summary>
		private
			DateTime
			date
			;

		///<summary>
		/// Event for wiring BusinessLogic object changes and presentation
		/// layer notifications.
		/// DateChanged (<propertyname>Changed) is intercepted by Windows Forms
		/// 1.x and 2.0 event dispatcher 
		/// and for some CLR types by WPF event dispatcher 
		/// usually INotifyPropertyChanged and PropertyChanged event
		///</summary>
		public
			event
			EventHandler
			DateChanged
			;
		# endregion Property DateTime Date w Event post (DateChanged)
		//-------------------------------------------------------------------------

		//-------------------------------------------------------------------------
		# region Property string Title w Event post (TitleChanged)
		/// <summary>
		/// Title
		/// </summary>
		public
		  string
		  Title
		{
			get
			{
				return title;
			} // Title.get
			set
			{
				//if (title != value)		// do not write if equivalent/equal/same
				{
					// for multi threading apps uncomment lines beginnig with //MT:
					//MT: lock(title) // MultiThread safe				
					{
						title = value;
						if (null != TitleChanged)
						{
							TitleChanged(this, new EventArgs());
						}
					}
				}
			} // Title.set
		} // Title

		/// <summary>
		/// private member field for holding Title data
		/// </summary>
		private
			string
			title
			;

		///<summary>
		/// Event for wiring BusinessLogic object changes and presentation
		/// layer notifications.
		/// TitleChanged (<propertyname>Changed) is intercepted by Windows Forms
		/// 1.x and 2.0 event dispatcher 
		/// and for some CLR types by WPF event dispatcher 
		/// usually INotifyPropertyChanged and PropertyChanged event
		///</summary>
		public
			event
			EventHandler
			TitleChanged
			;
		# endregion Property string Title w Event post (TitleChanged)
		//-------------------------------------------------------------------------	
	
		//-------------------------------------------------------------------------
		# region Property string Description w Event post (DescriptionChanged)
		/// <summary>
		/// Description
		/// </summary>
		public
		  string
		  Description
		{
			get
			{
				return description;
			} // Description.get
			set
			{
				//if (description != value)		// do not write if equivalent/equal/same
				{
					// for multi threading apps uncomment lines beginnig with //MT:
					//MT: lock(description) // MultiThread safe				
					{
						description = value;
						if (null != DescriptionChanged)
						{
							DescriptionChanged(this, new EventArgs());
						}
					}
				}
			} // Description.set
		} // Description

		/// <summary>
		/// private member field for holding Description data
		/// </summary>
		private
			string
			description
			;

		///<summary>
		/// Event for wiring BusinessLogic object changes and presentation
		/// layer notifications.
		/// DescriptionChanged (<propertyname>Changed) is intercepted by Windows Forms
		/// 1.x and 2.0 event dispatcher 
		/// and for some CLR types by WPF event dispatcher 
		/// usually INotifyPropertyChanged and PropertyChanged event
		///</summary>
		public
			event
			EventHandler
			DescriptionChanged
			;
		# endregion Property string Description w Event post (DescriptionChanged)
		//-------------------------------------------------------------------------

		//-------------------------------------------------------------------------
		# region Property string Teaser w Event post (TeaserChanged)
		/// <summary>
		/// Teaser
		/// </summary>
		public
		  string
		  Teaser
		{
			get
			{
				return teaser;
			} // Teaser.get
			set
			{
				//if (teaser != value)		// do not write if equivalent/equal/same
				{
					// for multi threading apps uncomment lines beginnig with //MT:
					//MT: lock(teaser) // MultiThread safe				
					{
						teaser = value;
						if (null != TeaserChanged)
						{
							TeaserChanged(this, new EventArgs());
						}
					}
				}
			} // Teaser.set
		} // Teaser

		/// <summary>
		/// private member field for holding Teaser data
		/// </summary>
		private
			string
			teaser
			;

		///<summary>
		/// Event for wiring BusinessLogic object changes and presentation
		/// layer notifications.
		/// TeaserChanged (<propertyname>Changed) is intercepted by Windows Forms
		/// 1.x and 2.0 event dispatcher 
		/// and for some CLR types by WPF event dispatcher 
		/// usually INotifyPropertyChanged and PropertyChanged event
		///</summary>
		public
			event
			EventHandler
			TeaserChanged
			;
		# endregion Property string Teaser w Event post (TeaserChanged)
		//-------------------------------------------------------------------------

		//-------------------------------------------------------------------------
		# region Property string TitleUrl w Event post (TitleUrlChanged)
		/// <summary>
		/// TitleUrl
		/// </summary>
		public
		  string
		  TitleUrl
		{
			get
			{
				return title_url;
			} // TitleUrl.get
			set
			{
				//if (title_url != value)		// do not write if equivalent/equal/same
				{
					// for multi threading apps uncomment lines beginnig with //MT:
					//MT: lock(title_url) // MultiThread safe				
					{
						title_url = value;
						if (null != TitleUrlChanged)
						{
							TitleUrlChanged(this, new EventArgs());
						}
					}
				}
			} // TitleUrl.set
		} // TitleUrl

		/// <summary>
		/// private member field for holding TitleUrl data
		/// </summary>
		private
			string
			title_url
			;

		///<summary>
		/// Event for wiring BusinessLogic object changes and presentation
		/// layer notifications.
		/// TitleUrlChanged (<propertyname>Changed) is intercepted by Windows Forms
		/// 1.x and 2.0 event dispatcher 
		/// and for some CLR types by WPF event dispatcher 
		/// usually INotifyPropertyChanged and PropertyChanged event
		///</summary>
		public
			event
			EventHandler
			TitleUrlChanged
			;
		# endregion Property string TitleUrl w Event post (TitleUrlChanged)
		//-------------------------------------------------------------------------

	}
}