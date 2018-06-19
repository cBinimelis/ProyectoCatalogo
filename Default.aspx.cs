using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    ConexionBDDataContext cdc;
    protected void Page_Load(object sender, EventArgs e)
    {
        Llenar();
    }

    private void Llenar()
    {
        cdc = new ConexionBDDataContext();
        rpt_Smartphones.DataSource = cdc.Smartphone.OrderBy(x=>x.id_Fabricante);
        rpt_Smartphones.DataBind();
    }

    protected void rpt_Smartphones_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }


}