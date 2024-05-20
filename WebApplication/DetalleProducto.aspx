<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="DetalleProducto.aspx.cs" Inherits="WebApplication.DetalleProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
   <div class="row row-cols-1 row-cols-md-3 g-4 justify-content-center">
    <% foreach (dominio.Articulo art in detalle) { %>
      <div class="card mb-3" style="max-width: 540px;">
          <div class="row g-0">
            <div class="col-md-4">
              <img src="<%: art.imagen.Url %>" title="Imagen del producto" class="card-img-top" alt="Imagen no encontrada"
               onerror="this.onerror=null; this.src='https://www.italfren.com.ar/images/catalogo/imagen-no-disponible.jpeg';">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title"><%:art.nombre %></h5>
                <p class="card-text">Codigo: <%:art.codigo%></p>
                <p class="card-text">Descripcion: <%:art.descripcion%></p>
                <p class="card-text">Categoria: <%:art.categoria %></p>
                <p class="card-text">Marca: <%:art.marca %></p>
                <div class="text-bg-success p-3">$ <%:art.precio%></div>
              </div>
            </div>
              
          </div>
          <a href="SeccionProductos.aspx" Class="btn btn-secondary">Volver</a>
    </div>
    <% } %>
   </div>
</asp:Content>
