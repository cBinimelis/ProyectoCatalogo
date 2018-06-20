using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    ConexionBDDataContext cdc;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Llenar();
        }
    }

    private void Llenar()
    {
        cdc = new ConexionBDDataContext();
        //rpt_Smartphones.DataSource = cdc.Smartphone.OrderBy(x => x.id_Fabricante);
        //rpt_Smartphones.DataBind();

        PhoneList.DataSource= cdc.Smartphone.OrderBy(x => x.id_Fabricante);
        PhoneList.DataBind();
    }

    protected void rpt_Smartphones_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("DetalleSmartphone.aspx?Id=" + ID);
        }
    }


    public static DataSet GetPhoneData(int PageNum)
    {
        string query = "SmartphoneCount";
        SqlCommand cmd = new SqlCommand(query);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@PageNum", PageNum);
        cmd.Parameters.AddWithValue("@PageSize", 10);
        cmd.Parameters.Add("@PageCount", SqlDbType.Int, 4).Direction = ParameterDirection.Output;
        return GetData(cmd);
    }

    private static DataSet GetData(SqlCommand cmd)
    {
        string constr = "Data Source=VLADIMIR;Initial Catalog=bd_catalogo;Persist Security Info=True;User ID=sa;Password=crislyn;MultipleActiveResultSets=True";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds, "Smartphones");
                    DataTable dt = new DataTable("PageCount");
                    dt.Columns.Add("PageCount");
                    dt.Rows.Add();
                    dt.Rows[0][0] = cmd.Parameters["@PageCount"].Value;
                    ds.Tables.Add(dt);
                    return ds;
                }
            }
        }
    }

    [WebMethod]
    public static string GetCustomers(int pageIndex)
    {
        return GetPhoneData(pageIndex).GetXml();
    }


    protected void PhoneList_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }

    protected void PhoneList_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {

    }
}