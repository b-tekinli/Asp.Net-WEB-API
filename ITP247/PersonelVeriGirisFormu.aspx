<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonelVeriGirisFormu.aspx.cs" Inherits="ITP247.PersonelVeriGirisFormu" %>

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
        }
        .auto-style3 {
            width: 296px;
        }
        .auto-style4 {
            width: 296px;
            height: 41px;
        }
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            width: 296px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="color: forestgreen;"><strong>Personel Veri Giriş Formu</strong></td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Adı:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="#FF6600">Adınızı giriniz...</asp:RequiredFieldValidator>
                </td>
                <td>Soyadı:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Cinsiyeti:</td>
                <td class="auto-style5">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="1">Erkek</asp:ListItem>
                        <asp:ListItem Value="0">Kadın</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style5">DTarihi:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Ünvanı:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Unvan" DataValueField="Kategori_ID">
                    </asp:DropDownList>
                </td>
                <td>Bölümü:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Bolum_Adi" DataValueField="Bolum_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">İşe Giriş Tarihi:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Checked="True" Text="Personel Aktif Mi?" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Cep Tel:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Adresi:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="16px" Width="359px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">İlçesi:</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Unvan" DataValueField="Kategori_ID">
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">İl:</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Bolum_Adi" DataValueField="Bolum_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Label ID="Label2" runat="server" ForeColor="#FF6600" Text="Sonuç Mesajı..."></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="#339966" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="36px" OnClick="Button2_Click" Text="Verileri Sakla" Width="174px" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" OnClientClick="window.close();" Text="Formu Kapat" Width="168px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Pers_ID], [Pers_Kenti] FROM [tbl_Personeller]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Unvan], [Kategori_ID] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
