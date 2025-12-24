<%@ page import="java.util.*, com.nursery.dao.OrderDAO, com.nursery.model.Order" %>

<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String username = (String) session.getAttribute("user");
    OrderDAO dao = new OrderDAO();
    List<Order> orders = dao.getOrdersByUser(username);
%>

<!DOCTYPE html>
<html>
<head>
    <title>My Orders</title>
    <style>
        body {
            font-family: Arial;
            background: #f0fdf4;
        }
        table {
            width: 80%;
            margin: 50px auto;
            border-collapse: collapse;
            background: white;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }
        th {
            background: #16a34a;
            color: white;
        }
        h2 {
            text-align: center;
            margin-top: 30px;
        }
        .btn {
            display: block;
            width: 200px;
            margin: 20px auto;
            text-align: center;
            padding: 10px;
            background: #16a34a;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }
    </style>
</head>
<body>

<h2>My Orders</h2>

<table>
    <tr>
        <th>Order ID</th>
        <th>Product</th>
        <th>Price</th>
        <th>Date</th>
    </tr>

    <%
        if (orders.isEmpty()) {
    %>
        <tr>
            <td colspan="4">No orders found</td>
        </tr>
    <%
        } else {
            for (Order o : orders) {
    %>
        <tr>
            <td><%= o.getId() %></td>
            <td><%= o.getProductName() %></td>
            <td>₹ <%= o.getPrice() %></td>
            <td><%= o.getOrderDate() %></td>
        </tr>
    <%
            }
        }
    %>
</table>

<a href="home.jsp" class="btn">Back to Home</a>

</body>
</html>
