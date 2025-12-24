<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Nursery Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
  

  <style>
    body {
      margin: 0;
      padding: 0;
      background: linear-gradient(135deg, #d0f5e1, #fef6e4);
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      position: relative;
      overflow: hidden;
    }

    .container {
      background-color: #fff;
      padding: 40px;
      border-radius: 20px;
      box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
      width: 100%;
      max-width: 420px;
      position: relative;
      z-index: 2;
    }

    h2 {
      text-align: center;
      color: #2e7d32;
      margin-bottom: 25px;
      font-size: 28px;
    }

    label {
      display: block;
      margin-bottom: 6px;
      color: #333;
      font-weight: 600;
    }

    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 12px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 10px;
      font-size: 15px;
      outline: none;
      transition: border-color 0.3s ease;
    }

    input:focus {
      border-color: #4caf50;
    }

    button {
      width: 100%;
      padding: 12px;
      background-color: #43a047;
      color: white;
      font-size: 16px;
      font-weight: 600;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      transition: background-color 0.3s ease, transform 0.2s;
    }

    button:hover {
      background-color: #388e3c;
      transform: scale(1.02);
    }

    .bottom-text {
      text-align: center;
      margin-top: 15px;
      font-size: 14px;
    }

    .bottom-text a {
      color: #2e7d32;
      text-decoration: none;
      font-weight: 500;
    }

    .bottom-text a:hover {
      text-decoration: underline;
    }

    /* Floating Leaf Animation */
    .leaf {
      width: 40px;
      height: 40px;
      position: absolute;
      background-image: url('images/icon3.png'); 
      background-size: cover;
      opacity: 0.4;
      animation: floatLeaf 14s linear infinite;
    }

    @keyframes floatLeaf {
      0% {
        transform: translateY(-50px) rotate(0deg);
        opacity: 0;
      }
      30% {
        opacity: 1;
      }
      100% {
        transform: translateY(100vh) rotate(360deg);
        opacity: 0;
      }
    }

    .leaf:nth-child(1) { left: 5%; animation-delay: 0s; }
    .leaf:nth-child(2) { left: 20%; animation-delay: 3s; }
    .leaf:nth-child(3) { left: 40%; animation-delay: 5s; }
    .leaf:nth-child(4) { left: 60%; animation-delay: 7s; }
    .leaf:nth-child(5) { left: 80%; animation-delay: 9s; }
    .leaf:nth-child(6) { left: 95%; animation-delay: 11s; }
  </style>
</head>
<body>
  <!-- Home Button -->
<div style="position: fixed; top: 20px; right: 20px; z-index: 999;">
  <button onclick="window.location.href='home.html'" style="
    background-color: #43a047;
    color: white;
    padding: 10px 16px;
    border: none;
    border-radius: 8px;
    font-size: 14px;
    font-weight: 600;
    cursor: pointer;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    transition: background-color 0.3s ease;
  ">🏠 Home</button>
</div>

  <!-- Floating Leaves -->
  <div class="leaf"></div>
  <div class="leaf"></div>
  <div class="leaf"></div>
  <div class="leaf"></div>
  <div class="leaf"></div>
  <div class="leaf"></div>

  <!-- Login Form -->
  <div class="container">
    <h2>🌿 Login to Nursery</h2>
    <form action="/NurseryManagement/login" method="POST">
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Password" required>
    <button type="submit">Login</button>
</form>

<p>Don't have an account? <a href="register.html">Register here</a></p>
    
  </div>
  <script>
    const urlParams = new URLSearchParams(window.location.search);
    const msg = urlParams.get('msg');
    if (msg) {
      alert(msg); // or show it in a div
    }
  </script>
  
</body>
</html>
