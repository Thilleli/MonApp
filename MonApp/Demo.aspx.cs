using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MonApp
{
    public partial class Formulaire : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(txtName.Text + "</br>");

            Response.Write(lstLocation.SelectedItem.Text + "</br>");

            Session["Name"] = txtName.Text;

            Response.Write(Session["Name"]);

            lblName.Visible = false;
            txtName.Visible = false;
            lstLocation.Visible = false;
            chkC.Visible = false;
            chkASP.Visible = false;
            rdFemale.Visible = false;
            rdMale.Visible = false;
            Submit.Visible = false;

        }


    }
}