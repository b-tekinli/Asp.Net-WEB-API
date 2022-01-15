<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MaasVeriGirisFormu.aspx.cs" Inherits="ITP247.MaasVeriGirisFormu1" %>

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
            color: #339966;
            background-color: #FFFFFF;
            font-size: larger;
        }
        .auto-style4 {
            width: 400px;
        }
        .auto-style5 {
            width: 400px;
            height: 27px;
            font-size: large;
        }
        .auto-style6 {
            height: 27px;
        }
        .auto-style7 {
            width: 400px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="display: flex; justify-content: center;">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong><span class="auto-style3">Personel Maaşları Veri Giriş Formu</span></strong></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Pers Adı:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID" Width="110px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Ödeme Tarihi:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Maaş Tutarı:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Komisyon Tutarı:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" BackColor="#339966" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="36px" OnClick="Button2_Click" Text="Verileri Sakla" Width="174px" style="cursor: pointer;" />
                    </td>
                    <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" OnClientClick="window.close();" Text="Formu Kapat" Width="168px" style="cursor: pointer;"/>
                        <asp:Label ID="Label1" runat="server" ForeColor="#FF6600" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT Pers_ID, Pers_Isim FROM tbl_Personeller" InsertCommand="INSERT INTO tbl_Personeller (Pers_ID, Pers_Isim) VALUES (@Pers_ID, @Pers_Isim)">
                            <InsertParameters>
                                <asp:Parameter Name="Pers_ID" />
                                <asp:Parameter Name="Pers_Isim" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_PersonelMaaslari (Maas_Odeme_Tarihi, Maas_Tutari, Maas_Komisyon)
VALUES (@Maas_Odeme_Tarihi, @Maas_Tutari, @Maas_Komisyon)" SelectCommand="SELECT Maas_ID, Pers_ID, Maas_Odeme_Tarihi, Maas_Tutari, Maas_Komisyon, Maas_Toplam, Ay_ID, Maas_Yili FROM tbl_PersonelMaaslari" UpdateCommand="UPDATE tbl_PersonelMaaslari
SET Maas_Tutari =@Maas_Tutari, Maas_Komisyon=@Maas_Komisyon,Maas_Odeme_Tarihi=@Maas_Odeme_Tarihi
WHERE PersonelMaaslari=@PersonelMaaslari">
                            <InsertParameters>
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
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
