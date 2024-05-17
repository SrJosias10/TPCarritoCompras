<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Información sobre la Empresa</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-12 text-center">
                <h1 class="display-4">Bienvenidos a TuSolucion</h1>
                <p class="lead">Líderes en innovación y soluciones tecnológicas</p>
            </div>
        </div>

        <!-- About Us Section -->
        <div class="row mt-4">
            <div class="col-md-6">
                <h2>Sobre Nosotros</h2>
                <p>Nuestra empresa se dedica a proporcionar soluciones tecnológicas avanzadas que ayudan a las empresas a optimizar sus procesos y alcanzar sus objetivos. Contamos con un equipo de profesionales altamente capacitados y comprometidos con la excelencia.</p>
            </div>
            <div class="col-md-6">
                <img src="https://ammitechnologies.com/wp-content/uploads/2022/03/1026-930x620.jpg" class="img-fluid" alt="Sobre Nosotros">
            </div>
        </div>

        <!-- Services Section -->
        <div class="row mt-4">
            <div class="col-12">
                <h2>Nuestros Servicios</h2>
            </div>
            <div class="col-md-4">
                <h3>Consultoría</h3>
                <p>Ofrecemos servicios de consultoría para ayudar a las empresas a implementar las mejores soluciones tecnológicas.</p>
            </div>
            <div class="col-md-4">
                <h3>Desarrollo de Software</h3>
                <p>Desarrollamos software a medida para satisfacer las necesidades específicas de nuestros clientes.</p>
            </div>
            <div class="col-md-4">
                <h3>Soporte Técnico</h3>
                <p>Proporcionamos soporte técnico continuo para garantizar el funcionamiento óptimo de sus sistemas.</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-light text-center text-lg-start mt-5">
        <div class="container p-4">
            <div class="row">
                <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Contactanos</h5>
                    <p>
                        Contacto: +1 234 567 890 <br>
                        Email: TuSolucion@empresa.com
                    </p>
                </div>
                <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Síguenos</h5>
                    <a href="#" class="btn btn-outline-primary btn-sm">Facebook</a>
                    <a href="#" class="btn btn-outline-primary btn-sm">Twitter</a>
                    <a href="#" class="btn btn-outline-primary btn-sm">LinkedIn</a>
                </div>
            </div>
        </div>
       
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
</asp:Content>
