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

public partial class select_money : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //values required for transaction
        string msender = Session["value"].ToString();
        string mreciever = Session["reciever"].ToString();
        string money = TextBox1.Text;
        int ms = Int32.Parse(msender);
        int mr = Int32.Parse(mreciever);
        int m = Int16.Parse(money);

        //connecting to database
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con1.Open();

        //get balnce from both accounts

        SqlCommand mcmd = new SqlCommand("select balance from bank where id='" + ms + "'", con1);
        SqlDataAdapter da = new SqlDataAdapter(mcmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string drs = dt.Rows[0][0].ToString();
        int rs = Int32.Parse(drs);


        SqlCommand rcmd = new SqlCommand("select balance from bank where id='" + mr + "'", con1);
        da = new SqlDataAdapter(rcmd);
        da.Fill(dt);
        string drr = dt.Rows[1][0].ToString();
        int rr = Int32.Parse(drr);
        //final balance after transaction
        rs=rs-m;
        rr=rr+m;

        //updating the balance in both accounts
        SqlCommand cmd1 = new SqlCommand("update bank set balance='" +rs + "'where id='"+ms+ "'", con1);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("update bank set balance='" + rr + "'where id='" + mr + "'", con1);
        cmd2.ExecuteNonQuery();
        //getting the names of sender and reciever by session variables
        string ssender=Session["sname"].ToString();
        string sreciever=Session["sreciever"].ToString();

        string str = m + " amount was transferred from " + ssender + " to " + sreciever;

        //to display alert message contains how much amount and who'se are sender and reciver
        ClientScript.RegisterStartupScript(this.GetType(), "message", "alert('" + str + "');window.location='" + Page.ResolveUrl("~/home.aspx") + "';", true);
    }
}
