using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeedbackForm
{
    public partial class QuizForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmitQuiz_Click(object sender, EventArgs e)
        {
            int score = 0;

            if (q1.SelectedValue == "C#") score++;
            if (q2.SelectedValue == "Structured Query Language") score++;
            if (q3.SelectedValue == "Web Applications") score++;
            if (q4.SelectedValue == "SQL Server") score++;
            if (q5.SelectedValue == "HTTP") score++;
            if (q6.SelectedValue == "Programming Language") score++;
            if (q7.SelectedValue == "IDE") score++;
            if (q8.SelectedValue == "Model View Controller") score++;
            if (q9.SelectedValue == "ASP.NET") score++;
            if (q10.SelectedValue == "Styling Web Pages") score++;

            lblScore.Text = "Your Score: " + score + " / 10";

            lnkFeedback.Visible = true;

        }
    }
}