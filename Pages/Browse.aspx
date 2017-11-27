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
<<<<<<< HEAD
    <form id="form1" runat="server">
        <br />
        <br />
        <h3>Looking for specific cookbooks?</h3>

        <table class="w-100">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="357px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <h2>- or -</h2>
        <h3>Search by criteria:</h3>

        

    
        <table class="w-100">
            <tr>
                <td>&nbsp;</td>
                <td>ingredients:</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bookid" DataSourceID="SqlDataSource2" EnableModelValidation="True">
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

    
    </form>
    
=======
>>>>>>> 78311d5c923b3190d29e47207fdb077abd548477
</asp:Content>

