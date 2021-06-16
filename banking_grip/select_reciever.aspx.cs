using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class select_reciever : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //get the session value of sender to hide that specific row
        Label2.Text = Session["value"].ToString();
        int n = Int32.Parse(Label2.Text);
        //set false for the visibility for that particular row
        GridView1.Rows[n - 1].Visible = false;
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //detecting the row that selected
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "select$" + e.Row.RowIndex);
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowIndex == GridView1.SelectedIndex)
            {
                //getting required data variables from selected row
                row.ToolTip = string.Empty;
                Session["reciever"] = row.Cells[0].Text;
                Session["sreciever"] = row.Cells[1].Text;
                Response.Redirect("select_money.aspx");
            }

        }
    }
}
