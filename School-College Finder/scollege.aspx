<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="scollege.aspx.cs" Inherits="School_College_Finder.clg" %>

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

        <main>
            <center>
                <div class="jumbotron">
                    <h1 class="display-4">
                        <asp:Label CssClass="h1" ID="username" runat="server" Text="Username"></asp:Label>
                    </h1>
                    <p class="lead">Welcome to Management Area..</p>
                    <hr class="my-4">
                    <p>Manage All your Branches of Institute within a single click..</p>
                    <p class="lead">
                        <asp:LinkButton CssClass="btn btn-primary btn-lg" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Edit Profile</asp:LinkButton>
                    </p>
                </div>
            </center>
            <div class="row container-fluid">
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-header">
                            Add New Institute Details
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Add New Branches</h5>
                            <p class="card-text">Create a new Branch of your Existing Institute Branch</p>
                            <a href="insertbranch.aspx" class="btn btn-success">Create New Branch</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-header">
                            Manage Institute Details
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Manage Existing Branches</h5>
                            <p class="card-text">Update or Delete your existing Institute Branch</p>
                            <a href="alterbranch.aspx" class="btn btn-warning">Update - Delete Branch</a>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
