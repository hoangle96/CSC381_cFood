<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Pages_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        table, thread, tr, th, td {
            border: none !important;
        }
    </style>
</asp:Content>


<asp:Content ID="Content_Shopping" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <div class="row" style="height: 100px;"></div>
    <div class="row">
        <div class="col-1">
            <button type="button" class="btn btn-outline-secondary">
                <i class="fa fa-chevron-left" aria-hidden="true"></i>
            </button>
        </div>
        <div class="col">
            <div class="page-header">
                <h1>Your Shopping Cart</h1>
            </div>
        </div>
    </div>
    <hr />
    <div class="row">
        <form id="form1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CookBooks]" DeleteCommand="DELETE FROM [CookBooks] WHERE [bookid] = @bookid" InsertCommand="INSERT INTO [CookBooks] ([bookid], [title], [author], [genre], [price], [ISBN], [origin], [calories], [course], [ingredient]) VALUES (@bookid, @title, @author, @genre, @price, @ISBN, @origin, @calories, @course, @ingredient)" UpdateCommand="UPDATE [CookBooks] SET [title] = @title, [author] = @author, [genre] = @genre, [price] = @price, [ISBN] = @ISBN, [origin] = @origin, [calories] = @calories, [course] = @course, [ingredient] = @ingredient WHERE [bookid] = @bookid">
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bookid" DataSourceID="SqlDataSource1" EnableModelValidation="True" CssClass="table table-striped">
                <AlternatingRowStyle BorderStyle="None" BorderWidth="0px" />
                <Columns>
                    <asp:BoundField DataField="bookid" HeaderText="Book ID" ReadOnly="True" SortExpression="bookid" />
                    <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                    <asp:BoundField DataField="author" HeaderText="Author" SortExpression="author" />
                    <asp:BoundField DataField="genre" HeaderText="Genre" SortExpression="genre" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                    <asp:BoundField DataField="origin" HeaderText="Origin" SortExpression="origin" />
                    <asp:BoundField DataField="calories" HeaderText="Calories" SortExpression="calories" />
                    <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
                    <asp:BoundField DataField="ingredient" HeaderText="Ingredient" SortExpression="ingredient" />
                    <asp:CommandField ButtonType="Button" DeleteText="Remove" HeaderText="Action" ShowDeleteButton="True">
                        <ControlStyle CssClass="btn btn-outline-danger btn-lg" />
                    </asp:CommandField>
                </Columns>
                <HeaderStyle CssClass="thead-light" />
            </asp:GridView>
        </form>
    </div>
    <div class="row">
        <div class="col"></div>
        <div class="col-6">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">Coupon:</span>
                <input type="text" class="form-control" aria-describedby="basic-addon1">
                <span class="input-group-btn">
                    <button class="btn btn-outline-primary" type="button">Apply</button>
                </span>
            </div>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col"></div>
        <div class="col-6">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon2">Total Price:</span>
                <input type="text" class="form-control" aria-describedby="basic-addon2" readonly="readonly" value="$45.00">
                <span class="input-group-btn">
                    <button class="btn btn-primary btn-lg" type="button">Checkout</button>
                </span>
            </div>
        </div>
    </div>
    <div class="row" style="height: 100px;"></div>
</asp:Content>
