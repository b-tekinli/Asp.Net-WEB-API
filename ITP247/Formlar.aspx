<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formlar.aspx.cs" Inherits="ITP247.Formlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <table class="nav-justified">
            <tr>
                <td class="text-center" style="font-size: xx-large; width: 1111px;"><strong>PMTP Formlar</strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-left" style="height: 38px; width: 1111px; display: flex; justify-content: center; margin-top: 30px;">
                    <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Personel Veri Giriş Formu" style="font-size: large; width: 250px; margin-right: 150px;" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGirisFormu.aspx" />
                    <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="Maaş Veri Girişi Formu" style="font-size: large; width: 250px;" OnClientClick="target='_blank';" />
                </td>
                <td class="text-justify" style="height: 38px"></td>
            </tr>
            <tr>
                <td style="height: 38px; width: 1111px; display: flex; justify-content: center; margin-top: 15px;">
                    <asp:Button ID="Button3" runat="server" class="btn btn-success" Text="Personel Veri Güncelleme Formu" style="font-size: large; width: 250px; margin-right: 150px;" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGuncellemeFormu.aspx" />
                    <asp:Button ID="Button4" runat="server" class="btn btn-success" Text="Maaş Veri Güncelleme Formu" style="font-size: large; width: 250px;" OnClientClick="target='_blank';" PostBackUrl="~/MaasVeriGuncellemeFormu.aspx" />
                </td>
                <td class="text-justify">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 38px; width: 1111px; display: flex; justify-content: center; margin-top: 15px;">
                    <asp:Button ID="Button5" runat="server" class="btn btn-success" Text="Personel Wizard Formu" style="font-size: large; width: 250px; margin-right: 150px;" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGirisWizard.aspx" />
                    <asp:Button ID="Button6" runat="server" class="btn btn-success" Text="Bölüm Veri Giriş Formu" style="font-size: large; width: 250px;" OnClientClick="target='_blank';" PostBackUrl="~/BolumVeriGirisiFormu.aspx" />
                </td>
                <td style="height: 32px" class="text-left">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1111px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
