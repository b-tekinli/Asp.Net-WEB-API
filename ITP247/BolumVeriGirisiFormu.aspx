<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BolumVeriGirisiFormu.aspx.cs" Inherits="ITP247.BolumVeriGirisiFormu" %>

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
            color: #339933;
        }
        .auto-style3 {
            text-align: center;
            width: 448px;
        }
        #form1 {
            display: flex;
            justify-content: center;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            margin-top: 4px;
        }
        .auto-style6 {
            width: 448px;
        }
        .auto-style7 {
            width: 448px;
            height: 26px;
            margin-left: 40px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            color: #FF6600;
        }
        .auto-style10 {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Bölüm Veri Giriş Formu</strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Bolum_ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="678px" CssClass="auto-style4" Height="244px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="Bolum_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Bolum_ID" />
                                <asp:BoundField DataField="Bolum_Adi" HeaderText="Bölüm" SortExpression="Bolum_Adi" />
                                <asp:BoundField DataField="Bolum_Tel" HeaderText="Tel" SortExpression="Bolum_Tel" />
                                <asp:BoundField DataField="Pers_Isim" HeaderText="Müdür" ReadOnly="True" SortExpression="Pers_Isim" />
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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" BackColor="#339933" CssClass="auto-style5" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" Text="Veri Giriş Formunu Aç" Width="322px" OnClick="Button1_Click" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGirisFormu.aspx" />
                    <asp:Button ID="Button2" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" OnClientClick="window.close();" Text="Formu Kapat" Width="198px" OnClick="Button2_Click" CssClass="auto-style10"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Bölüm Adı:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Bölüm Tel:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text="Müdür:"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Pers_Isim" DataValueField="Pers_ID" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                    <asp:Button ID="Button3" runat="server" BackColor="#339966" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" Text="Verileri Kaydet" Width="213px" OnClick="Button3_Click" CssClass="auto-style10"/>
                        <asp:Label ID="lbl1" runat="server" Text="Label" Visible="False" CssClass="auto-style9"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT tbl_Bolumler.Bolum_ID, tbl_Bolumler.Bolum_Adi, tbl_Bolumler.Bolum_Tel, tbl_Personeller.Pers_Isim FROM tbl_Bolumler INNER JOIN tbl_Personeller ON tbl_Bolumler.Mudur_ID = tbl_Personeller.Pers_ID" DeleteCommand="DELETE FROM tbl_Bolumler WHERE Bolum_ID=@Bolum_ID" UpdateCommand="UPDATE tbl_Bolumler SET Bolum_Adi=@Bolum_Adi, Bolum_Tel=@Bolum_Tel WHERE Bolum_ID=@Bolum_ID" InsertCommand="INSERT INTO tbl_Bolumler (Bolum_Adi, Bolum_Tel, Mudur_ID) VALUES (@Bolum_Adi, @Bolum_Tel, @Mudur_ID)">
                            <DeleteParameters>
                                <asp:Parameter Name="Bolum_ID" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Bolum_Adi" />
                                <asp:Parameter Name="Bolum_Tel" />
                                <asp:Parameter Name="Mudur_ID" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Bolum_Adi" />
                                <asp:Parameter Name="Bolum_Tel" />
                                <asp:Parameter Name="Bolum_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
