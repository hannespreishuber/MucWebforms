using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Text1.Value
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
       
    }

    protected void chkViewPanel_CheckedChanged(object sender, EventArgs e)
    {
        ViewPanel.Visible = chkViewPanel.Checked;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = DropDownList1.SelectedItem.ToString();
       
    }
}