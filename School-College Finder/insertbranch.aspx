<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertbranch.aspx.cs" Inherits="School_College_Finder.insertbranch" %>

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
                            <a class="nav-link" href="scollege.aspx">Home <span class="sr-only">(current)</span></a>
                            
                        </li>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item d-flex my-auto">
                            <asp:Label ID="username_lbl" CssClass="nav-link" runat="server" Text="Hello User"></asp:Label>
                            <asp:LinkButton CssClass="nav-link" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="row container">
            <div class="col-auto">
            <table class="">
                <tr> 
                    <td colspan="2">
                        <asp:Label CssClass="h2 font-weight-bold" ID="Label1" runat="server" Text="Add a New Branch - Enter Details"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label2" runat="server" Text="Branch Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox required CssClass="my-2 form-control" ID="bname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label3" runat="server" Text="Website"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox required CssClass="my-2 form-control"  ID="website" runat="server" TextMode="Url"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label4" runat="server" Text="Google Map Location"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="my-2 form-control"  ID="location" runat="server" TextMode="Url"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label11" runat="server" Text="City"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox required CssClass="my-2 form-control"  ID="citytxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="type" ErrorMessage="Institute Type is Rquired*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label5" runat="server" Text="Institute type"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList required ID="type" runat="server">
                            <asp:ListItem>School</asp:ListItem>
                            <asp:ListItem>College</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label6" runat="server" Text="Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox required CssClass="my-2 form-control"  ID="number" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label7" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox required  CssClass="my-2 form-control"  ID="description" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox required  CssClass="my-2 form-control"  ID="email" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label9" runat="server" Text="Awards in Past"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox required  CssClass="my-2 form-control"  ID="awards" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <asp:Label ID="Label10" runat="server" Text="Fees Structure"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox required  CssClass="my-2 form-control"  ID="fees" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button CssClass="form-control btn btn-primary my-3"  ID="Button1" runat="server" Text="Create Branch" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
                </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
