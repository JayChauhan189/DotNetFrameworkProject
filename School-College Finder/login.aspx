<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="School_College_Finder.login" %>

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
    <style>
        * {
            font-family: 'Baloo 2', cursive;
            
            /* font-family: 'Great Vibes', cursive; */
        }
        body{
            background: url("assest/img/login-bg.jpg") no-repeat;
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
        <div class="col-auto" >
            <table class="mt-3">
                <tr>
                    <td colspan="2">
                        <center>
                        <asp:Label ID="Label1" CssClass="h2 font-weight-bold" runat="server" Text="Login Details"></asp:Label>
                        </center>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="invalid_credentials" runat="server" ForeColor="Red" Text="Invalid Credentials:" Visible="False"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="px-5 py-3">
                        <asp:Label ID="Label2" runat="server" Text="Email ID"> </asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" required ID="email" runat="server" ToolTip="Provide Email Id"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="px-5 py-3">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox required CssClass="form-control" ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="">
                        <center>
                        <asp:Button ID="login_btn" CssClass="btn btn-primary px-4" runat="server" Text="Login" OnClick="login_btn_Click" />
                            </center>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
