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
            text-align: center;
            height: 14px;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            text-align: center;
            height: 255px;
            width: 1157px;
        }
        .auto-style7 {
            height: 255px;
        }
        .auto-style8 {
            width: 1157px;
        }
    </style>
</head>
<body style="display: flex; justify-content: center;">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="color: forestgreen;" colspan="2"><strong>Bölümlere Göre Personel Listesi Raporu</strong></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <span class="auto-style5">Bölüm Adı:
                    </span>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" Height="31px" Width="145px">
                    </asp:DropDownList>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" Width="1117px">
                        <AlternatingRowStyle BackColor="White" />
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
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:Button ID="Button1" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" OnClientClick="window.close();" Text="Formu Kapat" Width="168px" style="cursor: pointer;"/>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT * FROM [vw_PersonellerListesi] WHERE Bolum_ID = @Bolum_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Bolum_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
