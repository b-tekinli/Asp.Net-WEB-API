<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BolumlereGorePersonelListesiRaporu.aspx.cs" Inherits="ITP247.BolumlereGorePersonelListesiRaporu" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="color: forestgreen;" colspan="2"><strong>Bölümlere Göre Personel Listesi Raporu</strong></td>
            </tr>
            <tr>
                <td>Bölüm Adı:
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" Height="16px" Width="145px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Pers_ID" HeaderText="ID" SortExpression="Pers_ID" />
                            <asp:BoundField DataField="Pers_Adi" HeaderText="Adı" SortExpression="Pers_Adi" />
                            <asp:BoundField DataField="Pers_Soyadi" HeaderText="Soyadı" SortExpression="Pers_Soyadi" />
                            <asp:BoundField DataField="Pers_Isim" HeaderText="Pers_Isim" ReadOnly="True" SortExpression="Pers_Isim" />
                            <asp:BoundField DataField="Pers_DTarihi" HeaderText="DTarihi" SortExpression="Pers_DTarihi" />
                            <asp:BoundField DataField="Pers_Ise_Giris_Tarihi" HeaderText="Giriş Tarihi" SortExpression="Pers_Ise_Giris_Tarihi" />
                            <asp:BoundField DataField="Pers_Isten_Cikis_Tarihi" HeaderText="Çıkış Tarihi" SortExpression="Pers_Isten_Cikis_Tarihi" />
                            <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep" />
                            <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email" />
                            <asp:CheckBoxField DataField="Pers_Aktif_Mi" HeaderText="Pers_Aktif_Mi" SortExpression="Pers_Aktif_Mi" />
                            <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID" />
                            <asp:BoundField DataField="Bolum_Adi" HeaderText="Bölüm" SortExpression="Bolum_Adi" />
                            <asp:BoundField DataField="Unvan" HeaderText="Ünvan" SortExpression="Unvan" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT * FROM [vw_PersonellerListesi] WHERE Bolum_ID = @Bolum_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Bolum_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
