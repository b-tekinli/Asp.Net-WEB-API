<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formlar.aspx.cs" Inherits="ITP247.Formlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table class="nav-justified" style="width: 95%;">
            <tr>
                <td class="text-center" style="font-size: xx-large; width: 1100px;"><strong>PMTP Formlar</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-left" style="height: 38px; width: 1032px; display: flex; justify-content: center; margin-top: 30px;">
                    <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Personel Veri Giriş Formu" style="font-size: small; margin-right: 150px;" />
                    <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="Maaş Veri Girişi Formu" style="font-size: small" />
                </td>
                <td class="text-justify" style="height: 38px"></td>
            </tr>
            <tr>
                <td style="width: 1032px; display: flex; justify-content: center; margin-top: 15px;">
                    <asp:Button ID="Button3" runat="server" class="btn btn-success" Text="Personel Veri Güncelleme Formu" style="font-size: small; margin-right: 150px;" />
                    <asp:Button ID="Button4" runat="server" class="btn btn-success" Text="Maaş Veri Güncelleme Formu" style="font-size: small" />
                </td>
                <td class="text-justify">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 32px; width: 1032px; display: flex; justify-content: center; margin-top: 15px;">
                    <asp:Button ID="Button5" runat="server" class="btn btn-success" Text="Personel Wizard Formu" style="font-size: small; margin-right: 150px; margin-left: 19px;" />
                    <asp:Button ID="Button6" runat="server" class="btn btn-success" Text="Bölüm Veri Giriş Formu" style="font-size: small" />
                </td>
                <td style="height: 32px" class="text-left">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1032px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
