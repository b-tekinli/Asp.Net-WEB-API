<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formlar.aspx.cs" Inherits="ITP247.Formlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table class="nav-justified">
            <tr>
                <td class="text-center" style="font-size: x-large">Formlar</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Personel Veri Giriş Formu" />
                    <asp:Button ID="Button2" runat="server" Text="Maaş Veri Girişi Formu" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Personel Veri Güncelleme Formu" />
                    <asp:Button ID="Button4" runat="server" Text="Maaş Veri Güncelleme Formu" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="Personel Wizard Formu" />
                    <asp:Button ID="Button6" runat="server" Text="Bölüm Veri Giriş Formu" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        Formlar</p>
</asp:Content>
