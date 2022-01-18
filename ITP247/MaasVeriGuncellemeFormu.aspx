<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MaasVeriGuncellemeFormu.aspx.cs" Inherits="ITP247.MaasVeriGirisFormu" %>

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
            font-size: xx-large;
            color: #339966;
        }
        .auto-style3 {
            width: 80px;
        }
        .auto-style4 {
            width: 80px;
            height: 34px;
        }
        .auto-style5 {
            height: 34px;
        }
        .auto-style7 {
            margin-top: 1px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            width: 80px;
            text-align: center;
        }
    </style>
</head>
<body style="display: flex; justify-content: center;">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Maaş Veri Güncelleme Formu</strong></td>
            </tr>
            <tr>
                <td class="auto-style4">Bölüm Seçiniz:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" Height="25px" Width="105px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Pers_ID" Height="16px" Width="284px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Pers_ID" HeaderText="PersID" InsertVisible="False" ReadOnly="True" SortExpression="Pers_ID" />
                            <asp:BoundField DataField="Pers_Isim" HeaderText="Personel" ReadOnly="True" SortExpression="Pers_Isim" />
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
                </td>
                <td>
                    <div class="auto-style8">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Maas_ID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="63px" Width="225px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Maas_ID" HeaderText="Maas_ID" InsertVisible="False" ReadOnly="True" SortExpression="Maas_ID" />
                            <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" SortExpression="Pers_ID" />
                            <asp:BoundField DataField="Maas_Odeme_Tarihi" HeaderText="Maas_Odeme_Tarihi" SortExpression="Maas_Odeme_Tarihi" />
                            <asp:BoundField DataField="Maas_Tutari" HeaderText="Maas_Tutari" SortExpression="Maas_Tutari" />
                            <asp:BoundField DataField="Maas_Komisyon" HeaderText="Maas_Komisyon" SortExpression="Maas_Komisyon" />
                            <asp:BoundField DataField="Ay_ID" HeaderText="Ay_ID" SortExpression="Ay_ID" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                    </div>
                    <div class="auto-style8">
                    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Maas_ID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" CssClass="auto-style7" Height="91px" Width="483px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="Maas_ID" HeaderText="Maas_ID" InsertVisible="False" ReadOnly="True" SortExpression="Maas_ID" />
                            <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" SortExpression="Pers_ID"/>
                            <asp:BoundField DataField="Maas_Odeme_Tarihi" HeaderText="Maas_Odeme_Tarihi" SortExpression="Maas_Odeme_Tarihi" />
                            <asp:BoundField DataField="Maas_Tutari" HeaderText="Maas_Tutari" SortExpression="Maas_Tutari" />
                            <asp:BoundField DataField="Maas_Komisyon" HeaderText="Maas_Komisyon" SortExpression="Maas_Komisyon" />
                            <asp:BoundField DataField="Ay_ID" HeaderText="Ay_ID" SortExpression="Ay_ID" />
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
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" OnClientClick="window.close();" Text="Formu Kapat" Width="168px" style="cursor: pointer;"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT Pers_ID, Pers_Isim FROM tbl_Personeller WHERE (Pers_ID = @Pers_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Maas_ID], [Pers_ID], [Maas_Odeme_Tarihi], [Maas_Tutari], [Maas_Komisyon], [Ay_ID] FROM [tbl_PersonelMaaslari] WHERE Pers_ID = @Pers_ID" UpdateCommand="UPDATE tbl_PersonelMaaslari
SET Maas_Odeme_Tarihi = @Maas_Odeme_Tarihi, Maas_Tutari = @Maas_Tutari, Maas_Komisyon = @Maas_Komisyon, Ay_ID = @Ay_ID
WHERE Maas_ID = @Maas_ID" DeleteCommand="DELETE FROM tbl_PersonelMaaslari
WHERE Maas_ID = @Maas_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Maas_ID" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Pers_ID" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Maas_Odeme_Tarihi" type="DateTime"/>
                    <asp:Parameter Name="Maas_Tutari" type="Decimal"/>
                    <asp:Parameter Name="Maas_Komisyon" type="Decimal"/>
                    <asp:Parameter Name="Ay_ID" type="Int32"/>
                    <asp:Parameter Name="Maas_ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
