<%@ Page Title="" Language="VB" MasterPageFile="~/rostersMP.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





    <p>
        <asp:GridView 
            ID="GridView1" 
            runat="server" 
            AutoGenerateColumns="False" 
            DataKeyNames="playerId" 
            DataSourceID="SqlDataSource1" 
            GridLines="None"
            CssClass="Grids"
            >
            <Columns>
                <asp:BoundField DataField="number" HeaderText="Number" SortExpression="number" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
               
                <asp:HyperLinkField DataNavigateUrlFields="playerId" DataNavigateUrlFormatString="player.aspx?playerId={0}" Text="Select" />
               
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:playersCS %>" SelectCommand="SELECT [playerId], [name], [position], [height], [weight], [college], [age], [yearsInLeague], [number] FROM [rosters]"></asp:SqlDataSource>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>





</asp:Content>

