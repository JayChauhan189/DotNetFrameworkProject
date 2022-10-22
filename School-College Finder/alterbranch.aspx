<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alterbranch.aspx.cs" Inherits="School_College_Finder.alterbranch" %>

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
        <div class="row justify-content-center my-3">
            <label class="font-weight-bold h2 mx-2">Branch Deatils:</label>
            <div class="col-auto">
                <table class="table table-responsive">
                    <tr>
                        <td>
                             <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound1" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataKeyNames="Id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                 <Columns>
                                     <asp:CommandField ShowDeleteButton="True" />
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
                                     <asp:BoundField DataField="City" HeaderText="city" SortExpression="city" />
                                     <asp:BoundField DataField="Type" HeaderText="type" SortExpression="type" />

                                     <asp:BoundField DataField="number" HeaderText="Number" SortExpression="number" />
                                     <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                                     <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                     <asp:BoundField DataField="awards" HeaderText="Awards" SortExpression="awards" />
                                     <asp:BoundField DataField="fees" HeaderText="Fee Structure" SortExpression="fees" />
                                 </Columns>
                        
                                 <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                 <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                 <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                 <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                 <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                 <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                 <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                 <SortedDescendingHeaderStyle BackColor="#242121" />
                        
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [branch_name], [website], [location],[city], [type], [number], [description], [email], [awards], [fees], [date] FROM [clg_branch] WHERE ([uid] = @uid) ORDER BY [branch_name]" 
                        DeleteCommand="Delete from clg_branch where Id = @Id"
                        UpdateCommand="UPDATE clg_branch set branch_name = @branch_name,website = @website,location = @location,city = @city, type = @type,number = @number,description = @description,email = @email,awards = @awards,fees = @fees where Id = @Id"
                        >
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="0" Name="uid" SessionField="id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
    
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
