using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VacationRequestWebForm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(UserName.Text != "Manager")
            {
                message.Text = "Your UserName is incorrect";
            }
            else if(txtPassword.Text != "123456")
            {
                message.Text = "Your Password is incorrect";
            }
            else
            {
                Response.Redirect("~/GetAllVacationRequest.aspx");
            }
        }
    }
}