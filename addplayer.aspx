<%@ Page Title="" Language="VB" MasterPageFile="~/rostersMP.master" AutoEventWireup="false" CodeFile="addplayer.aspx.vb" Inherits="addplayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
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
            DefaultMode="Insert">
<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fheader"></FieldHeaderStyle>
            <Fields>
                <asp:TemplateField HeaderText="Name:" SortExpression="name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="nameTB" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTB" 
                ErrorMessage="<br/> Name is required." Display="Dynamic">
              </asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>

                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Position:" SortExpression="position">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("position") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="posTB" runat="server" Text='<%# Bind("position") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="posTB" 
                ErrorMessage="<br/> Position is required." Display="Dynamic">
              </asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("position") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="college" HeaderText="College:" SortExpression="college" />
                <asp:BoundField DataField="number" HeaderText="Number:" SortExpression="number" />
                <asp:BoundField DataField="height" HeaderText="Height:" SortExpression="height" />
                <asp:BoundField DataField="weight" HeaderText="Weight:" SortExpression="weight" />
                <asp:BoundField DataField="age" HeaderText="Age:" SortExpression="age" />
                <asp:BoundField DataField="yearsInLeague" HeaderText="Years in NBA:" SortExpression="yearsInLeague" />
                <asp:CommandField ShowInsertButton="True" ButtonType="Button" InsertText="Add Player" ShowCancelButton="False" />
            </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:playersCS %>" DeleteCommand="DELETE FROM [rosters] WHERE [playerId] = @playerId" InsertCommand="INSERT INTO [rosters] ([name], [position], [height], [weight], [college], [age], [yearsInLeague], [number]) VALUES (@name, @position, @height, @weight, @college, @age, @yearsInLeague, @number)" SelectCommand="SELECT * FROM [rosters]" UpdateCommand="UPDATE [rosters] SET [name] = @name, [position] = @position, [height] = @height, [weight] = @weight, [college] = @college, [age] = @age, [yearsInLeague] = @yearsInLeague, [number] = @number WHERE [playerId] = @playerId">
            <DeleteParameters>
                <asp:Parameter Name="playerId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="height" Type="String" />
                <asp:Parameter Name="weight" Type="Int32" />
                <asp:Parameter Name="college" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="yearsInLeague" Type="Int32" />
                <asp:Parameter Name="number" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="height" Type="String" />
                <asp:Parameter Name="weight" Type="Int32" />
                <asp:Parameter Name="college" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="yearsInLeague" Type="Int32" />
                <asp:Parameter Name="number" Type="Int32" />
                <asp:Parameter Name="playerId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

