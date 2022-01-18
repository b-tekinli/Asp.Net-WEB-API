<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersoneleGoreYillikMaasRaporu.aspx.cs" Inherits="ITP247.PersoneleGoreYillikMaasRaporu" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            font-size: larger;
        }
    </style>
</head>
<body style="display: flex; justify-content: center;">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2" style="color: forestgreen;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Personel Maaş Grafiği Raporu</span></strong></td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="414px" Width="794px">
                        <series>
                            <asp:Series Name="Series1" XValueMember="Pers_Isim" YValueMembers="Maas_Toplam">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT tbl_PersonelMaaslari.Maas_Toplam, tbl_PersonelMaaslari.Maas_Yili, tbl_Personeller.Pers_Isim FROM tbl_PersonelMaaslari INNER JOIN tbl_Personeller ON tbl_PersonelMaaslari.Pers_ID = tbl_Personeller.Pers_ID"></asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" OnClientClick="window.close();" Text="Formu Kapat" Width="168px" style="cursor: pointer;"/>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
