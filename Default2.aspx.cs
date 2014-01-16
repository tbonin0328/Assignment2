using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["newCustomer"] != null)
        {
            Customer c = (Customer)Session["newCustomer"];
            txtFirstName.Text = c.FirstName;
            txtLastName.Text = c.LastName;
            txtEmail.Text = c.Email;
            txtPhone.Text = c.Phone;
            txtPassword.Text = c.Password;
            txtConfirm.Text = c.Password;
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }


    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx?lastname="+ txtLastName.Text + "&Firstname=" + txtFirstName.Text);
    }
}