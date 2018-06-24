using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    Conexion sql = new Conexion();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Evt_Login(object sender, EventArgs e)
    {
        try
        {
            if (txt_user.Text.Trim().Equals("") || txt_pass.Text.Trim().Equals(""))
            {
                Mensaje("¡Un momento!", "No puedes dejar elementos vacíos", "info");
            }
            else
            {
                String User = txt_user.Text;
                String Pass = txt_pass.Text;
                SqlDataReader Usuario = sql.consulta("SELECT * FROM Usuario WHERE Username = '" + User + "' OR Correo = '" + User + "'");
                if (Usuario.Read())
                {
                    if (Usuario[3].ToString().Equals(Pass))
                    {
                        switch (Convert.ToInt32(Usuario[7].ToString())){
                            case 1:
                                Session["Admin"] = Usuario[0].ToString();
                                Session["Img"] = Usuario[6].ToString();
                                Response.Redirect("NavAdmin/Inicio.aspx");
                                break;
                            case 2:
                                Mensaje("Hay un detalle...", "Tu cuenta está suspendida", "warning");
                                break;
                            case 3:
                                Mensaje("Creo que deberías saberlo", "Tu cuenta ha sido eliminada", "error");
                                break;
                            default:
                                Mensaje("Ups", "No se han podido corroborar tus datos", "error");
                                break;
                        }
                    }
                    else
                    {
                        Mensaje("¡Ups!", "La contraseña ingresada no es correcta", "warning");
                    }
                }
                else
                {
                    Mensaje("Tenemos un problema", "Este usuario no está en el sistema", "warning");
                }
            }
        }
        catch
        {

        }
    }

    private void Mensaje(String Tit, String Msg, String Stat)
    {
        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Alerta('" + Tit + "','" + Msg + "','" + Stat + "');", true);
    }
}