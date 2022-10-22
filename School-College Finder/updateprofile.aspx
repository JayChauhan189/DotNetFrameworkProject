<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateprofile.aspx.cs" Inherits="School_College_Finder.updateprofile" %>

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
            background: url("assest/img/user-profile-bg.jpg") no-repeat;
            background-position:center;
            background-size:cover;
        }
        .auto-style1 {
            height: 34px;
        }
        .auto-style2 {
            height: 82px;
        }
    </style>
    </head>
<body>
        <form id="form1" runat="server">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <img src="/assest/img/logo.png" alt="Logo" height="45px">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>



                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item active mx-2">
                            <a class="nav-link" href="normaluser.aspx">Home <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item d-flex my-auto">
                            <asp:Label ID="username_lbl" CssClass="nav-link" runat="server" Text="Hello User"></asp:Label>
                            
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <main>

        </main>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
            <div class="row container">
                <div class="col-auto">
                <label class="h2 font-weight-bold my-2">Update User Profile: </label>    
            <table class="w-100">
                
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="d_username" ErrorMessage="Username Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="d_username" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="d_email" ErrorMessage="Email Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control"  ID="d_email" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="d_password" ErrorMessage="Password is Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control"  ID="d_password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="d_dob" ErrorMessage="Date of Birth is Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control"  ID="d_dob" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="d_gender" ErrorMessage="Gender is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="d_gender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="d_number" ErrorMessage="Mobile Number is Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="form-control"  ID="d_number" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Account Type"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="org_typelbl" runat="server" Text="School - College"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button CssClass="font-control btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Profile" />
                    </td>
                </tr>
            </table>
                    </div>
                </div>
    </form>
    </body>
</html>
