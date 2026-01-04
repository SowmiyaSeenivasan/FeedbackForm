<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedbackForm.aspx.cs" Inherits="FeedbackForm.FeedbackForm" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Feedback Form</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

</head>
<body class="bg-light">

    <form id="form1" runat="server">

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">

                    <div class="card shadow-lg border-0">
                        <div class="card-header text-center bg-primary text-white">
                            <h3>Feedback Form</h3>
                        </div>

                        <div class="card-body">

                            <div class="mb-3">
                                <label class="form-label">Name</label>
                                <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Rating</label>
                                <asp:DropDownList ID="ddlRating" CssClass="form-select" runat="server">
                                    <asp:ListItem Text="Select" Value="" />
                                    <asp:ListItem Text="Excellent" Value="Excellent" />
                                    <asp:ListItem Text="Good" Value="Good" />
                                    <asp:ListItem Text="Average" Value="Average" />
                                    <asp:ListItem Text="Poor" Value="Poor" />
                                </asp:DropDownList>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Comments</label>
                                <asp:TextBox ID="txtComments" TextMode="MultiLine" Rows="4" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <asp:Button ID="btnSubmit" runat="server" Text="Submit Feedback" CssClass="btn btn-primary w-100" OnClick="btnSubmit_Click" />

                            <div class="mt-3 text-center">
                                <asp:Label ID="lblMessage" runat="server" CssClass="text-success fw-bold"></asp:Label>
                            </div>
                            <asp:HyperLink ID="lnkQuiz" runat="server" NavigateUrl="QuizForm.aspx"> Back to Quiz</asp:HyperLink>

                        </div>
                    </div>

                </div>
            </div>
        </div>

    </form>

</body>
</html>
