<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Contact Us - Nursery Management</title>
  <link rel="stylesheet" href="styles.css"/>
</head>


<body>
  <div style="position: fixed; top: 20px; right: 20px; z-index: 1000;">
    <button onclick="window.location.href='home.html'" style="
      background-color: #43a047;
      color: white;
      padding: 10px 16px;
      border: none;
      border-radius: 8px;
      font-size: 14px;
      cursor: pointer;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
      transition: background 0.3s ease;
    ">🏠 Home</button>
  </div>
  
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(
        rgba(26, 215, 77, 0.4),
        rgba(46, 215, 77, 0.4)
      ),
      url('https://images.unsplash.com/photo-1501004318641-b39e6451bec6?auto=format&fit=crop&w=1470&q=80') no-repeat center center;
    background-size: cover;
    background-attachment: fixed;
    animation: zoomBg 25s ease-in-out infinite alternate;
  }

    @keyframes zoomBg {
      0% {
        background-size: 100%;
      }
      100% {
        background-size: 110%;
      }
    }

    .overlay {
      /* background-color: rgba(255, 255, 255, 0.9); */
      min-height: 100vh;
      padding: 60px 20px;
    }

    @keyframes fadeIn {
      0% { opacity: 0; transform: translateY(30px); }
      100% { opacity: 1; transform: translateY(0); }
    }

    @keyframes slideInLeft {
      0% { opacity: 0; transform: translateX(-50px); }
      100% { opacity: 1; transform: translateX(0); }
    }

    @keyframes slideInRight {
      0% { opacity: 0; transform: translateX(50px); }
      100% { opacity: 1; transform: translateX(0); }
    }

    .contact-container {
      max-width: 1100px;
      margin: auto;
      padding: 30px;
      background: linear-gradient(135deg, #a7d8e5, #059669); /* Gradient background */
      box-shadow: 0 6px 18px rgba(0,0,0,0.15);
      border-radius: 12px;
      animation: fadeIn 1s ease-out forwards;
    }

    h1 {
      text-align: center;
      color: #2e7d32;
      margin-bottom: 30px;
    }

    .contact-wrapper {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
      align-items: center;
    }

    .flower-image {
      flex: 1 1 250px;
      animation: slideInLeft 1s ease-out forwards;
      text-align: center;
    }

    .flower-image img {
      max-width: 100%;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

    .contact-form {
      flex: 2 1 400px;
      animation: slideInRight 1s ease-out forwards;
    }

    .contact-form label {
      display: block;
      margin-bottom: 6px;
      font-weight: bold;
      color: #333;
    }

    .contact-form input,
    .contact-form textarea {
      width: 100%;
      padding: 12px;
      margin-bottom: 18px;
      border: 1px solid #ccc;
      border-radius: 8px;
      transition: all 0.3s ease;
    }

    .contact-form input:focus,
    .contact-form textarea:focus {
      border-color: #4caf50;
      box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
      outline: none;
    }

    .contact-form button {
      background-color: #43a047;
      color: white;
      padding: 14px 24px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      font-size: 16px;
      transition: background 0.3s ease, transform 0.2s ease;
    }

    .contact-form button:hover {
      background-color: #2e7d32;
      transform: scale(1.05);
    }

    .thank-you-container {
      text-align: center;
      margin-top: 50px;
    }

    .thank-you-container button {
      background-color: #43a047;
      color: white;
      padding: 14px 24px;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      margin: 10px;
      transition: background 0.3s ease, transform 0.2s ease;
    }

    .thank-you-container button:hover {
      background-color: #2e7d32;
      transform: scale(1.05);
    }

    @media (max-width: 768px) {
      .contact-wrapper {
        flex-direction: column;
      }

      .flower-image {
        display: none;
      }
    }
  </style>

  <div class="overlay">
    <div class="contact-container">
      <h1>Contact Us</h1>

      <div class="contact-wrapper">
        <!-- Flower beside form -->
        <div class="flower-image">
          <img src="images/contact_bg.jpeg" alt="Flower beside contact form" />
        </div>

        <!-- Contact Form -->
        <form class="contact-form" id="contactForm" onsubmit="handleSubmit(event)">
          <!-- Full Name -->
          <label for="name">Full Name</label>
          <input type="text" id="name" name="fullname" placeholder="Full Name" required
                 pattern="[A-Za-z\s]+" title="Full Name should only contain letters and spaces.">
        
          <!-- Email -->
          <label for="email">Email Address</label>
          <input type="email" id="email" name="email" placeholder="example@email.com" required
                 title="Enter a valid email address.">
        
          <!-- Subject -->
          <label for="subject">Subject</label>
          <input type="text" id="subject" name="subject" placeholder="Subject (min 5 characters)" required
                 pattern=".{5,}" title="Subject must be at least 5 characters.">
        
          <!-- Message -->
          <label for="message">Message</label>
          <textarea id="message" name="message" rows="6" required
                    minlength="10" maxlength="500"
                    placeholder="Type your message here (10–500 characters)"
                    title="Message must be between 10 and 500 characters."></textarea>
        
          <button type="submit">Send Message</button>
        </form>
        
      </div>
    </div>

    <!-- Thank You Message & Buttons (hidden initially) -->
    <div id="thankYou" class="thank-you-container" style="display: none;">
      <h2>Thank you for your message!</h2>
      <p>We will get back to you shortly. Meanwhile, feel free to explore more:</p>
      <button onclick="window.location.href='home.html'">Go to Home</button>
      <button onclick="window.location.href='shop.html'">Shop Now</button>
    </div>
  </div>

  <script>
    function handleSubmit(event) {
      event.preventDefault();  // Prevent the form from submitting the traditional way

      // Hide the contact form and show the "Thank You" message
      document.querySelector('.contact-container').style.display = 'none';
    
      document.querySelector('#thankYou').style.display = 'block';
     // Only allow letters/spaces in Full Name field
  document.getElementById('name').addEventListener('input', function () {
    this.value = this.value.replace(/[^A-Za-z\s]/g, '');
  });   
    }
  </script>

</body>
</html>
