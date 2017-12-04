using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Pages_Browse : System.Web.UI.Page
{
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        // Send this value of id to your querystring to redirect to another page
        Response.Redirect("ShoppingCart.aspx");
    }
}