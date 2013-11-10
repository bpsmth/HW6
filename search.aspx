<%@ Page Title="" Language="VB" MasterPageFile="~/rostersMP.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <p>
        <% If Not IsPostBack Then%> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:playersCS %>" SelectCommand="SELECT * FROM [rosters]"></asp:SqlDataSource>
       Search roster:
        <asp:TextBox ID="searchTB" runat="server"></asp:TextBox>
        <br />

        <% Else%>Search for another player:
            <asp:TextBox ID="search2TB" runat="server"></asp:TextBox>


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="playerId" DataSourceID="SqlDataSource1" GridLines="None" CssClass="Grids">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
                    <asp:BoundField DataField="height" HeaderText="Height" SortExpression="height" />
                    <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
                    <asp:BoundField DataField="college" HeaderText="College" SortExpression="college" />
                    <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                    <asp:BoundField DataField="yearsInLeague" HeaderText="Years in NBA" SortExpression="yearsInLeague" />
                    <asp:BoundField DataField="number" HeaderText="Number" SortExpression="number" />
                     <asp:HyperLinkField DataNavigateUrlFields="playerId" DataNavigateUrlFormatString="player.aspx?playerId={0}" Text="Select" />
                </Columns>
            </asp:GridView>
        <% End If %> 
    </p>
    <p>
    </p>
    <p>
    </p>



</asp:Content>

