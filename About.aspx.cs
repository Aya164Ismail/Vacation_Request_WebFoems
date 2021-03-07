using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VacationRequestWebForm
{
    public partial class About : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SubmissionDate.Text = DateTime.Now.ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string VacationRequest =
                ConfigurationManager.ConnectionStrings["VacationRequest"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(VacationRequest);
            if (VacationDatesFrom.SelectedDate > VacationDatesTo.SelectedDate)
            {
                ltmessage.Text = "Invalid Vacation dates From and To";
            }
            else if(VacationDatesFrom.SelectedDate < DateTime.Now)
            {
                ltmessage.Text = "You are choose vacation date from in invalid date";
            }
            else if(VacationDatesTo.SelectedDate > TextReturning.SelectedDate)
            {
                ltmessage.Text = "You are Choose invalid Returning date";
            }
            else
            {
                int totaldays = VacationDatesTo.SelectedDate.DayOfYear - VacationDatesFrom.SelectedDate.DayOfYear;
                Guid id = Guid.NewGuid();
                sqlConnection.Open();
                SqlCommand sqlCommand = sqlConnection.CreateCommand();
                sqlCommand.CommandType = CommandType.Text;
                sqlCommand.CommandText = "insert into VacationRequests (Id, Title, EmployeeName, Department, VacationDatesFrom, VacationDatesTo" +
                    ",CreatedDate, Returning, TotalDays, Notes) " +
                    "values('" + id + "','" + TextTitle.Text + "','" + EmployeeName.Text
                    + "','" + TextDepartment.Text + "','" + VacationDatesFrom.SelectedDate + "','" + VacationDatesTo.SelectedDate
                    + "','" + SubmissionDate.Text + "','" + TextReturning.SelectedDate + "','" + totaldays + "','" + TextNotes.Text + "')";

                sqlCommand.ExecuteNonQuery();
                sqlConnection.Close();
                Response.Redirect("~/SuccessPage.aspx");
            }
            string message = string.Format("Your Request submitted successfully");
        }

        protected void VacationDatesFrom_SelectionChanged(object sender, EventArgs e)
        {
            if(VacationDatesFrom.SelectedDate < DateTime.Now)
            {
                message1.Text = "Invalid date";
            }
        }

        protected void TextReturning_SelectionChanged(object sender, EventArgs e)
        {
            if(TextReturning.SelectedDate < VacationDatesTo.SelectedDate)
            {
                message3.Text = "You Choose returning date Before your vacation date To";
            }
        }

        protected void VacationDatesTo_SelectionChanged(object sender, EventArgs e)
        {
            if (VacationDatesFrom.SelectedDate > VacationDatesTo.SelectedDate)
            {
                message2.Text = "You choose date Greater than date from";
            }
        }


    }
}