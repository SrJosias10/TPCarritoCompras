<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="CarritoDeCompra.aspx.cs" Inherits="WebApplication.CarritoDeCompra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrito de Compras</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  

    <!-- Main Content -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-12">
                <h1 class="display-4 text-center">Carrito de Compras</h1>
                <div id="cartItems" class="mt-4">
                    <!-- ejemplo de contenido (para generar automaticamente) -->
                    <!--
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="..." class="card-img" alt="Product Image">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Producto 1</h5>
                                    <p class="card-text">Descripción del producto.</p>
                                    <p class="card-text"><small class="text-muted">$Precio</small></p>
                                    <button class="btn btn-danger" onclick="removeItem(this)">Eliminar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    -->
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-light text-center text-lg-start mt-5">
        <div class="container p-4">
            <div class="row">
                <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Tienda</h5>
                    <p>Contacto: +1 234 567 890 <br> Email: info@tienda.com</p>
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

    <!-- Custom JS to manage cart -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Example products (to be replaced by real data)
            const products = [
                { id: 1, name: "Producto 1", description: "Descripción del producto 1.", price: 10.99, image: "https://via.placeholder.com/150" },
                { id: 2, name: "Producto 2", description: "Descripción del producto 2.", price: 15.99, image: "https://via.placeholder.com/150" },
                { id: 3, name: "Producto 3", description: "Descripción del producto 3.", price: 20.99, image: "https://via.placeholder.com/150" }
            ];

            const cartItems = document.getElementById('cartItems');

            // Function to render cart items
            function renderCartItems() {
                cartItems.innerHTML = '';
                products.forEach(product => {
                    const card = document.createElement('div');
                    card.className = 'card mb-3';
                    card.style.maxWidth = '540px';
                    card.innerHTML = `
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="${product.image}" class="card-img" alt="${product.name}">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">${product.name}</h5>
                                    <p class="card-text">${product.description}</p>
                                    <p class="card-text"><small class="text-muted">$${product.price.toFixed(2)}</small></p>
                                    <button class="btn btn-danger" onclick="removeItem(${product.id})">Eliminar</button>
                                </div>
                            </div>
                        </div>
                    `;
                    cartItems.appendChild(card);
                });
            }

            // Function to remove an item from the cart
            window.removeItem = function (id) {
                const index = products.findIndex(product => product.id === id);
                if (index > -1) {
                    products.splice(index, 1);
                    renderCartItems();
                }
            }

            // Initial render
            renderCartItems();
        });
    </script>
</body>
</html>
</asp:Content>
