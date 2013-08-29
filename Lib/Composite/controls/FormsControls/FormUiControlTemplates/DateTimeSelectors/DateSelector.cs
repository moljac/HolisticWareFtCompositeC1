/*
 * The contents of this web application are subject to the Mozilla Public License Version 
 * 1.1 (the "License"); you may not use this web application except in compliance with 
 * the License. You may obtain a copy of the License at http://www.mozilla.org/MPL/.
 * 
 * Software distributed under the License is distributed on an "AS IS" basis, 
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License 
 * for the specific language governing rights and limitations under the License.
 * 
 * The Original Code is owned by and the Initial Developer of the Original Code is 
 * Composite A/S (Danish business reg.no. 21744409). All Rights Reserved
 * 
 * Section 11 of the License is EXPRESSLY amended to include a provision stating 
 * that any dispute, including but not limited to disputes related to the enforcement 
 * of the License, to which Composite A/S as owner of the Original Code, as Initial 
 * Developer or in any other role, becomes a part to shall be governed by Danish law 
 * and be initiated before the Copenhagen City Court ("K�benhavns Byret")            
 */

using System;
using System.Web;
using System.Web.UI.WebControls;
using Composite.Core.WebClient.UiControlLib;
using Composite.Plugins.Forms.WebChannel.UiControlFactories;
using System.Web.UI;

namespace Composite.controls.FormsControls.FormUiControlTemplates.DateTimeSelectors
{
    public abstract class DateSelectorBase : DateTimeSelectorTemplateUserControlBase
    {
        private string ResetOnClickValue
        {
            get { return this.ViewState["resetOnClickValue"] as string; }
            set { this.ViewState["resetOnClickValue"] = value; }
        }

        public Calendar DateTimeSelector;
        public PlaceHolder CalendarPlaceHolder;
        public PlaceHolder MessagesPlaceHolder;
        public string CurrentStringValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            if (ReadOnly)
            {
                DateTimeSelector.CssClass = "readonly";
            }

            if (this.CurrentStringValue == null)
            {
                this.CurrentStringValue = Request.Form[this.UniqueID];
            }
        }

        private void InsertSelectedDate(DateTime? toShow)
        {
            if (toShow.HasValue && toShow.Value != DateTime.MinValue)
            {
                if (!ShowHours)
                {
                    this.CurrentStringValue = toShow.Value.ToShortDateString();
                }
                else
                {
                    this.CurrentStringValue = string.Format("{0} {1}", toShow.Value.ToShortDateString(), toShow.Value.ToShortTimeString());
                }
            }
            else
            {
                this.CurrentStringValue = "";
            }
        }

        protected override void BindStateToProperties()
        {
            if (this.ReadOnly)
                return;

            try
            {
                if (string.IsNullOrEmpty(this.CurrentStringValue))
                {
                    this.Date = null;
                }
                else
                {
                    this.Date = DateTime.Parse(this.CurrentStringValue);
                    if (!ShowHours)
                        this.Date -= this.Date.Value.TimeOfDay;
                }
                this.IsValid = true;
            }
            catch (Exception)
            {
                this.IsValid = false;
                this.ValidationError = string.Format("Invalid date string: '{0}'. Use the format '{1}'.",
                                                        this.CurrentStringValue, SampleDateString);
            }
        }

        private string SampleDateString
        {
            get 
            { 
                if(ShowHours)
                {
                    return string.Format("{0} {1}", DateTime.Now.ToShortDateString(), DateTime.Now.ToShortTimeString());
                }
                else
                {
                    return DateTime.Now.ToShortDateString();
                } 
            }
        }

        protected override void InitializeViewState()
        {
            SetCalendar(this.Date);
            InsertSelectedDate(this.Date);
        }

        private void SetCalendar(DateTime? date)
        {
            if (date.HasValue == true && date.Value > DateTime.MinValue)
            {
                DateTimeSelector.SelectedDate = date.Value - date.Value.TimeOfDay;
                DateTimeSelector.VisibleDate = DateTimeSelector.SelectedDate;
            }
            else
            {
                DateTimeSelector.SelectedDate = DateTime.MinValue;
                DateTimeSelector.VisibleDate = DateTime.Now;
            }
        }

        public override string GetDataFieldClientName()
        {
            return this.UniqueID;
        }

        public string GetButtonCallbackId()
        {
            return "btnDate" + this.UniqueID;
        }

        public void CalendarYearBackClick(object sender, EventArgs e)
        {
            this.DateTimeSelector.VisibleDate = this.DateTimeSelector.VisibleDate.AddYears(-1);
        }

        public void CalendarYearForwardClick(object sender, EventArgs e)
        {
            this.DateTimeSelector.VisibleDate = this.DateTimeSelector.VisibleDate.AddYears(1);
        }

        public void CalendarSelectionChange(object sender, EventArgs e)
        {
            CalendarPlaceHolder.Visible = false;
            DateTime toShow = DateTimeSelector.SelectedDate;

            if (ShowHours)
            {
                DateTime oldDateTime;
                if (DateTime.TryParse(this.CurrentStringValue, out oldDateTime))
                    toShow += oldDateTime.TimeOfDay;
            }

            InsertSelectedDate(toShow);
            this.MessagesPlaceHolder.Controls.Add(new DocumentDirtyEvent());
        }

        private void MessagesTextbox(string message)
        {
            FieldMessage fm = new FieldMessage(this.UniqueID, message);
            MessagesPlaceHolder.Controls.Add(fm);
        }

        private void Page_Load(object sender, EventArgs args)
        {
            var c = MessagesPlaceHolder.Controls;
            string eventTarget = HttpContext.Current.Request.Form["__EVENTTARGET"];
            if (eventTarget == GetButtonCallbackId())
            {
                bool enteringCalendarMode = !CalendarPlaceHolder.Visible;

                if (enteringCalendarMode)
                {
                    BindStateToProperties();
                    if (!this.IsValid)
                    {
                        bool clickWillReset = this.CurrentStringValue.Equals(this.ResetOnClickValue);
                        this.ResetOnClickValue = this.CurrentStringValue;
                        this.Date = null;
                        if (!clickWillReset)
                        {
                            MessagesTextbox(string.Format(
                                    "This is not a valid date. Click again to reset calendar or use format '{0}'.",
                                    SampleDateString));

                            enteringCalendarMode = false;
                        }
                    }
                    SetCalendar(this.Date);

                    if (this.Date.HasValue)
                        this.ResetOnClickValue = null;
                }

                CalendarPlaceHolder.Visible = enteringCalendarMode;
            }
        }
    }
}