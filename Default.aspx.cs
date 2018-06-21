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

        PhoneList.DataSource = cdc.vPhones();
        PhoneList.DataBind();
    }


    protected void PhoneList_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("DetalleSmartphone.aspx?Id=" + ID);
        }
    }

    protected void PhoneList_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        (PhoneList.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        this.Llenar();
    }
}