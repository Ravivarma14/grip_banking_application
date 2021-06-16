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
using System.Drawing;
using System.Data.SqlClient;


public partial class view_all_customers : System.Web.UI.Page
{
    //connecting to database
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Gopi Netha\Downloads\Desktop\banking_grip\App_Data\bank application.mdf;Integrated Security=True;User Instance=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
            bindgrid();
        
    }

    void bindgrid()
    {
        //list the accounts in gridview
        SqlCommand cmd=new SqlCommand("select * from bank",con);
        SqlDataAdapter da= new SqlDataAdapter(cmd);
        DataTable dt=new DataTable();
        da.Fill(dt);
        GridView1.DataSource=dt;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowIndex == GridView1.SelectedIndex)
            {
                //get the required data variables from selected row account for future transaction
                row.ToolTip = string.Empty;
                Session["value"] = row.Cells[0].Text;
                Session["sname"] = row.Cells[1].Text;
                Response.Redirect("select_reciever.aspx");
            }
            
        }
        
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            //set onclick attribute to all rows and setting tooltip
            e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "select$" + e.Row.RowIndex);
            
            e.Row.ToolTip = "click to select this account for sending";
            
        }
        con.Close();
    }
}
