using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;
using Negocios;

namespace WebApplication
{
    public partial class SeccionProductos : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulo;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Productos"]!=null)
            {
                ListaArticulo = (List<Articulo>)Session["Productos"];
            }
            else
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                ListaArticulo = negocio.listar();
                Session.Add("Productos", ListaArticulo);
            }
        }
    }
}