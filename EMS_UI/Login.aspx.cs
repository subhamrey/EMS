using EMS_DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS_UI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            bool results = DAL.Login(UserName.Text, Password.Text);

            if (results)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Employee Login successfull.'); window.location='Default.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Failed to Login');", true);
            }
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}