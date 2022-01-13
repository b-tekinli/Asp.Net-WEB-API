<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ITP247.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        Ataşehir<br />
        Adıgüzel Meslek Yüksek Okulu<br />
        <abbr title="Telefon">Tel:</abbr>
        0 531 026 85 68
    </address>

    <address>
        <strong>Destek:</strong>   <a href="mailto:beyza.tekinli.bt@gmail.com">beyza.tekinli.bt@gmail.com</a><br />
        <!-- <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a> -->
    </address>
</asp:Content>
