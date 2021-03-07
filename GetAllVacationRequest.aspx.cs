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
    public partial class GetAllVacationRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    BindGrad();
                }

            }
            catch (Exception ex)
            {

            }

        }

        protected void MoreInfo_Click(object sender, EventArgs e)
        {
            try
            {
                int x = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                //Label1.Text = GridView1.Rows[rowind].Cells[1].Text;
                string VacationRequest =
                ConfigurationManager.ConnectionStrings["VacationRequest"].ConnectionString;
                SqlConnection con = new SqlConnection(VacationRequest);
                SqlDataAdapter da = new SqlDataAdapter("select * from VacationRequests where Id = @id", con);

                DataSet ds1 = new DataSet();
                da.Fill(ds1);

                con = new SqlConnection(VacationRequest);
                da.SelectCommand.Connection = con;

                GridView1.DataSource = ds1;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                string VacationRequest =
                ConfigurationManager.ConnectionStrings["VacationRequest"].ConnectionString;
                SqlConnection con = new SqlConnection(VacationRequest);
                SqlDataAdapter da = new SqlDataAdapter("select * from VacationRequests where Id = @id", con);

                DataSet ds1 = new DataSet();
                da.Fill(ds1);

                con = new SqlConnection(VacationRequest);
                da.SelectCommand.Connection = con;

                GridView1.DataSource = ds1;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {

            }
        }

        void BindGrad()
        {
            string VacationRequest =
                                    ConfigurationManager.ConnectionStrings["VacationRequest"].ConnectionString;
            SqlConnection con = new SqlConnection(VacationRequest);
            SqlDataAdapter da = new SqlDataAdapter("select * from VacationRequests", con);

            DataSet ds1 = new DataSet();
            da.Fill(ds1);

            con = new SqlConnection(VacationRequest);
            da.SelectCommand.Connection = con;

            GridView1.DataSource = ds1;
            GridView1.DataBind();
        }
    }
}