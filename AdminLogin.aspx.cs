using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Globalization;

public partial class AdminLogin : System.Web.UI.Page
{
    Class1 cs = new Class1();
    SqlConnection con;
    string str;
    SqlDataAdapter da, da1, da2, da3;
    DataSet ds, ds2, ds3;
    private bool refreshState;
    private bool isRefresh;
    protected override void LoadViewState(object savedState)
    {
        object[] AllStates = (object[])savedState;
        base.LoadViewState(AllStates[0]);
        refreshState = bool.Parse(AllStates[1].ToString());
        if (Session["ISREFRESH"] != null && Session["ISREFRESH"] != "")
            isRefresh = (refreshState == (bool)Session["ISREFRESH"]);
    }
    protected override object SaveViewState()
    {
        Session["ISREFRESH"] = refreshState;
        object[] AllStates = new object[3];
        AllStates[0] = base.SaveViewState();
        AllStates[1] = !(refreshState);
        return AllStates;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(cs.getdata(ConfigurationManager.ConnectionStrings["SGM_DB"].ConnectionString.ToString()));
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        str = "select * from Admin_Login where UserName = '" + TextBox2.Text + "' And Password = '" + TextBox1.Text + "'";
        da1 = new SqlDataAdapter(str, con);
        ds = new DataSet();
        da1.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["UserName"] = ds.Tables[0].Rows[0]["UserName"].ToString();
            Session["Password"] = ds.Tables[0].Rows[0]["Password"].ToString();
            Session["AdminId"] = ds.Tables[0].Rows[0]["AdminId"].ToString();
            {
              Response.Redirect("~/Admin/Pingenerate.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid UserName or Password')</script>");
        }
    }
}