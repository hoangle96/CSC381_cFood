<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Browse.aspx.cs" Inherits="Pages_Browse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 375px;
        }
        .auto-style2 {
            width: 325px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
        <h2>Looking for specific cookbooks?</h2>
        
        <h4>Search by criteria:</h4>
    
        <table class="w-100">
            <tr>
                <td>&nbsp;</td>
                <td>Ingredients:</td>
                <td>&nbsp;</td>
                <td>Country of Origin</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ingredient" DataValueField="ingredient" AutoPostBack="True" >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [ingredient] FROM [CookBooks]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [origin] FROM [CookBooks]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="origin" DataValueField="origin" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bookid" DataSourceID="SqlDataSource2" EnableModelValidation="True" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="bookid" HeaderText="bookid" ReadOnly="True" SortExpression="bookid" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="origin" HeaderText="origin" SortExpression="origin" />
                <asp:BoundField DataField="calories" HeaderText="calories" SortExpression="calories" />
                <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                <asp:BoundField DataField="ingredient" HeaderText="ingredient" SortExpression="ingredient" />
                <asp:CommandField SelectText="Add to Cart" ShowSelectButton="True" ButtonType="Button" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CookBooks] WHERE ([ingredient] = @ingredient)" DeleteCommand="DELETE FROM [CookBooks] WHERE [bookid] = @bookid" InsertCommand="INSERT INTO [CookBooks] ([bookid], [title], [author], [genre], [price], [ISBN], [origin], [calories], [course], [ingredient]) VALUES (@bookid, @title, @author, @genre, @price, @ISBN, @origin, @calories, @course, @ingredient)" UpdateCommand="UPDATE [CookBooks] SET [title] = @title, [author] = @author, [genre] = @genre, [price] = @price, [ISBN] = @ISBN, [origin] = @origin, [calories] = @calories, [course] = @course, [ingredient] = @ingredient WHERE [bookid] = @bookid">
            <DeleteParameters>
                <asp:Parameter Name="bookid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="bookid" Type="Int32" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="genre" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="origin" Type="String" />
                <asp:Parameter Name="calories" Type="Int32" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="ingredient" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="ingredient" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="genre" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="origin" Type="String" />
                <asp:Parameter Name="calories" Type="Int32" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="ingredient" Type="String" />
                <asp:Parameter Name="bookid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    
        <br />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CookBooks] WHERE ([origin] = @origin)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="origin" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bookid" DataSourceID="SqlDataSource4" EnableModelValidation="True" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="bookid" HeaderText="bookid" ReadOnly="True" SortExpression="bookid" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="origin" HeaderText="origin" SortExpression="origin" />
                <asp:BoundField DataField="calories" HeaderText="calories" SortExpression="calories" />
                <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                <asp:BoundField DataField="ingredient" HeaderText="ingredient" SortExpression="ingredient" />
                <asp:CommandField ButtonType="Button" SelectText="Add to Cart" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <br />

    
    </form>
    
</asp:Content>

