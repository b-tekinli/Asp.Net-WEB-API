<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BolumlereGorePersonelListesi.aspx.cs" Inherits="ITP247.BolumlereGorePersonelListesi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">Bölümlere Göre Personel Listesi Raporu</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pers_ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pers_ID" />
                            <asp:BoundField DataField="Pers_Adi" HeaderText="Pers_Adi" SortExpression="Pers_Adi" />
                            <asp:BoundField DataField="Pers_Soyadi" HeaderText="Pers_Soyadi" SortExpression="Pers_Soyadi" />
                            <asp:BoundField DataField="Pers_Isim" HeaderText="Pers_Isim" ReadOnly="True" SortExpression="Pers_Isim" />
                            <asp:BoundField DataField="Pers_DTarihi" HeaderText="Pers_DTarihi" SortExpression="Pers_DTarihi" />
                            <asp:BoundField DataField="Pers_Ise_Giris_Tarihi" HeaderText="Pers_Ise_Giris_Tarihi" SortExpression="Pers_Ise_Giris_Tarihi" />
                            <asp:BoundField DataField="Pers_Isten_Cikis_Tarihi" HeaderText="Pers_Isten_Cikis_Tarihi" SortExpression="Pers_Isten_Cikis_Tarihi" />
                            <asp:BoundField DataField="Pers_Adresi" HeaderText="Pers_Adresi" SortExpression="Pers_Adresi" />
                            <asp:BoundField DataField="Pers_Kenti" HeaderText="Pers_Kenti" SortExpression="Pers_Kenti" />
                            <asp:BoundField DataField="Pers_Ili" HeaderText="Pers_Ili" SortExpression="Pers_Ili" />
                            <asp:BoundField DataField="Pers_Il_Kodu" HeaderText="Pers_Il_Kodu" SortExpression="Pers_Il_Kodu" />
                            <asp:BoundField DataField="Pers_Tel" HeaderText="Pers_Tel" SortExpression="Pers_Tel" />
                            <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep" />
                            <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email" />
                            <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID" />
                            <asp:BoundField DataField="Pers_Maas" HeaderText="Pers_Maas" SortExpression="Pers_Maas" />
                            <asp:BoundField DataField="Pers_Komisyon_Yuzdesi" HeaderText="Pers_Komisyon_Yuzdesi" SortExpression="Pers_Komisyon_Yuzdesi" />
                            <asp:BoundField DataField="Cinsiyet_ID" HeaderText="Cinsiyet_ID" SortExpression="Cinsiyet_ID" />
                            <asp:BoundField DataField="Unvan_ID" HeaderText="Unvan_ID" SortExpression="Unvan_ID" />
                            <asp:BoundField DataField="Pers_SGK_No" HeaderText="Pers_SGK_No" SortExpression="Pers_SGK_No" />
                            <asp:BoundField DataField="Pers_TC_No" HeaderText="Pers_TC_No" SortExpression="Pers_TC_No" />
                            <asp:CheckBoxField DataField="Pers_Aktif_Mi" HeaderText="Pers_Aktif_Mi" SortExpression="Pers_Aktif_Mi" />
                            <asp:BoundField DataField="Pers_CV" HeaderText="Pers_CV" SortExpression="Pers_CV" />
                            <asp:BoundField DataField="Pers_CV_File" HeaderText="Pers_CV_File" SortExpression="Pers_CV_File" />
                            <asp:BoundField DataField="Pers_CV_Web" HeaderText="Pers_CV_Web" SortExpression="Pers_CV_Web" />
                            <asp:BoundField DataField="Kaydeden" HeaderText="Kaydeden" SortExpression="Kaydeden" />
                            <asp:BoundField DataField="Kayit_Tarihi" HeaderText="Kayit_Tarihi" SortExpression="Kayit_Tarihi" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT * FROM [tbl_Personeller]"></asp:SqlDataSource>
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
