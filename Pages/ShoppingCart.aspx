<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Pages_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>


<asp:Content ID="Content_Shopping" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <form id="form1" runat="server">


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
        <table class="table table-striped">
            <thead class="thead-light">
                <tr>
                    <th scope="col">Item
                        
                    </th>
                    <th scope="col">Details</th>
                    <th scope="col">Price</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">
                        <div class="card" style="width: 20rem;">
                            <img class="card-img-top" src="../Pictures/placeholder.png" alt="Book Cover">
                            <div class="card-body">
                                <p class="card-text">Book Title</p>
                                <p class="card-text">ISBN</p>
                            </div>
                        </div>
                    </th>
                    <td>
                        <p>Author Name</p>
                        <p>Genre</p>
                        <p>Specialty</p>
                    </td>
                    <td>
                        <p>$15.00</p>
                    </td>
                    <td>
                        <button type="button" class="btn btn-outline-danger btn-lg">Remove</button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <div class="card" style="width: 20rem;">
                            <img class="card-img-top" src="../Pictures/placeholder.png" alt="Book Cover">
                            <div class="card-body">
                                <p class="card-text">Book Title</p>
                                <p class="card-text">ISBN</p>
                            </div>
                        </div>
                    </th>
                    <td>
                        <p>Author Name</p>
                        <p>Genre</p>
                        <p>Specialty</p>
                    </td>
                    <td>
                        <p>$15.00</p>
                    </td>
                    <td>
                        <button type="button" class="btn btn-outline-danger btn-lg">Remove</button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <div class="card" style="width: 20rem;">
                            <img class="card-img-top" src="../Pictures/placeholder.png" alt="Book Cover">
                            <div class="card-body">
                                <p class="card-text">Book Title</p>
                                <p class="card-text">ISBN</p>
                            </div>
                        </div>
                    </th>
                    <td>
                        <p>Author Name</p>
                        <p>Genre</p>
                        <p>Specialty</p>
                    </td>
                    <td>
                        <p>$15.00</p>
                    </td>
                    <td>
                        <button type="button" class="btn btn-outline-danger btn-lg">Remove</button>
                    </td>
                </tr>
            </tbody>
        </table>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CookBooks]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bookid" DataSourceID="SqlDataSource1" EnableModelValidation="True">
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
    </form>
</asp:Content>
