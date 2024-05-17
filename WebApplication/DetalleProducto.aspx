<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="DetalleProducto.aspx.cs" Inherits="WebApplication.DetalleProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Services Section -->
        <div class="row mt-4">
            <div class="col-12">
                <h2>Nuestros Servicios</h2>
            </div>
            </div>
        <div class="row">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="/Content/prd1.png" class="card-img-top" alt="Servicios de Gestión de Programas Cautivos">
                    <div class="card-body">
                        <h5 class="card-title">Servicios de Gestión de Programas Cautivos</h5>
                        <p class="card-text">Desarrollamos e implementamos programas de seguros en nombre de las cautivas para garantizar que se identifiquen y mitiguen sus exposiciones al riesgo.</p>
                        <a href="#" class="btn btn-primary">Sumar</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="/Content/producto2.png" class="card-img-top" alt="Servicios de secretaría de la empresa">
                    <div class="card-body">
                        <h5 class="card-title">Servicios de secretaría de la empresa</h5>
                        <p class="card-text">Aseguramos la administración eficiente de los cautivos, proporcionando servicios completos de secretaría de la empresa y administración de reuniones de la junta directiva</p>
                        <a href="#" class="btn btn-primary">Sumar</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="/Content/producto3.png" class="card-img-top" alt="Servicios de Gestión Financiera">
                    <div class="card-body">
                        <h5 class="card-title">Servicios de Gestión Financiera</h5>
                        <p class="card-text">Brindamos un servicio completo de gestión financiera a cautivas que incluye administración de efectivo, servicios de inversión, informes financieros, servicios de auditoría, servicios de informes regulatorios</p>
                        <a href="#" class="btn btn-primary">Sumar</a>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
