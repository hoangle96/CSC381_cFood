using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

<<<<<<< HEAD
   
=======
    protected void btnAddShoes_Click(object sender, EventArgs e)
    {
        // Add product 1 to the shopping cart
        ShoppingCart.Instance.AddItem(1);

        // Redirect the user to view their shopping cart
        Response.Redirect("ViewCart.aspx");
    }

    protected void btnAddShirt_Click(object sender, EventArgs e)
    {
        ShoppingCart.Instance.AddItem(2);
        Response.Redirect("ViewCart.aspx");
    }

    protected void btnAddPants_Click(object sender, EventArgs e)
    {
        ShoppingCart.Instance.AddItem(3);
        Response.Redirect("ViewCart.aspx");
    }
>>>>>>> 4f79740b27230c946a05ffe2b8c7b58e3a21a1be
}