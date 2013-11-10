<%@ Page Title="" Language="VB" MasterPageFile="~/rostersMP.master" AutoEventWireup="false" CodeFile="player.aspx.vb" Inherits="player" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView 
        ID="DetailsView1" 
        runat="server" 
        AutoGenerateRows="False" 
        DataKeyNames="playerId" 
        DataSourceID="SqlDataSource1" 
        Gridlines="None"
        CssClass="details"
        HeaderStyle-CssClass="header"
        FieldHeaderStyle-CssClass="fheader"
        CommandRowStyle-CssClass="command" 
        >
<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fheader"></FieldHeaderStyle>
        <Fields>
            <asp:TemplateField HeaderText="Name:" SortExpression="name">
                <EditItemTemplate>
                    <asp:TextBox ID="nameTB" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTB" 
                ErrorMessage="<br/> Name is required." Display="Dynamic">
              </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="nameTB" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                   
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Position:" SortExpression="position">
                <EditItemTemplate>
                    <asp:TextBox ID="posTB" runat="server" Text='<%# Bind("position") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="posTB" 
                ErrorMessage="<br/> Position is required." Display="Dynamic">
              </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="posTB" runat="server" Text='<%# Bind("position") %>'></asp:TextBox>
                    
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("position") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="number" HeaderText="Number:" SortExpression="number" />
            <asp:BoundField DataField="college" HeaderText="College:" SortExpression="college" />
            <asp:BoundField DataField="height" HeaderText="Height:" SortExpression="height" />
            <asp:BoundField DataField="weight" HeaderText="Weight:" SortExpression="weight" />
            <asp:BoundField DataField="age" HeaderText="Age:" SortExpression="age" />
            <asp:BoundField DataField="yearsInLeague" HeaderText="Years in NBA:" SortExpression="yearsInLeague" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:playersCS %>" SelectCommand="SELECT [playerId], [position], [name], [height], [college], [weight], [age], [yearsInLeague], [number] FROM [rosters] WHERE ([playerId] = @playerId)" DeleteCommand="DELETE FROM [rosters] WHERE [playerId] = @playerId" InsertCommand="INSERT INTO [rosters] ([position], [name], [height], [college], [weight], [age], [yearsInLeague], [number]) VALUES (@position, @name, @height, @college, @weight, @age, @yearsInLeague, @number)" UpdateCommand="UPDATE [rosters] SET [position] = @position, [name] = @name, [height] = @height, [college] = @college, [weight] = @weight, [age] = @age, [yearsInLeague] = @yearsInLeague, [number] = @number WHERE [playerId] = @playerId">
        <DeleteParameters>
            <asp:Parameter Name="playerId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="height" Type="String" />
            <asp:Parameter Name="college" Type="String" />
            <asp:Parameter Name="weight" Type="Int32" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="yearsInLeague" Type="Int32" />
            <asp:Parameter Name="number" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="playerId" QueryStringField="playerId" Type="Int32" DefaultValue="1" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="height" Type="String" />
            <asp:Parameter Name="college" Type="String" />
            <asp:Parameter Name="weight" Type="Int32" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="yearsInLeague" Type="Int32" />
            <asp:Parameter Name="number" Type="Int32" />
            <asp:Parameter Name="playerId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <p>
    </p>
</asp:Content>

