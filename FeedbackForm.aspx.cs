using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace FeedbackForm
{
    public partial class FeedbackForm : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string rating = ddlRating.SelectedValue;
            string comments = txtComments.Text.Trim();

            // Connection string from Web.config
            string cs = ConfigurationManager.ConnectionStrings["FeedbackDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO Feedback(Name, Email, Rating, Comments) VALUES(@Name, @Email, @Rating, @Comments)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Rating", rating);
                cmd.Parameters.AddWithValue("@Comments", comments);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            lblMessage.Text = "Thank you for your feedback!";

            txtName.Text = "";
            txtEmail.Text = "";
            ddlRating.SelectedIndex = 0;
            txtComments.Text = "";
        }
    }
}
