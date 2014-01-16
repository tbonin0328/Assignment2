using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Customer c = new Customer();

        try
        {
            c.LastName = txtLastName.Text;
            c.FirstName = txtFirstName.Text;
            c.Email = txtEmail.Text;
            c.Phone = txtPhone.Text;
            c.Password = txtPassword.Text;
            Session["newCustomer"] = c;
            Response.Redirect("Default2.aspx");
        }

        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }

    }
}