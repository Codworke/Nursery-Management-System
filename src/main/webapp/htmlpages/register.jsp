<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Nursery Registration</title>
  
  
  

  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&family=Poppins:wght@400;500&display=swap" rel="stylesheet">

  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(135deg, #f0fff4, #ccfbf1, #fef3c7);
      background-size: 500% 500%;
      animation: gradientShift 25s ease infinite;
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
      overflow: hidden;
      position: relative;
    }

    h1, .brand-title {
      font-family: 'Playfair Display', serif;
      animation: slideUp 1.2s ease-in-out both;
    }

    .card {
      width: 100%;
      max-width: 400px;
      background: white;
      border-radius: 2rem;
      box-shadow: 0 20px 40px rgba(0,0,0,0.1);
      padding: 40px;
      z-index: 10;
      animation: fadeUp 1.2s ease-in-out both;
    }

    .text-center {
      text-align: center;
      margin-bottom: 24px;
    }

    .form-group {
      margin-bottom: 16px;
    }
    .form-group:last-child {
  margin-bottom: 0;
}


    label {
      display: block;
      margin-bottom: 6px;
      color: #4b5563;
      font-weight: 500;
    }

    input {
      width: 100%;
      padding: 10px 14px;
      border: 1px solid #ccc;
      border-radius: 12px;
      outline: none;
      font-size: 14px;
    }

    input:focus {
      border-color: #34d399;
      box-shadow: 0 0 0 2px rgba(52, 211, 153, 0.3);
    }

    .submit-btn {
      width: 100%;
      background: #059669;
      color: white;
      padding: 12px;
      font-weight: 600;
      border: none;
      border-radius: 12px;
      transition: 0.3s;
      cursor: pointer;
    }

    .submit-btn:hover {
      background: #047857;
      transform: scale(1.04);
      box-shadow: 0 10px 20px rgba(34, 197, 94, 0.3);
    }

    .login-link {
      text-align: center;
      margin-top: 32px;
      font-size: 14px;
      color: #6b7280;
    }

    .login-link a {
      color: #059669;
      text-decoration: none;
      font-weight: 500;
    }

    .login-link a:hover {
      text-decoration: underline;
    }

    .leaf {
      position: absolute;
      width: 40px;
      height: 40px;
      background-size: cover;
      opacity: 0.7;
      animation: leafDrift 12s ease-in-out infinite;
    }

    @keyframes gradientShift {
      0% { background-position: 0% 0%; }
      50% { background-position: 100% 100%; }
      100% { background-position: 0% 0%; }
    }

    @keyframes leafDrift {
      0% { transform: translateY(0) translateX(0) rotate(0deg); }
      50% { transform: translateY(50vh) translateX(20px) rotate(180deg); }
      100% { transform: translateY(100vh) translateX(-20px) rotate(360deg); }
    }

    @keyframes slideUp {
      0% { opacity: 0; transform: translateY(40px); }
      100% { opacity: 1; transform: translateY(0); }
    }

    @keyframes fadeUp {
      0% { opacity: 0; transform: scale(0.9) translateY(20px); }
      100% { opacity: 1; transform: scale(1) translateY(0); }
    }
  </style>
</head>

<body>
  <!-- Home Button -->
<div style="position: fixed; top: 20px; right: 20px; z-index: 999;">
  <button onclick="window.location.href='home.html'" style="
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
  ">🏠 Home</button>
</div>

  <!-- Floating Leaves -->
  <div class="leaf" style="top:-30px; left:15%; animation-delay:0s; background-image: url('images/icon1.png');"></div>
  <div class="leaf" style="top:-70px; left:35%; animation-delay:2s; background-image: url('images/icon2.png');"></div>
  <div class="leaf" style="top:-50px; left:60%; animation-delay:4s; background-image: url('images/icon3.png');"></div>
  <div class="leaf" style="top:-90px; left:80%; animation-delay:6s; background-image: url('images/icon4.png');"></div>
  <div class="leaf" style="top:-60px; left:25%; animation-delay:1s; background-image: url('images/icon5.png');"></div>

  <!-- Registration Form -->
  <div class="card">
    <div class="text-center">
      <h1 class="brand-title" style="color: #065f46;">🌸 Sign Up</h1>
      <p style="font-size: 14px; color: #6b7280;">Let’s grow something beautiful together</p>
    </div>

    <form action="register" method="POST">
    <input type="text" name="uname" placeholder="Full Name" required>
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="upass" placeholder="Password" required>
    <button type="submit">Register</button>
</form>

    <p class="login-link">
      Already have an account?
      <a href="index.html">Login here</a>
    </p>
  </div>

</body>
</html>
