<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>NurseryGreen Grow</title>
  
  
  
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet" />
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      margin: 0;
      padding: 0;
      background-image: url('https://images.unsplash.com/photo-1501004318641-b39e6451bec6');
      background-size: cover;
      background-position: center;
      background-attachment: fixed;
      color: #1F2937;
    }

    .overlay {
      background-color: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(4px);
    }

    .leaf {
      position: absolute;
      width: 30px;
      height: 30px;
      background: url('https://www.freeiconspng.com/uploads/green-leaf-png-3.png') no-repeat center;
      background-size: contain;
      animation: floatLeaf 10s linear infinite;
      pointer-events: none;
      opacity: 0.8;
    }

    @keyframes floatLeaf {
      0% {
        transform: translateY(-100px) rotate(0deg);
        opacity: 0;
      }
      50% {
        opacity: 1;
      }
      100% {
        transform: translateY(100vh) rotate(360deg);
        opacity: 0;
      }
    }

    .product-card {
      transition: transform 0.2s;
    }

    .product-card:hover {
      transform: scale(1.03);
    }
  </style>
</head>
<body>
  <!-- Floating Leaves -->
  <div class="fixed inset-0 -z-10 overflow-hidden">
    <div class="leaf" style="left: 10%; animation-delay: 0s;"></div>
    <div class="leaf" style="left: 25%; animation-delay: 2s;"></div>
    <div class="leaf" style="left: 40%; animation-delay: 4s;"></div>
    <div class="leaf" style="left: 60%; animation-delay: 6s;"></div>
    <div class="leaf" style="left: 75%; animation-delay: 8s;"></div>
  </div>

  <div class="overlay min-h-screen">

    <!-- Header -->
    <header class="bg-green-700 text-white py-6">
      <div class="container mx-auto px-6 text-center">
        <h1 class="text-4xl font-bold">Nursery Green Grow</h1>
        <p class="text-lg mt-2">Grow your green space with us!</p>
      </div>
    </header>

    <!-- Navigation -->
    <nav class="bg-green-600 text-white py-3">
      <div class="container mx-auto px-6 flex justify-center space-x-4">
        <a href="home.html" class="hover:text-yellow-300">Home</a>
        <a href="#about" class="hover:text-yellow-300">About</a>
        <a href="#services" class="hover:text-yellow-300">Services</a>
        <a href="shop.html" class="hover:text-yellow-300">Shop</a> 
        <a href="login.html" class="hover:text-yellow-300">Login</a> <!-- Login Button -->
        <a href="login.html" class="hover:text-yellow-300">Logout</a> <!-- Logout Button -->
      </div>
    </nav>

    <!-- Home Section -->
    <section id="home" class="py-20 text-center">
      <h2 class="text-3xl font-semibold mb-4">Welcome to Our Nursery Live</h2>
      <p class="max-w-xl mx-auto">We offer a wide range of plants and garden accessories to beautify your home and garden. From indoor plants to outdoor wonders, explore everything you need to cultivate your green sanctuary.</p>
    </section>

    <!-- About Section -->
    <section id="about" class="bg-white/70 py-20 text-center">
      <h2 class="text-3xl font-semibold mb-4">About Us</h2>
      <p class="max-w-xl mx-auto">We are passionate about plants and dedicated to helping our customers find the perfect greenery for their spaces. Our nursery has been serving plant lovers for over a decade, offering expert advice and quality products.</p>
    </section>

    <!-- Services Section -->
    <section id="services" class="bg-green-100/80 py-20 text-center">
      <h2 class="text-3xl font-semibold mb-4">Our Services</h2>
      <ul class="list-disc list-inside max-w-xl mx-auto text-left">
        <li>Wide variety of indoor and outdoor plants</li>
        <li>Gardening tools and accessories</li>
        <li>Expert plant care advice</li>
        <li>Landscaping consultation</li>
      </ul>
    </section>

    <!-- Shop Section -->
    <section id="shop" class="py-20 bg-white/90 text-center">
      <h2 class="text-3xl font-semibold mb-6">Shop Our Plants</h2>

      <div class="mb-6">
        <input type="text" id="searchInput" onkeyup="filterPlants()" placeholder="Search plants..." class="px-4 py-2 border border-gray-300 rounded" />
      </div>

      <div class="grid grid-cols-1 md:grid-cols-3 gap-6 max-w-6xl mx-auto" id="plantList">
        <!-- Loop of All Plants -->
        <!-- Copy/paste or update your full plant list here -->

        <!-- Money Plant -->
        <div class="product-card p-4 border rounded shadow bg-white/80" data-name="money plant">
          <img src="https://i.pinimg.com/originals/fe/bb/51/febb51c8ba191af4606d819b7a7362dc.jpg" class="w-full h-48 object-cover rounded mb-2" alt="Money Plant">
          <h3 class="text-xl font-bold">Money Plant</h3>
          <p class="mb-2">Price: ₹150</p>
          <button onclick="addToCart('Money Plant', 150)" class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">Add to Cart</button>
        </div>

        <!-- Snake Plant -->
        <div class="product-card p-4 border rounded shadow bg-white/80" data-name="snake plant">
          <img src="https://5.imimg.com/data5/YF/GL/GLADMIN-2/snake-plant-500x500.png" class="w-full h-48 object-cover rounded mb-2" alt="Snake Plant">
          <h3 class="text-xl font-bold">Snake Plant</h3>
          <p class="mb-2">Price: ₹200</p>
          <button onclick="addToCart('Snake Plant', 200)" class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">Add to Cart</button>
        </div>

        <!-- Bird of Paradise -->
        <div class="product-card p-4 border rounded shadow bg-white/80" data-name="bird of paradise">
          <img src="https://cdn.shopify.com/s/files/1/0047/9730/0847/products/birdofparadise.jpg" class="w-full h-48 object-cover rounded mb-2" alt="Bird of Paradise">
          <h3 class="text-xl font-bold">Bird of Paradise</h3>
          <p class="mb-2">Price: ₹250</p>
          <button onclick="addToCart('Bird of Paradise', 250)" class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">Add to Cart</button>
        </div>

        <!-- Areca Palm -->
        <div class="product-card p-4 border rounded shadow bg-white/80" data-name="areca palm">
          <img src="https://plantz.com/wp-content/uploads/2020/10/plantz_areca_palm_4-768x1024.jpg" class="w-full h-48 object-cover rounded mb-2" alt="Areca Palm">
          <h3 class="text-xl font-bold">Areca Palm</h3>
          <p class="mb-2">Price: ₹300</p>
          <button onclick="addToCart('Areca Palm', 300)" class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">Add to Cart</button>
        </div>

        <!-- Aloe Vera -->
        <div class="product-card p-4 border rounded shadow bg-white/80" data-name="aloe vera">
          <img src="https://nurserylive.com/cdn/shop/products/nurserylive-plants-aloe-vera-plant-16968653447244.jpg" class="w-full h-48 object-cover rounded mb-2" alt="Aloe Vera">
          <h3 class="text-xl font-bold">Aloe Vera</h3>
          <p class="mb-2">Price: ₹120</p>
          <button onclick="addToCart('Aloe Vera', 120)" class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">Add to Cart</button>
        </div>

        <!-- Spider Plant -->
        <div class="product-card p-4 border rounded shadow bg-white/80" data-name="spider plant">
          <img src="https://www.gardeningknowhow.com/wp-content/uploads/2018/11/spider-plant-house.jpg" class="w-full h-48 object-cover rounded mb-2" alt="Spider Plant">
          <h3 class="text-xl font-bold">Spider Plant</h3>
          <p class="mb-2">Price: ₹180</p>
          <button onclick="addToCart('Spider Plant', 180)" class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">Add to Cart</button>
        </div>

        
      </div>

      <div class="mt-10">
        <a href="cart.html" class="inline-block bg-yellow-500 text-white px-6 py-3 rounded hover:bg-yellow-600">View Cart</a>
      </div>
    </section>

    <!-- Footer -->
    <footer class="bg-green-700 text-white text-center py-6">
      <p>&copy; 2025 Nursery Management. All rights reserved.</p>
    </footer>
  </div>

  <!-- Scripts -->
  <script>
    function addToCart(productName, price) {
      let cart = JSON.parse(localStorage.getItem('cart')) || [];
      const index = cart.findIndex(item => item.name === productName);
      if (index > -1) {
        cart[index].quantity += 1;
      } else {
        cart.push({ name: productName, price, quantity: 1 });
      }
      localStorage.setItem('cart', JSON.stringify(cart));
      alert(productName + " added to cart!");
    }

    function filterPlants() {
      const input = document.getElementById('searchInput').value.toLowerCase();
      const cards = document.querySelectorAll('.product-card');
      cards.forEach(card => {
        const name = card.getAttribute('data-name').toLowerCase();
        card.style.display = name.includes(input) ? 'block' : 'none';
      });
    }
  </script>
</body>
</html>
