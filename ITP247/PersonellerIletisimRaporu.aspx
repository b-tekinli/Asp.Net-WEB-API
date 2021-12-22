<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonellerIletisimRaporu.aspx.cs" Inherits="ITP247.PersonellerIletisimRaporu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="color: forestgreen;" colspan="2"><strong>Personel İletişim Raporu</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                        <tr style="background-color: springgreen; color: white;">
                            <td>ID</td>
                            <td>İsim</td>
                            <td>Tel</td>
                            <td>Cep</td>
                            <td>Email</td>
                            <td>Bölüm</td>
                            <td>Ünvan</td>
                        </tr>
                    </HeaderTemplate>


                    <ItemTemplate>
                        <tr style="background-color: lightgrey;">
                            <td><%# Eval("Pers_ID")%></td>
                            <td><%# Eval("Pers_İsim")%></td>
                            <td><%# Eval("Pers_Tel")%></td>
                            <td><%# Eval("Pers_Cep")%></td>
                            <td><%# Eval("Pers_Email")%></td>
                            <td><%# Eval("Pers_Bölüm")%></td>
                            <td><%# Eval("Pers_Ünvan")%></td>
                        </tr>
                    </ItemTemplate>


                    <AlternatingItemTemplate>
                        <tr style="background-color: lightgrey;">
                            <td><%# Eval("Pers_ID")%></td>
                            <td><%# Eval("Pers_İsim")%></td>
                            <td><%# Eval("Pers_Tel")%></td>
                            <td><%# Eval("Pers_Cep")%></td>
                            <td><%# Eval("Pers_Email")%></td>
                            <td><%# Eval("Pers_Bölüm")%></td>
                            <td><%# Eval("Pers_Ünvan")%></td>
                        </tr>
                    </AlternatingItemTemplate>
                </asp:Repeater>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT * FROM [vw_PersonelIletisim]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
