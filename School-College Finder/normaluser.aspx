<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="normaluser.aspx.cs" Inherits="School_College_Finder.normaluser" %>

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
                            <a class="nav-link" href="normaluser.aspx">Home <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item d-flex my-auto">
                            <asp:Label ID="username_lbl" CssClass="nav-link" runat="server" Text="Hello User"></asp:Label>
                            <asp:LinkButton CssClass="nav-link" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">User Profile</asp:LinkButton>
                            <asp:LinkButton CssClass="nav-link" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Logout</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <main>

            <div class="row justify-content-center my-3">
                <div class="row justify-content-center">
                        <div class="input-group mb-3">
                                <asp:DropDownList CssClass="custom-select col-4" AppendDataBoundItems="true" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="city" DataValueField="city" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Text="From All City" Selected="True" Value="3"></asp:ListItem>
                                </asp:DropDownList>
                            <asp:TextBox CssClass="form-control col-6" ID="TextBox3" runat="server" placeholder="Search - College/School.."></asp:TextBox>
                            <asp:Button CssClass="mx-2 btn btn-primary px-4" ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                        </div>
                    </div>
                <br>
                <div class="col-auto">
                    
                    <table class="table table-responsive h6">
                        <tr>
                            <td>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [city] FROM [clg_branch]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="branch_name" HeaderText="BranchName" SortExpression="branch_name" />
                                        <asp:TemplateField HeaderText="Website" SortExpression="website">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("website") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:HyperLink ID="Label1" runat="server" NavigateUrl='<%# Bind("website") %>' Text='<%# Bind("website") %>' Target="_blank"></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Location" SortExpression="location">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("location") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:HyperLink ID="Label2" runat="server" NavigateUrl='<%# Bind("location") %>' Text='<%# Bind("location") %>' Target="_blank"></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                        <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                                        <asp:BoundField DataField="number" HeaderText="Number" SortExpression="number" />
                                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="awards" HeaderText="Awards" SortExpression="awards" />
                                        <asp:BoundField DataField="fees" HeaderText="Fees Structure" SortExpression="fees" />
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                                <asp:Label ID="errorlbl" runat="server" Text="Data Not Found !.." Visible="False" ForeColor="Red"></asp:Label>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [branch_name], [website], [location],[city], [type], [number], [description], [email], [awards], [fees] FROM [clg_branch] ORDER BY [branch_name]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </main>
    </form>
</body>
</html>
