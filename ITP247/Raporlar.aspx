<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Raporlar.aspx.cs" Inherits="ITP247.Raporlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table class="nav-justified">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Bölüme Göre Personel Listesi" />
                    <asp:Button ID="Button2" runat="server" Text="Personele Göre Maaş Listesi" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Personele Göre Yıllık Maaş Grafiği" />
                    <asp:Button ID="Button4" runat="server" Text="Personel İletişim Raporu" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        Raporlar</p>
</asp:Content>
