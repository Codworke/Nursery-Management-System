 <%@ page import="java.util.*,com.nursery.dao.ProductDAO,com.nursery.model.Product" %>
 
 <%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<%
    ProductDAO dao = new ProductDAO();
    List<Product> products = dao.getAllProducts();
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop - Plant Store</title>
    <link rel="stylesheet" href="styles_shop_cart.css">
    
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f1f8e9;
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            text-align: center;
            color: #2e7d32;
            margin-top: 40px;
            font-size: 36px;
            animation: fadeInUp 1s ease-out forwards;
        }

        /* Animation for Fade-in */
        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(20px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeInUp {
            0% { opacity: 0; transform: translateY(30px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        /* Search Input Style */
        #searchInput {
            width: 25%;
            padding: 12px 16px;
            margin: 20px 0;
            border: 2px solid #43a047;
            border-radius: 8px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        #searchInput:focus {
            border-color: #2e7d32;
            box-shadow: 0 0 8px rgba(0, 128, 0, 0.5);
        }

        /* Product Cards */
        .product-card {
            background-color: #fff;
            border-radius: 12px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            opacity: 0;
            animation: fadeInUp 0.5s ease-out forwards;
            margin: 20px;
        }

        .product-card img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .product-card h4 {
            margin-top: 15px;
            font-size: 18px;
            color: #2e7d32;
        }

        .product-card p {
            font-size: 16px;
            margin-top: 10px;
            color: #555;
        }

        .product-card button {
            margin-top: 15px;
            background-color: #43a047;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .product-card button:hover {
            background-color: #2e7d32;
        }

        .product-card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
        }

        /* Responsive Layout */
        @media (max-width: 768px) {
            .product-card {
                margin: 10px;
            }
        }

        /* Footer Button */
        footer button {
            background-color: #43a047;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        footer button:hover {
            background-color: #2e7d32;
        }

    </style>
</head>
<body>

<jsp:include page="nav.jsp"/>

    <!-- Home Button -->
    <div style="position: fixed; top: 20px; right: 20px; z-index: 999;">
        <button onclick="window.location.href='home.jsp'" style="
        background-color: #059669;
        color: white;
        padding: 10px 16px;
        border: none;
        border-radius: 8px;
        font-size: 14px;
        font-weight: 600;
        cursor: pointer;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        transition: background-color 0.3s ease;
        ">ð  Home</button>
    </div>
  
    <header>
        <h1>Plant Store</h1>
        <!-- Shop Page -->
        <button onclick="window.location.href='cart.jsp'">Go to Cart</button>
    </header>  

    <main>
        <div>
            <input type="text" id="searchInput" placeholder="Search plants..." oninput="filterPlants()">
        </div>

        <div id="products-container">
<%
    for(Product p : products) {
%>
    <div class="product-card" data-name="<%=p.getName().toLowerCase()%>">
        <img src="../images/<%=p.getImage()%>" alt="<%=p.getName()%>">
        <h4><%=p.getName()%></h4>
        <p>Price: ₹ <%=p.getPrice()%></p>

        <form action="../addToCart" method="post">
            <input type="hidden" name="id" value="<%=p.getId()%>">
            <button type="submit">Add to Cart</button>
        </form>
    </div>
<%
    }
%>
</div>
        

    </main>

    <footer>
       <!-- Shop Page -->
       <button onclick="window.location.href='cart.jsp'">Go to Cart</button>
    </footer>

    <script src="script.js"></script>
    <script>
       


        // Search functionality
        function filterPlants() {
            const input = document.getElementById("searchInput").value.toLowerCase();
            const productCards = document.querySelectorAll(".product-card");

            productCards.forEach(card => {
                const name = card.dataset.name.toLowerCase();
                card.style.display = name.includes(input) ? "block" : "none";
            });
        }
    </script>
</body>
</html>
