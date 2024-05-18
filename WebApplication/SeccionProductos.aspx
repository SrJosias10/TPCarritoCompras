<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="SeccionProductos.aspx.cs" Inherits="WebApplication.SeccionProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row row-cols-1 row-cols-md-3 g-4">
    <% foreach (dominio.Articulo art in ListaArticulo) { %>
      <div class="col">
        <div class="card h-100">
          <img src="<%: art.imagen.Url %>" title="Imagen del producto" class="card-img-top" alt="Imagen no encontrada"
               onerror="this.onerror=null; this.src='https://www.italfren.com.ar/images/catalogo/imagen-no-disponible.jpeg';">
          <div class="card-body">
            <h5 class="card-title"><%: art.nombre %></h5>
            <p class="card-text"><%: art.descripcion %></p>
            <a href="DetalleProducto.aspx" class="btn btn-info">Ver detalle</a>
            <asp:Button ID="btnCarrito" runat="server" Text="Agregar al carrito" CssClass="btn btn-success"/>
          </div>
        </div>
      </div>
    <% } %>
</div>
</asp:Content>
