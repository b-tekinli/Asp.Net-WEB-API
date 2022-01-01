<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersoneleGoreMaaslarRaporu.aspx.cs" Inherits="ITP247.PersoneleGoreMaaslarRaporu" %>

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
                <td class="auto-style2" style="color: forestgreen;" colspan="2"><strong>Personele Göre Maaşlar Raporu</strong></td>
            </tr>
            <tr>
                <td>Personel Adı:
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Pers_Isim" DataValueField="Pers_ID" Height="16px" Width="145px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Pers_ID">
                        <Columns>
                            <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" ReadOnly="True" SortExpression="Pers_ID" />
                            <asp:BoundField DataField="Pers_Isim" HeaderText="Pers_Isim" ReadOnly="True" SortExpression="Pers_Isim" />
                            <asp:BoundField DataField="Unvan" HeaderText="Unvan" SortExpression="Unvan" />
                            <asp:BoundField DataField="Maas_Yili" HeaderText="Maas_Yili" ReadOnly="True" SortExpression="Maas_Yili" />
                            <asp:BoundField DataField="Maas_Tutari" HeaderText="Maas_Tutari" SortExpression="Maas_Tutari" />
                            <asp:BoundField DataField="Maas_Komisyon" HeaderText="Maas_Komisyon" SortExpression="Maas_Komisyon" />
                            <asp:BoundField DataField="Maas_Toplam" HeaderText="Maas_Toplam" ReadOnly="True" SortExpression="Maas_Toplam" />
                            <asp:BoundField DataField="Ay_Adi" HeaderText="Ay_Adi" SortExpression="Ay_Adi" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT Pers_ID, Pers_Isim, Unvan, Maas_Yili, Maas_Tutari, Maas_Komisyon, Maas_Toplam, Ay_Adi FROM vw_PersonelAylikMaaslari WHERE (Pers_ID = @Pers_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" />
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
