<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Raporlar.aspx.cs" Inherits="ITP247.Raporlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table class="nav-justified" style="width: 95%;">
            <tr>
                <td class="text-center" style="font-size: xx-large; width: 1032px;"><strong>PMTP Raporlar</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-left" style="height: 38px; width: 1032px; display: flex; justify-content: center; margin-top: 30px;">
                    <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Bölüme Göre Personel Listesi" style="font-size: large; width: 250px; margin-right: 125px;" />
                    <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="Personele Göre Maaş Listesi" style="font-size: large; width: 250px;" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-left" style="height: 38px; width: 1032px; display: flex; justify-content: center; margin-top: 15px;">
                    <asp:Button ID="Button3" runat="server" class="btn btn-success" Text="Personele Göre Yıllık Maaş Grafiği" style="font-size: large; width: 250px; margin-right: 125px;" />
                    <asp:Button ID="Button4" runat="server" class="btn btn-success" Text="Personel İletişim Raporu" style="font-size: large; width: 250px;" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
   </p>
</asp:Content>
