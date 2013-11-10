<%@ Page Title="" Language="VB" MasterPageFile="~/rostersMP.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="conLbl" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="fromLbl" runat="server" Text="Email Address: "></asp:Label>
    <asp:TextBox ID="fromTB" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="messageLbl" runat="server" Text="Message: "></asp:Label>
    <asp:TextBox ID="messageTB" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Button ID="submitBTN" runat="server" Text="Send" />


</asp:Content>

