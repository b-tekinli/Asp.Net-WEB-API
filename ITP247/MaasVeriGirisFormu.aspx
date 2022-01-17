<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MaasVeriGirisFormu.aspx.cs" Inherits="ITP247.MaasVeriGirisFormu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 15px;
            text-align: center;
            font-size: xx-large;
            color: #339966;
        }
        .auto-style3 {
            width: 168px;
        }
        .auto-style4 {
            width: 141px;
        }
        .auto-style5 {
            width: 168px;
            font-size: large;
        }
    </style>
</head>
<body style="display: flex; justify-content: center;">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3"><strong>Personel Maaşları Veri Giriş Formu</strong></td>
            </tr>
            <tr>
                <td class="auto-style5">Personel Adı:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID" Height="16px" Width="114px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Maaş Ödeme Tarihi:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Maaş Tutarı:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Maaş Komisyonu:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="VERİLERİ SAKLA" Width="159px" OnClick="Button1_Click" BackColor="#339966" Font-Bold="True" ForeColor="White" Height="36px" />
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="#FF6600"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="FORMU KAPAT" Width="125px" OnClientClick="window.close()" BackColor="#FF3300" Font-Bold="True" ForeColor="White" Height="33px" />
                </td>
            </tr>
        </table>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_PersonelMaaslari (Pers_ID, Maas_Odeme_Tarihi, Maas_Tutari, Maas_Komisyon)
VALUES (@Pers_ID, @Maas_Odeme_Tarihi, @Maas_Tutari, @Maas_Komisyon)" SelectCommand="SELECT Maas_Odeme_Tarihi, Maas_Tutari, Maas_Komisyon FROM tbl_PersonelMaaslari" UpdateCommand="UPDATE tbl_PersonelMaaslari
SET Maas_Tutari =@Maas_Tutari, Maas_Komisyon=@Maas_Komisyon,Maas_Odeme_Tarihi=@Maas_Odeme_Tarihi
WHERE PersonelMaaslari=@PersonelMaaslari">
                <InsertParameters>
                    <asp:Parameter Name="Pers_ID" />
                    <asp:Parameter Name="Maas_Odeme_Tarihi" />
                    <asp:Parameter Name="Maas_Tutari" />
                    <asp:Parameter Name="Maas_Komisyon" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Maas_Tutari" />
                    <asp:Parameter Name="Maas_Komisyon" />
                    <asp:Parameter Name="Maas_Odeme_Tarihi" />
                    <asp:Parameter Name="PersonelMaaslari" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
