using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class CarritoDeCompra : Page
    {
        public List<Articulo> carrito;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Carrito"] == null)
            {
                Session["Carrito"] = new List<Articulo>();
            }

            carrito = (List<Articulo>)Session["Carrito"];
            if (Request.QueryString["id"] != null && int.TryParse(Request.QueryString["id"], out int id))
            {
                if (Session["Productos"] != null)
                {
                    List<Articulo> SeccionProductos = (List<Articulo>)Session["Productos"];
                    Articulo seleccionado = SeccionProductos.Find(x => x.Id == id);

                    if (seleccionado != null && !carrito.Any(x => x.Id == id))
                    {
                        carrito.Add(seleccionado);
                        Session["Carrito"] = carrito;
                    }
                }
            }
        }
    }
}

