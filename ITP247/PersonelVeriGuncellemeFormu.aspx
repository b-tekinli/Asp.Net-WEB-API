<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonelVeriGuncellemeFormu.aspx.cs" Inherits="ITP247.PersonelVeriGuncellemeFormu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            color: #339933;
            font-size: xx-large;
        }
        .auto-style3 {
            width: 204px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>PERSONEL VERİ GÜNCELLEME FORMU</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">Personel Adı:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="auto-style4" DataKeyNames="Pers_ID" DataSourceID="SqlDataSource2" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <EditRowStyle BackColor="#999999" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pers_ID" />
                            <asp:BoundField DataField="Pers_Adi" HeaderText="Pers_Adi" SortExpression="Pers_Adi" />
                            <asp:BoundField DataField="Pers_Soyadi" HeaderText="Pers_Soyadi" SortExpression="Pers_Soyadi" />
                            <asp:BoundField DataField="Pers_Isim" HeaderText="Pers_Isim" ReadOnly="True" SortExpression="Pers_Isim" />
                            <asp:BoundField DataField="Pers_DTarihi" HeaderText="Pers_DTarihi" SortExpression="Pers_DTarihi" />
                            <asp:BoundField DataField="Pers_Ise_Giris_Tarihi" HeaderText="Pers_Ise_Giris_Tarihi" SortExpression="Pers_Ise_Giris_Tarihi" />
                            <asp:BoundField DataField="Pers_Isten_Cikis_Tarihi" HeaderText="Pers_Isten_Cikis_Tarihi" SortExpression="Pers_Isten_Cikis_Tarihi" />
                            <asp:BoundField DataField="Pers_Tel" HeaderText="Pers_Tel" SortExpression="Pers_Tel" />
                            <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep" />
                            <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email" />
                            <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID" />
                            <asp:BoundField DataField="Pers_Maas" HeaderText="Pers_Maas" SortExpression="Pers_Maas" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT       Pers_ID, Pers_Adi, Pers_Soyadi, Pers_Isim, Pers_DTarihi, Pers_Ise_Giris_Tarihi, Pers_Isten_Cikis_Tarihi, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Pers_Maas FROM tbl_Personeller WHERE        (Pers_ID = @Pers_ID)" UpdateCommand="UPDATE tbl_Personeller SET Pers_Adi = @Pers_Adi, Pers_Soyadi = @Pers_Soyadi, Pers_DTarihi = @Pers_DTarihi, Pers_Ise_Giris_Tarihi = @Pers_Ise_Giris_Tarihi, Pers_Isten_Cikis_Tarihi = @Pers_Isten_Cikis_Tarihi, Pers_Tel = @Pers_Tel, Pers_Cep = @Pers_Cep, Pers_Email = @Pers_Email, Pers_Maas = @Pers_Maas WHERE (Pers_ID = @Pers_ID)" DeleteCommand="DELETE FROM [tbl_Personeller] WHERE [Pers_ID] = @Pers_ID" InsertCommand="INSERT INTO tbl_Personeller(Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Ise_Giris_Tarihi, Pers_Isten_Cikis_Tarihi, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Pers_Maas) VALUES (@Pers_Adi,@ Pers_Soyadi, @Pers_DTarihi, @Pers_Ise_Giris_Tarihi, @Pers_Isten_Cikis_Tarihi, @Pers_Tel, @Pers_Cep, @Pers_Email, @Bolum_ID, @Pers_Maas) ">
                        <DeleteParameters>
                            <asp:Parameter Name="Pers_ID" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Pers_Adi" />
                            <asp:Parameter Name="Pers_Soyadi"/>
                            <asp:Parameter Name="Pers_DTarihi" />
                            <asp:Parameter Name="Pers_Ise_Giris_Tarihi" />
                            <asp:Parameter Name="Pers_Isten_Cikis_Tarihi" />
                            <asp:Parameter Name="Pers_Tel" />
                            <asp:Parameter Name="Pers_Cep" />
                            <asp:Parameter Name="Pers_Email" />
                            <asp:Parameter Name="Bolum_ID" />
                            <asp:Parameter Name="Pers_Maas" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Pers_Adi" Type="String"/>
                            <asp:Parameter Name="Pers_Soyadi" Type="String"/>
                            <asp:Parameter Name="Pers_DTarihi" Type="DateTime"/>
                            <asp:Parameter Name="Pers_Ise_Giris_Tarihi" Type="DateTime"/>
                            <asp:Parameter Name="Pers_Isten_Cikis_Tarihi" Type="DateTime"/>
                            <asp:Parameter Name="Pers_Tel" Type="String"/>
                            <asp:Parameter Name="Pers_Cep" Type="String"/>
                            <asp:Parameter Name="Pers_Email" Type="String" />
                            <asp:Parameter Name="Pers_Maas" Type="Double"/>
                            <asp:Parameter Name="Pers_ID" Type="Int32"/>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" OnClientClick="window.close();" Text="Formu Kapat" Width="168px" style="cursor: pointer;"/>
                    </td>
            </tr>
            </table>
    </form>
</body>
</html>
