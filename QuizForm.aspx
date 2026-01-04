<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizForm.aspx.cs" Inherits="FeedbackForm.QuizForm" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Online Quiz</title>

    <style>
        body {
            background: linear-gradient(-45deg, #ff9a9e, #fad0c4, #a1c4fd, #c2e9fb);
            background-size: 400% 400%;
            animation: gradientMove 8s ease infinite;
        }

        @keyframes gradientMove {
            0% {background-position: 0% 50%;}
            50% {background-position: 100% 50%;}
            100% {background-position: 0% 50%;}
        }

        .container {
            width: 500px;
            margin: 50px auto;
            background: white;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.3);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .question {
            margin-top: 15px;
            font-weight: bold;
        }

        .btn {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            background: #4CAF50;
            font-size: 16px;
            cursor: pointer;
            color: white;
        }

        .btn:hover {
            background: #388E3C;
        }

        .score {
            font-size: 18px;
            font-weight: bold;
            color: blue;
            text-align: center;
        }

        .feedback-link {
            text-align: center;
            margin-top: 10px;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2>ONLINE QUIZ</h2>

            <!-- Q1 -->
            <div class="question">1) ASP.NET language?</div>
            <asp:RadioButtonList ID="q1" runat="server">
                <asp:ListItem>Java</asp:ListItem>
                <asp:ListItem>C#</asp:ListItem>
                <asp:ListItem>Python</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q2 -->
            <div class="question">2) SQL stands for?</div>
            <asp:RadioButtonList ID="q2" runat="server">
                <asp:ListItem>Structured Query Language</asp:ListItem>
                <asp:ListItem>Strong Question Language</asp:ListItem>
                <asp:ListItem>Simple Query Language</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q3 -->
            <div class="question">3) ASP.NET used for?</div>
            <asp:RadioButtonList ID="q3" runat="server">
                <asp:ListItem>Desktop Apps</asp:ListItem>
                <asp:ListItem>Mobile Apps</asp:ListItem>
                <asp:ListItem>Web Applications</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q4 -->
            <div class="question">4) Which database is commonly used with ASP.NET?</div>
            <asp:RadioButtonList ID="q4" runat="server">
                <asp:ListItem>Oracle</asp:ListItem>
                <asp:ListItem>MySQL</asp:ListItem>
                <asp:ListItem>SQL Server</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q5 -->
            <div class="question">5) Which protocol is used for web pages?</div>
            <asp:RadioButtonList ID="q5" runat="server">
                <asp:ListItem>FTP</asp:ListItem>
                <asp:ListItem>HTTP</asp:ListItem>
                <asp:ListItem>SMTP</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q6 -->
            <div class="question">6) C# is?</div>
            <asp:RadioButtonList ID="q6" runat="server">
                <asp:ListItem>Markup Language</asp:ListItem>
                <asp:ListItem>Programming Language</asp:ListItem>
                <asp:ListItem>Database</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q7 -->
            <div class="question">7) Visual Studio is an?</div>
            <asp:RadioButtonList ID="q7" runat="server">
                <asp:ListItem>Operating System</asp:ListItem>
                <asp:ListItem>IDE</asp:ListItem>
                <asp:ListItem>Compiler</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q8 -->
            <div class="question">8) ASP.NET MVC means?</div>
            <asp:RadioButtonList ID="q8" runat="server">
                <asp:ListItem>Model View Controller</asp:ListItem>
                <asp:ListItem>Modem Virtual Control</asp:ListItem>
                <asp:ListItem>Multi Visual Code</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q9 -->
            <div class="question">9) Which one is a server-side scripting language?</div>
            <asp:RadioButtonList ID="q9" runat="server">
                <asp:ListItem>HTML</asp:ListItem>
                <asp:ListItem>CSS</asp:ListItem>
                <asp:ListItem>ASP.NET</asp:ListItem>
            </asp:RadioButtonList>


            <!-- Q10 -->
            <div class="question">10) CSS is used for?</div>
            <asp:RadioButtonList ID="q10" runat="server">
                <asp:ListItem>Styling Web Pages</asp:ListItem>
                <asp:ListItem>Storing Data</asp:ListItem>
                <asp:ListItem>Server Communication</asp:ListItem>
            </asp:RadioButtonList>

            <asp:Button ID="btnSubmitQuiz" runat="server" CssClass="btn"
                Text="Submit Quiz" OnClick="btnSubmitQuiz_Click" />

            <br /><br />

            <asp:Label ID="lblScore" runat="server" CssClass="score"></asp:Label>

            <div class="feedback-link">
                <asp:HyperLink ID="lnkFeedback" runat="server"
                    NavigateUrl="FeedbackForm.aspx" Visible="false">
                    Click here to give feedback
                </asp:HyperLink>
            </div>

        </div>
    </form>
</body>
</html>
