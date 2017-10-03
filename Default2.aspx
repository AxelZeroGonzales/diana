<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 243px;
        }
        .auto-style7 {
            width: 313px;
        }
        .auto-style8 {
            width: 427px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style13 {
            height: 277px;
        }
        .auto-style16 {
            height: 26px;
        }
        .auto-style17 {
            height: 277px;
            background-color: #0099CC;
        }
        .auto-style18 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" class="auto-style17">
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/descarga.jpg" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:Label ID="Label1" runat="server" Text="INICIO "></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="VISION  "></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="MISION  "></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="CLIENTES  "></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="PRODUCTOS  "></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="PROVEEDORES  "></asp:Label>
                    <asp:Label ID="Label15" runat="server" Text="EMPLEADOS"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="3">
                    <table align="center" aria-orientation="vertical" class="auto-style8">
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Label ID="Label7" runat="server" style="text-align: center" Text="Alumno" CssClass="auto-style18"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="IDALUMNO :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Txtcodigo" runat="server" style="text-align: center" Width="229px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="NOMBRE :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Txtnombre" runat="server" style="text-align: center" Width="229px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="APELLIDO :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Txtapellido" runat="server" style="text-align: center" Width="229px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="DISTRITO :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Txtdistrito" runat="server" style="text-align: center" Width="229px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">
                                <asp:Label ID="lblDireccion" runat="server" Text="DIRECCION :"></asp:Label>
                            </td>
                            <td class="auto-style16">
                                <asp:TextBox ID="Txtdireccion" runat="server" style="text-align: center" Width="229px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblTelefono" runat="server" Text="TELEFONO :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Txttelefono" runat="server" style="text-align: center" Width="229px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Button ID="Btnlimpiar" runat="server" Text="Limpiar" Width="73px" />
                                <asp:Button ID="Btnagregar" runat="server" Text="Agregar" />
                                <asp:Button ID="Btneliminar" runat="server" Text="Eliminar" />
                                <asp:Button ID="Btnmodificar" runat="server" Text="Modificar" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:GridView ID="grdAlumno" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Label ID="lblerror" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
