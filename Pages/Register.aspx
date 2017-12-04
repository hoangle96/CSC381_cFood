<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Pages_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <br /> 
        <br />
        <br /> 
        <br />

        <h2>Register: </h2>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]" DeleteCommand="DELETE FROM [Customer] WHERE [customerid] = @customerid" InsertCommand="INSERT INTO [Customer] ([first], [last], [email], [password], [address], [phone]) VALUES (@first, @last, @email, @password, @address, @phone)" UpdateCommand="UPDATE [Customer] SET [first] = @first, [last] = @last, [email] = @email, [password] = @password, [address] = @address, [phone] = @phone WHERE [customerid] = @customerid">
            <DeleteParameters>
                <asp:Parameter Name="customerid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="first" Type="String" />
                <asp:Parameter Name="last" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="first" Type="String" />
                <asp:Parameter Name="last" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="customerid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" DefaultMode="Insert" AutoGenerateRows="False" DataKeyNames="customerid" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="50px" Width="125px">
            <Fields>
                <asp:TemplateField HeaderText="First Name:" SortExpression="first">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("first") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("first") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="TextBox1" runat="server" ErrorMessage="Please enter your first name"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("first") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name:" SortExpression="last">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("last") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("last") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="TextBox2" runat="server" ErrorMessage="Please enter your last name"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("last") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email:" SortExpression="email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="TextBox3" runat="server" ErrorMessage="Please enter your email"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password:" SortExpression="password">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="TextBox6" runat="server" ErrorMessage="Please enter a password"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address:" SortExpression="address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="TextBox4" runat="server" ErrorMessage="Please enter your address"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone:" SortExpression="phone">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="TextBox5" runat="server" ErrorMessage="Please enter your phone"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField NewText="Register" ShowInsertButton="True" InsertText="Register" />
            </Fields>
        </asp:DetailsView>
        <br />
        <br />
    </form>

</asp:Content>

