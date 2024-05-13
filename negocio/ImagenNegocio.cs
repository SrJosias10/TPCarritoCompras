using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class ImagenNegocio
    {
        public void agregar(Imagen nuevo)
        {
            AccessoDatos datos = new AccessoDatos();

            try
            {
                datos.setearConsulta("insert into IMAGENES(IdArticulo, ImagenUrl) values(@IdArticulo, @ImagenUrl)");
                datos.setearParametro("@IdArticulo", nuevo.Id);
                datos.setearParametro("@ImagenUrl", nuevo.Url);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

        public void modificar(Articulo art)
        {
            AccessoDatos datos = new AccessoDatos();
            try
            {
                foreach (var imagen in art.imagenes)
                {
                    datos.setearConsulta("update IMAGENES set ImagenUrl = @URL where IdArticulo = @Id");
                    datos.setearParametro("@URL", imagen.Url);
                    datos.setearParametro("@Id", art.Id);

                    datos.ejecutarAccion();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}

