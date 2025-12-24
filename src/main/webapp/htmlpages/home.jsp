<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Nursery Animated Carousel</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/home.css">
</head>

<body>

<jsp:include page="nav.jsp"/>


  <div class="slide">
    <div class="slide-text">
      <h1></h1>
      <p></p>
    </div>
  </div>
  
  <script>
    const slides = [
      {
        image: './images/slide_1.jpeg',
        title: 'Welcome to Our Nursery',
        caption: '"Let your dreams blossom like a garden in spring."'
      },
      {
        image: './images/slide_2.jpeg',
        title: 'Bloom & Grow',
        caption: 'Bloom where you are planted, grow beyond the pot."'
      },
      {
        image: './images/slide_3.jpeg',
        title: 'Green Living',
        caption: '"Small plants, big impact—embrace the green lifestyle."'
      },
      {
        image: './images/slide_4.jpeg',
        title: 'Your Garden Companion',
        caption: '"Helping your garden bloom with love." '
      },
      {
        image: './images/slide_5.jpeg',
        title: 'Nature’s Beauty',
        caption: '"Let the elegance of nature breathe life into your space."'
      }
    ];
  
    let current = 0;
  
    const slideDiv = document.querySelector('.slide');
    const titleEl = document.querySelector('.slide-text h1');
    const captionEl = document.querySelector('.slide-text p');
  
    function updateSlide() {
      const { image, title, caption } = slides[current];
      slideDiv.style.backgroundImage = `url(${image})`;
      titleEl.textContent = title;
      captionEl.textContent = caption;
  
      current = (current + 1) % slides.length;
    }
  
    // Initial load
    updateSlide();
  
    // Change every 5 seconds
    setInterval(updateSlide, 5000);
  </script>
  
</body>
</html>
