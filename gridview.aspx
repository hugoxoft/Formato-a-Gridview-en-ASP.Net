<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="gridview.aspx.vb" Inherits="proyectos_varios.gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grid View</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link href="css/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="card-header titulo">
            <h3 class="card-title titulo_letras">DIRECTORIO</h3>
        </div>
        <div class="card-body">
            <div class="container">
                <div class="table-responsive">
                    <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="false"
                        Font-Names="Century Gothic" CssClass="table datatables table-bordered table-hover table-condensed"
                        AllowPaging="True" Width="100%" Font-Size="11" PageSize="2" BackColor="White">
                        <Columns>

                    <%--        <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="container py-4">
                                        <div class="row g-4 row-cols-1 row-cols-sm-2 row-cols-md-3">
                                            <div class="col">
                                                <div class="card">
                                                    <div class="ratio ratio-1x1 rounded-circle overflow-hidden">
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "\imagenes\" + Eval("str_foto")%>' 
                                                            class="card-img-top img-cover" />
                                                    </div>
                                                    <div class="card-body">
                                                        <h5 class="card-title">
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("str_puesto")%>'></asp:Label>
                                                        </h5>
                                                        <p class="card-text">
                                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("str_nombre")%>'></asp:Label>
                                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("str_paterno")%>'></asp:Label>
                                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("str_materno")%>'></asp:Label>
                                                        </p>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("str_area")%>'></asp:Label>
                                                        <br />
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("str_email")%>'></asp:Label>
                                                        <a href="#" class="btn btn-primary">Más información</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>--%>

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div style="padding: 5px">
                                        <table class="templateTable">
                                            <tr>
                                                <td rowspan="5" style="width: 20%">
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "\imagenes\" + Eval("str_foto")%>' width="100%"/>
                                                </td>
                                                <td style="width: 20%">No. empleado</td>
                                                <td class="value" colspan="3" style="width: 60%">
                                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("int_numemp")%>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 20%">Nombre</td>
                                                <td class="value" colspan="3" style="width: 80%">
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("str_nombre")%>'></asp:Label>
                                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("str_paterno")%>'></asp:Label>
                                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("str_materno")%>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 20%">Puesto</td>
                                                <td class="value" colspan="3" style="width: 80%">
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("str_puesto")%>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 20%">Área</td>
                                                <td class="value" style="width: 60%">
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("str_area")%>'></asp:Label>
                                                </td>
                                                <td style="width: 10%">Ext.</td>
                                                <td class="value" style="width: 10%">
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("str_ext")%>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 20%">Email</td>
                                                <td class="value" colspan="3" style="width: 80%">
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("str_email")%>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                        <HeaderStyle BackColor="#B1B2FF" />
                        <PagerSettings Position="Bottom" />
                        <PagerStyle Wrap="True" BackColor="#EEEEEE" Font-Bold="True" Font-Size="Medium" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
