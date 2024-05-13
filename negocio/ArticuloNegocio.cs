using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using dominio;
using System.Security.Cryptography.X509Certificates;

namespace negocio
{
    public class ArticuloNegocio
    {
        public int UltimoId()
        {
            AccessoDatos datos = new AccessoDatos();
            try
            {
                datos.setearConsulta("SELECT MAX(Id) AS UltimoId FROM ARTICULOS");
                datos.ejecutarLectura();
                int UltimoId = 0;
                if (datos.Lector.Read())
                {
                    if (!datos.Lector.IsDBNull(0))
                    {
                        UltimoId = (int)datos.Lector["UltimoId"];
                    }
                }

                return UltimoId;
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
        public List<Articulo> listar()
        {
            List<Articulo> lista = new List<Articulo>();
            AccessoDatos datos = new AccessoDatos();

            try
            {
                datos.setearConsulta("select A.Id IdArticulo, Codigo, Nombre, A.Descripcion, M.Descripcion Marca, C.Descripcion Categoria, I.ImagenUrl, A.Precio, M.Id IdMarca, C.Id IdCategoria from ARTICULOS A, IMAGENES I, MARCAS M, CATEGORIAS C WHERE A.Id = I.IdArticulo AND A.IdMarca = M.Id AND A.IdCategoria = C.Id");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Articulo articulo = new Articulo();
                    articulo.Id = (int)datos.Lector["IdArticulo"];
                    articulo.codigo = (string)datos.Lector["Codigo"];
                    articulo.nombre = (string)datos.Lector["Nombre"];
                    articulo.descripcion = (string)datos.Lector["Descripcion"];
                    articulo.marca = new Marca();
                    articulo.marca.Id = (int)datos.Lector["IdMarca"];
                    articulo.marca.Descripcion = (string)datos.Lector["Marca"];
                    articulo.categoria = new Categoria();
                    articulo.categoria.Id = (int)datos.Lector["IdCategoria"];
                    articulo.categoria.Descripcion = (string)datos.Lector["Categoria"];
                    Imagen imagen = new Imagen();
                    imagen.Url = (string)datos.Lector["ImagenUrl"];
                    articulo.imagenes.Add(imagen);
                    /*articulo.imagen = new Imagen();
                    articulo.imagen.Url = (string)datos.Lector["ImagenUrl"];*/
                    articulo.precio = (decimal)datos.Lector["Precio"];

                    lista.Add(articulo);

                }


                return lista;
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

        public List<string> listarNombres()
        {
            List<string> lista = new List<string>();
            AccessoDatos datos = new AccessoDatos();
            try
            {
                datos.setearConsulta("select Nombre from ARTICULOS");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    string nombre;
                    nombre = (string)datos.Lector["Nombre"];
                    lista.Add(nombre);
                }

                return lista;

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

        public void agregar(Articulo nuevo)
        {
            AccessoDatos datos = new AccessoDatos();

            try
            {
                datos.setearConsulta("INSERT INTO ARTICULOS (Codigo, Nombre, Descripcion, IdMarca, IdCategoria, Precio) VALUES (@codigo, @nombre, @descripcion, @idmarca, @idcategoria, @precio)");
                datos.setearParametro("@codigo", nuevo.codigo);
                datos.setearParametro("@nombre", nuevo.nombre);
                datos.setearParametro("@descripcion", nuevo.descripcion);
                datos.setearParametro("@idmarca", nuevo.marca.Id);
                datos.setearParametro("@idcategoria", nuevo.categoria.Id);
                datos.setearParametro("@precio", nuevo.precio);
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

        public void eliminar(string id)
        {
            try
            {
                AccessoDatos datos = new AccessoDatos();
                datos.setearConsulta("delete from ARTICULOS where id = @id");
                datos.setearParametro("@id", id);
                datos.ejecutarAccion();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Articulo> filtrar(string campo, string criterio, string filtro)
        {
            List<Articulo> lista = new List<Articulo>();
            AccessoDatos datos = new AccessoDatos();
            try
            {
                string consulta = "select A.Id, Codigo, Nombre, A.Descripcion, M.Descripcion Marca, C.Descripcion Categoria, I.ImagenUrl, A.Precio from ARTICULOS A, IMAGENES I, MARCAS M, CATEGORIAS C WHERE A.Id = I.IdArticulo AND A.IdMarca = M.Id AND A.IdCategoria = C.Id AND ";
                switch (campo)
                {
                    case "Nombre":
                        switch (criterio)
                        {
                            case "Empieza con":
                                consulta += "Nombre like '" + filtro + "%'";
                                break;

                            case "Termina con":
                                consulta += "Nombre like '%" + filtro + "'";
                                break;

                            case "Contiene":
                                consulta += "Nombre like '%" + filtro + "%'";
                                break;

                            default:
                                break;
                        }
                        break;

                    case "Codigo":
                        switch (criterio)
                        {
                            case "Empieza con":
                                consulta += "Codigo like '" + filtro + "%'";
                                break;

                            case "Termina con":
                                consulta += "Codigo like '%" + filtro + "'";
                                break;

                            case "Contiene":
                                consulta += "Codigo like '%" + filtro + "%'";
                                break;

                            default:
                                break;
                        }
                        break;

                    case "Descripción":
                        switch (criterio)
                        {
                            case "Empieza con":
                                consulta += "A.Descripcion like '" + filtro + "%'";
                                break;

                            case "Termina con":
                                consulta += "A.Descripcion like '%" + filtro + "'";
                                break;

                            case "Contiene":
                                consulta += "A.Descripcion like '%" + filtro + "%'";
                                break;

                            default:
                                break;
                        }
                        break;

                    case "Marca":
                        switch (criterio)
                        {
                            case "Empieza con":
                                consulta += "M.Descripcion like '" + filtro + "%'";
                                break;

                            case "Termina con":
                                consulta += "M.Descripcion like '%" + filtro + "'";
                                break;

                            case "Contiene":
                                consulta += "M.Descripcion like '%" + filtro + "%'";
                                break;

                            default:
                                break;
                        }
                        break;

                    case "Categoria":
                        switch (criterio)
                        {
                            case "Empieza con":
                                consulta += "C.Descripcion like '" + filtro + "%'";
                                break;

                            case "Termina con":
                                consulta += "C.Descripcion like '%" + filtro + "'";
                                break;

                            case "Contiene":
                                consulta += "C.Descripcion like '%" + filtro + "%'";
                                break;

                            default:
                                break;
                        }
                        break;

                    case "Precio":
                        switch (criterio)
                        {
                            case "Mayor a":
                                consulta += "Precio > " + filtro;
                                break;

                            case "Menor a":
                                consulta += "Precio < " + filtro;
                                break;

                            case "Igual a":
                                consulta += "Precio = " + filtro;
                                break;

                            default:
                                break;
                        }
                        break;

                    default:
                        break;
                }
                datos.setearConsulta(consulta);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Articulo articulo = new Articulo();
                    articulo.codigo = (string)datos.Lector["Codigo"];
                    articulo.nombre = (string)datos.Lector["Nombre"];
                    articulo.descripcion = (string)datos.Lector["Descripcion"];
                    articulo.marca = new Marca();
                    articulo.marca.Descripcion = (string)datos.Lector["Marca"];
                    articulo.categoria = new Categoria();
                    articulo.categoria.Descripcion = (string)datos.Lector["Categoria"];
                    Imagen imagen = new Imagen();
                    imagen.Url = (string)datos.Lector["ImagenUrl"];
                    articulo.imagenes.Add(imagen);
                    articulo.precio = (decimal)datos.Lector["Precio"];

                    lista.Add(articulo);

                }


                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        public void modificar(Articulo art)
        {
            AccessoDatos datos = new AccessoDatos();
            try
            {
                datos.setearConsulta("update ARTICULOS set CODIGO = @Codigo, Nombre = @Nombre, Descripcion = @Desc, IdMarca = @Marca, IdCategoria = @Categoria, Precio = @Precio where Id = @Id");
                datos.setearParametro("@Codigo", art.codigo);
                datos.setearParametro("@Nombre", art.nombre);
                datos.setearParametro("@Desc", art.descripcion);
                datos.setearParametro("@Marca", art.marca.Id);
                datos.setearParametro("@Categoria", art.categoria.Id);
                datos.setearParametro("@Precio", art.precio);
                datos.setearParametro("@Id", art.Id);

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

    }
}

