<%@ page import="java.sql.*, java.util.*" %>

<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String username = (String) session.getAttribute("user");

    String jdbcURL = "jdbc:mysql://localhost:3306/nursery_db";
    String jdbcUser = "root";
    String jdbcPass = "root";

    if ("POST".equalsIgnoreCase(request.getMethod())) {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String payment = request.getParameter("payment");

        String[] productNames = request.getParameterValues("productName");
        String[] prices = request.getParameterValues("price");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPass);

            String sql = "INSERT INTO orders(username, product_name, price) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            for (int i = 0; i < productNames.length; i++) {
                ps.setString(1, username);
                ps.setString(2, productNames[i]);
                ps.setDouble(3, Double.parseDouble(prices[i]));
                ps.executeUpdate();
            }

            ps.close();
            con.close();

            out.println("<script>");
            out.println("localStorage.removeItem('cart');");
            out.println("alert('Order placed successfully!');");
            out.println("window.location='home.jsp';");
            out.println("</script>");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <style>
        body {
            font-family: Arial;
            background: #ecfdf5;
        }
        .box {
            width: 450px;
            background: white;
            margin: 80px auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px #999;
        }
        button {
            width: 100%;
            background: #4CAF50;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
        }
    </style>
</head>
<body>

<div class="box">
    <h2>Checkout</h2>

    <form method="post" onsubmit="prepareOrder()">

        <input type="text" name="name" placeholder="Full Name" required><br><br>
        <input type="email" name="email" placeholder="Email" required><br><br>

        <textarea name="address" placeholder="Shipping Address" required></textarea><br><br>

        <select name="payment" required>
            <option value="">Select Payment</option>
            <option>Cash on Delivery</option>
            <option>UPI</option>
            <option>Card</option>
        </select><br><br>

        <div id="hiddenFields"></div>

        <button type="submit">Place Order</button>
    </form>
</div>

<script>
function prepareOrder() {
    const cart = JSON.parse(localStorage.getItem("cart")) || [];
    const container = document.getElementById("hiddenFields");

    container.innerHTML = "";

    cart.forEach(item => {
        container.innerHTML += `
            <input type="hidden" name="productName" value="${item.name}">
            <input type="hidden" name="price" value="${item.price}">
        `;
    });
}
</script>

</body>
</html>
