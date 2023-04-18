<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Practice_web.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Learning Web Development</title>
    <link rel="stylesheet" href="bootstrap-5.2.0-dist/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="theStyleSheet.css" type="text/css"/>
</head>
<body>
    <form id="Login" runat="server">
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
        <div id="Principal" class="container">
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
                    </div>
                </div>
            </div>
            <div class="text-center row tableStyle">
                <div class="col-lg-3 px-0 mt-1">
                    <div>PERSONA INDIVIDUAL</div>
                    <div><div class="backgroundFirst"></div></div>
                </div>
                <div class="col-lg-3 px-0 mt-1">
                    <div>CONSULTA DE CERTIFICADO</div>
                    <div class="background1"></div>
                </div>
                <div class="col-lg-3 px-0 mt-1">
                    <div>PREGUNTAS FRECUENTES</div>
                    <div class="background1"></div>
                </div>
                <div class="col-lg-3 px-0 mt-1">
                    <div>LEY Y REGLAMIENTO</div>
                    <div class="background1"></div>
                </div>
            </div>
            <div class="row Body">
                <div class="col">
                    <div class="row py-3">
                        <div class="col-12">
                            <b class="fontTittle">Seleccione estado</b>
                        </div>
                        <div class="col-12 py-3"> 
                            <div class="row">
                                <div class="col lgcb">
                                    <asp:DropDownList ID="state" runat="server" CssClass="form-check stateComboBox">
                                        <asp:ListItem>Guatemala</asp:ListItem>
                                        <asp:ListItem>Extranjero</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <b class="fontTittle">Datos Personales</b>
                        </div>
                        <div class="col-12 py-3">
                            <div class="row">
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label1" runat="server" CssClass="txbs fn" Text="DPI:"></asp:Label></div>
                                    <asp:TextBox ID="dpi" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label2" runat="server" CssClass="txbs fn" Text="FECHA DE NACIMIENTO:"></asp:Label></div>
                                    <asp:TextBox placeHolder="dd-mm-yyyy" ID="TextBox1" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label3" runat="server" CssClass="txbs fn" Text="AÑO DE NACIMIENTO:"></asp:Label></div>
                                    <asp:TextBox placeHolder="yyyy" ID="TextBox2" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 col-sm-12 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label4" runat="server" CssClass="txbs fn" Text="CORREO ELECTRONICO:"></asp:Label></div>
                                    <asp:TextBox placeHolder="example@gmail.com" ID="TextBox3" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 py-3">
                            <div class="row">
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label5" runat="server" CssClass="txbs fn" Text="PRIMER NOMBRE:"></asp:Label></div>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label placeHolder="dd/mm/yy" ID="label6" runat="server" CssClass="txbs fn" Text="SEGUNDO NOMBRE:"></asp:Label></div>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label7" runat="server" CssClass="txbs fn" Text="TERCER NOMBRE:"></asp:Label></div>
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 py-3">
                            <div class="row">
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label8" runat="server" CssClass="txbs fn" Text="PRIMER APELLIDO:"></asp:Label></div>
                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label placeHolder="dd/mm/yy" ID="label9" runat="server" CssClass="txbs fn" Text="SEGUNDO APELLIDO:"></asp:Label></div>
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label10" runat="server" CssClass="txbs fn" Text="APELLIDO CASADO:"></asp:Label></div>
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 col-sm-12 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label11" runat="server" CssClass="txbs fn" Text="TELEFONO CELULAR:"></asp:Label></div>
                                    <asp:TextBox placeHolder="Telefono" ID="TextBox10" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <b class="fontTittle">Datos del lugar donde trabajará:</b>
                            <div class="row">
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label12" runat="server" CssClass="txbs fn" Text="NOMBRE DE INSTITUCION:"></asp:Label></div>
                                    <asp:TextBox ID="TextBox11" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label placeHolder="dd/mm/yy" ID="label13" runat="server" CssClass="txbs fn" Text="TELEFONO DE INSTITUCION:"></asp:Label></div>
                                    <asp:TextBox ID="TextBox12" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label14" runat="server" CssClass="txbs fn" Text="ACTIVIDAD ECONOMICA/OCUPACION/OFICIO:"></asp:Label></div>
                                    <asp:TextBox ID="TextBox13" runat="server" CssClass="txbs"></asp:TextBox>
                                </div>
                                <div class="col-lg-4 col-sm-12 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label15" runat="server" CssClass="txbs fn" Text="DEPARTAMENTO QUE TRABAJARA:"></asp:Label></div>
                                    <asp:DropDownList ID="comboBox2" runat="server" CssClass="stateComboBox" AutoPostBack="True" OnSelectedIndexChanged="comboBox2_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                                <div class="col-lg-4 col-sm-12 px-lg-5 px-md-5 px-sm-5">
                                    <div class="mb-2"><asp:Label ID="label16" runat="server" CssClass="txbs fn" Text="MUNICIPIO QUE TRABAJARA:"></asp:Label></div>
                                    <asp:DropDownList ID="comboBox3" runat="server" CssClass="stateComboBox" AutoPostBack="True"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <b class="fontTittle">Motivo de solicitud:</b>
                            <div class="row">
                                <div class="col text-center px-lg-5 px-sm-5">
                                  <asp:TextBox ID="motivo" runat="server" TextMode="MultiLine" CssClass="txtBoxR"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="row px-0">
                                <div class="col-12 mt-3 text-center headerText">Por favor marque la casilla antes de realizar la solicitud.</div>
                                <div class="col-12 text-center mt-3">
                                    <div class="JoinDiv3">
                                        <asp:Button ID="send" runat="server" CssClass="send Send" OnClick="send_Click"/>
                                    </div>
                                <div class="JoinDiv3">
                                  <asp:Button ID="home" runat="server" CssClass="home Home"/>  
                                </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="row">
                                <div class="col text-end py-0 text-center">
                                    <a href="ListWebForm.aspx"><div class="btn btn-link linkS"><asp:Label ID="list" runat="server" Text="Listado"/></div></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="headerText">
            *De conformidad a lo establecido en el Decreto número 22-2017 del Congreso de la República de Guatemala "Ley del Banco de Datos Genéticos para Uso Forense", el Ministerio Público deberá llevar un Registro sobre las personas que hubieren sido condenadas por delitos contra la libertad e indemnidad sexual, regulados en el Código Penal y otras normas específicas de la materia. Asimismo, extenderá certificaciones a las personas que consten dentro del Registro, así como certificación de no constar en el mismo únicamente cuando las labores a desempeñar se relacionen con actividades permanentes o personales con niñas, niños y adolescentes”.</footer>
        </div>
    </form>
</body>
</html>
