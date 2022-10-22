<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="School_College_Finder.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="assest/css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Great+Vibes&display=swap" rel="stylesheet">

    <title>School - College Finder</title>
    <link rel="icon" type="image/x-icon" href="/assest/img/logo.png">
    <style type="text/css">
          * {
            font-family: 'Baloo 2', cursive;
            /* font-family: 'Great Vibes', cursive; */
        }
        body{
            background: url("assest/img/login-bg.jpg") no-repeat;
            background-position:center;
            background-size:cover;
        }
    </style>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <img src="/assest/img/logo.png" alt="Logo" height="45px">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item active mx-2">
                        <a class="nav-link" href="default.html">Home <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="login.aspx">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="signup.aspx">Signup</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <form id="form1" class="" runat="server">
        <div class="col-auto">
            <table class="">
                <tr>
                    <td colspan="2">
                        <center>
                        <asp:Label ID="Label1" CssClass="h2 font-weight-bold" runat="server" Text="Signup Details"></asp:Label>
                            </center>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Username is Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control"  ID="username" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Email is Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label2" runat="server" Text="Email Id"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control"  ID="email" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Password is Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control"  ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dob" ErrorMessage="Date Of Birth is Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td class="">
                        <asp:TextBox CssClass="form-control"  ID="dob" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="gender" ErrorMessage="Gender is Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="gender" runat="server">
                            <asp:ListItem>&nbsp; Male</asp:ListItem>
                            <asp:ListItem>&nbsp; Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="number" ErrorMessage="Number is Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label7" runat="server" Text="Mobile Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control"  ID="number" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="acc_type" ErrorMessage="Account Type is Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label8" runat="server" Text="Account Type"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList  ID="acc_type" runat="server">
                            <asp:ListItem>&nbsp; Normal User</asp:ListItem>
                            <asp:ListItem>&nbsp; School</asp:ListItem>
                            <asp:ListItem>&nbsp; College</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Button ID="submit" CssClass="form-control mb-3 btn btn-primary px-2" runat="server" OnClick="submit_Click" Text="Create Account" />
                    </td>
                </tr>
                </table>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
