<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!-- NAVBAR ONLY (NO HTML / BODY TAGS) -->

<div class="navbar">
    <div class="logo">🌱 GreenLife Nursery</div>

    <ul class="nav-links">
        <li><a href="home.jsp">Home</a></li>
        <li><a href="shop.jsp">Shop</a></li>
        <li><a href="contact.jsp">Contact</a></li>
        <li><a href="cart.jsp">🛒 Cart</a></li>
        <li><a href="orders.jsp">My Orders</a></li>
        <li><a href="../logout">Logout</a></li>
    </ul>
</div>

<hr>
