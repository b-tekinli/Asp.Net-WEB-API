<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="PersonelVeriGirisWizard.aspx.cs" Inherits="ITP247.PersonelVeriGirisWizard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Personel Veri Giriş Sihirbazı</title>
    <style type="text/css">

        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 253px;
        }
        .auto-style5 {
            width: 253px;
            height: 33px;
        }
        .auto-style6 {
            height: 33px;
        }
        .auto-style8 {
            width: 209px;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style12 {
            width: 95px;
        }
        .auto-style14 {
            color: #FF0000;
        }
        .auto-style15 {
            width: 95px;
            height: 26px;
        }
        .auto-style16 {
            height: 26px;
        }
        .auto-style17 {
            color: #FF3300;
        }
        </style>
    </head>
<body>
<form id="form1" runat="server">
<div>
<table class="auto-style3">
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style10">
                    <strong>Personel&nbsp; Veri Giriş Sihirbazı</strong></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" 
                                        InsertCommand="INSERT INTO tbl_Personeller(Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Ise_Giris_Tarihi, Pers_Adresi, Pers_Kenti, Pers_Ili, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Pers_Maas, Unvan_ID, Cinsiyet_ID) VALUES (@Pers_Adi, @Pers_Soyadi, @Pers_DTarihi, @Pers_Ise_Giris_Tarihi, @Pers_Adresi, @Pers_Kenti, @Pers_Ili, @Pers_Tel, @Pers_Cep, @Pers_Email, @Bolum_ID, @Pers_Maas, @Unvan_ID, @Cinsiyet_ID)" 
                                        SelectCommand="SELECT Pers_ID, Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Ise_Giris_Tarihi, Pers_Tel, Pers_Cep, Pers_Email FROM tbl_Personeller">
                        <InsertParameters>
                            <asp:Parameter Name="Pers_Adi"  Type ="String"/>
                            <asp:Parameter Name="Pers_Soyadi" Type ="String"/>
                            <asp:Parameter Name="Pers_DTarihi" Type="DateTime"/>
                            <asp:Parameter Name="Pers_Ise_Giris_Tarihi"/>
                            <asp:Parameter Name="Pers_Adresi" Type ="String"/>
                            <asp:Parameter Name="Pers_Kenti" Type ="String"/>
                            <asp:Parameter Name="Pers_Ili" Type ="String"/>
                            <asp:Parameter Name="Pers_Tel"  Type ="String"/>
                            <asp:Parameter Name="Pers_Cep" Type ="String"/>
                            <asp:Parameter Name="Pers_Email" Type ="String"/>
                            <asp:Parameter Name="Bolum_ID" Type="Int32"/>
                            <asp:Parameter Name="Pers_Maas" Type="Decimal"/>
                            <asp:Parameter Name="Unvan_ID" Type="Int32"/>
                            <asp:Parameter Name="Cinsiyet_ID" Type="Int32"/>
                        </InsertParameters>
                    </asp:SqlDataSource>
                    </td>
                <td class="auto-style6">
                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="4" BackColor="#F7F6F3" BorderColor="#99FF99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" HeaderText="Personel Veri Giriş Formu" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" Width="542px" Height="314px" CssClass="auto-style11">
                        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                        <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                        <StartNavigationTemplate>
                            <asp:Button ID="StartNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Sonraki" />
                        </StartNavigationTemplate>
                        <StepNavigationTemplate>
                            <asp:Button ID="StepPreviousButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Önceki" />
                            <asp:Button ID="StepNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Sonraki" />
                        </StepNavigationTemplate>
                        <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                        <WizardSteps>
                            <asp:WizardStep runat="server" title="Kişisel Veriler">
                                    <a id="Wizard1_SideBarContainer_SideBarList_SideBarButton_0" "" "" "" ,="" ,="" ,="" false,="" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(" style="display:inline-block;border-width:0px;font-family:Verdana;" true))"="" true,="" wizard1$sidebarcontainer$sidebarlist$ctl00$sidebarbutton",="" class="auto-style17">Kişisel Veriler</a>  
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" title="İletişim Verileri">
                                <table class="auto-style3">
                                <tr>
                                    <td class="auto-style10">Tel:</td>
                                    <td class="auto-style8"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">Cep:</td>
                                    <td class="auto-style8"><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
           
                                </tr>
                                <tr>
                                    <td class="auto-style10">Email:</td>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">Bölümü:</td>
                                    <td class="auto-style8">
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" Height="16px" Width="132px">
                                        </asp:DropDownList>
                                    </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Adres Verileri">
                                <table class="auto-style3">
                                    <tr>
                                        <td class="auto-style12">Adres</td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">Kenti</td>
                                        <td class="auto-style16">
                                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Kent_Adi" DataValueField="Kent_Adi" Height="16px" Width="132px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">İli</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Il_Adi" DataValueField="Il_Adi" Height="16px" Width="132px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Onay">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                <br />
                                <br />
                                <br />
                                Tüm Veri Girişleri doğruysa Son butonuna basınız...
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" StepType="Complete" Title="Son">
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Kategori_ID], [Unvan] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                    </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT Kent_Adi FROM tbl_Kategoriler WHERE (NOT (Kent_Adi IS NULL))"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT Il_Adi FROM tbl_Kategoriler WHERE (NOT (Il_Adi IS NULL)) ORDER BY Il_Adi"></asp:SqlDataSource>
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                    </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Sonuç mesajı..." CssClass="auto-style14" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="37px" OnClientClick="window.close();" Text="Formu Kapat" Width="168px" style="cursor: pointer;"/>
                </td>
            </tr>
</table>
</div>
</form>
</body>
</html>
