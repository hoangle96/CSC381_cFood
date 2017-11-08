<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerifyDatabase.aspx.cs" Inherits="Pages_VerifyDatabase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bookid" DataSourceID="SqlDataSource1" EnableModelValidation="True">
    <Columns>
        <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="bookid" HeaderText="bookid" ReadOnly="True" SortExpression="bookid" />
        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
        <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CookBooks]" DeleteCommand="DELETE FROM [CookBooks] WHERE [bookid] = @bookid" InsertCommand="INSERT INTO [CookBooks] ([bookid], [title], [author], [genre], [price], [ISBN]) VALUES (@bookid, @title, @author, @genre, @price, @ISBN)" UpdateCommand="UPDATE [CookBooks] SET [title] = @title, [author] = @author, [genre] = @genre, [price] = @price, [ISBN] = @ISBN WHERE [bookid] = @bookid">
    <DeleteParameters>
        <asp:Parameter Name="bookid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="bookid" Type="Int32" />
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="author" Type="String" />
        <asp:Parameter Name="genre" Type="String" />
        <asp:Parameter Name="price" Type="Int32" />
        <asp:Parameter Name="ISBN" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="author" Type="String" />
        <asp:Parameter Name="genre" Type="String" />
        <asp:Parameter Name="price" Type="Int32" />
        <asp:Parameter Name="ISBN" Type="Int32" />
        <asp:Parameter Name="bookid" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

