using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class DetalleProducto : System.Web.UI.Page
    {
        public List<Articulo> detalle;
        protected void Page_Load(object sender, EventArgs e)
        {
            detalle = Session["Detalle"] != null ? (List<Articulo>)Session["Detalle"] : new List<Articulo>();
            
            int id = int.Parse(Request.QueryString["id"]);
            List<Articulo> SeccionProductos = (List<Articulo>)Session["Productos"];
            Articulo seleccionado = SeccionProductos.Find(x => x.Id == id);
            detalle.Add(seleccionado);
        }
    }
}