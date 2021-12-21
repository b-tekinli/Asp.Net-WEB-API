<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Raporlar.aspx.cs" Inherits="ITP247.Raporlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table class="nav-justified">
            <tr>
                <td class="text-center" style="font-size: xx-large"><strong>PMTP Raporlar</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Bölüme Göre Personel Listesi" style="font-size: small" />
                    <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="Personele Göre Maaş Listesi" style="font-size: small" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" class="btn btn-success" Text="Personele Göre Yıllık Maaş Grafiği" style="font-size: small" />
                    <asp:Button ID="Button4" runat="server" class="btn btn-success" Text="Personel İletişim Raporu" style="font-size: small" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
   </p>
</asp:Content>
