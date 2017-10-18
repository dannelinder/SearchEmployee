using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SearchEmployees
{
    public partial class SearchPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string connectionStr = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionStr))
            {
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandText = "spSearchEmployees";
                command.CommandType = CommandType.StoredProcedure;

                if (inputFirstName.Value.Trim() != "")
                {
                    SqlParameter parameter = new SqlParameter("@FirstName", inputFirstName.Value);
                    command.Parameters.Add(parameter);
                }

                if (inputLastName.Value.Trim() != "")
                {
                    SqlParameter parameter = new SqlParameter("@LastName", inputLastName.Value);
                    command.Parameters.Add(parameter);
                }

                if (inputGender.Value.Trim() != "")
                {
                    SqlParameter parameter = new SqlParameter("@Gender", inputGender.Value);
                    command.Parameters.Add(parameter);
                }

                connection.Open();
                SqlDataReader dataReader = command.ExecuteReader();
                gvSearchResult.DataSource = dataReader;
                gvSearchResult.DataBind();

            } 
        }
    }
}