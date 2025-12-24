<%@ page import="java.util.*,com.nursery.model.Product" %>

<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    List<Product> cart = (List<Product>) session.getAttribute("cart");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Cart</title>
    <link rel="stylesheet" href="../css/styles_shop_cart.css">
</head>

<body>

<jsp:include page="nav.jsp"/>

<div class="cart-container">

    <h1>Your Cart</h1>

<%
    if (cart == null || cart.isEmpty()) {
%>
    <p>Your cart is empty.</p>
    <a href="shop.jsp">Go to Shop</a>
<%
    } else {
        double total = 0;
%>

<table border="1" cellpadding="12" align="center">
    <tr>
        <th>Image</th>
        <th>Plant Name</th>
        <th>Price</th>
    </tr>

<%
    for (Product p : cart) {
        total += p.getPrice();
%>
    <tr>
        <td>
            <img src="../images/<%=p.getImage()%>" width="80">
        </td>
        <td><%=p.getName()%></td>
        <td>₹ <%=p.getPrice()%></td>
    </tr>
<%
    }
%>

    <tr>
        <td colspan="2"><b>Total</b></td>
        <td><b>₹ <%= total %></b></td>
    </tr>
</table>

<br>

<div style="text-align:center;">
    <a href="shop.jsp">← Continue Shopping</a> |
    <a href="checkout.jsp">Proceed to Checkout →</a>
</div>

<%
    }
%>

</div>

</body>
</html>
