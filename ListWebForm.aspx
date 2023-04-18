<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListWebForm.aspx.cs" Inherits="Practice_web.ListWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Learning Web Development</title>
    <link rel="stylesheet" href="bootstrap-5.2.0-dist/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="theStyleSheet.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid headerBackground">
            <div class="container" style="padding-left: 0;">
            <div class="row">
                <header class="mt-2 mb-2 smallFont headerTextColor">
                <div class="JoinDiv"> <img src="Images/MP_logo.png"; style="width: 50px;" alt="logo" /></div> 
                <div class="JoinDiv Avoid">Servicios Al Ciudadano</div>
                </header>
            </div>
            </div>
        </div>
        <div id="body" class="container">
            <div class="row">
                <div class="col">
                    <div class="text-center pb-lg-5">
                        <img src="Images/EmblemaRenas.png"; style="width: 180px;" alt="logo"/>
                    </div>
                    <div class="headerText">
                    <div class="JoinDiv2">Si es institución y desea tramitar la constancia de sus colaboradores registrese</div>
                    <div class="JoinDiv2">
                        <asp:Button ID="register" runat="server" Text="Registrar" CssClass="ButtonRegister"/>
                        o si ya posee usuario
                    </div>
                        <div class="JoinDiv2">
                          <asp:Button ID="Button2" runat="server" Text="Inicie Sesion" CssClass="ButtonSesion"/>
                            para poder tramitarlas.
                        </div>
                       <a href="Default.aspx"><div class="btn btn-link JoinDiv2 linkS">Regresar</div></a>
                    </div>
                </div>
            </div>
            <div class="row overflow-scroll mt-5">
                <div class="col">
                    <asp:GridView ID="dataGridView1" runat="server" CssClass="grid" CellPadding="4" ForeColor="#333333" GridLines="None" >
                        <AlternatingRowStyle BackColor="#F2F2F2" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#0D216A" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#CCD9F2" Font-Bold="True" ForeColor="Black" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F2F2F2" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
