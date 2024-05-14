<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="DetalleProducto.aspx.cs" Inherits="WebApplication.DetalleProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card" style="width: 18rem;">
  <img src="/Content/producto1.png" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Un producto</h5>
    <p class="card-text">Esto es un producto con una descripcion que te va a hacer comprarlo</p>
    <a href="#" class="btn btn-primary">Comprar</a>
  </div>
</div>
</asp:Content>
