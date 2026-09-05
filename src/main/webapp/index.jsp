<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · premium e‑commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background: #f6f7ff;
      font-family: 'Inter', sans-serif;
      color: #17172f;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    /* smooth gradients & glassmorphism */
    .glass-card {
      background: rgba(255, 255, 255, 0.75);
      backdrop-filter: blur(4px);
      -webkit-backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.2);
    }

    .section-title {
      font-family: 'Playfair Display', serif;
      font-weight: 700;
      letter-spacing: -0.02em;
    }

    /* modern button with shine */
    .btn-shine {
      position: relative;
      overflow: hidden;
      transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
      border: none;
      background: linear-gradient(135deg, #6c4cff, #ff4f9a);
      color: #fff;
      font-weight: 700;
      padding: 0.9rem 2.2rem;
      border-radius: 60px;
      box-shadow: 0 12px 28px rgba(108, 76, 255, 0.25);
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 10px;
    }
    .btn-shine::after {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(110deg, transparent, rgba(255, 255, 255, 0.3), transparent);
      transform: translateX(-100%);
      transition: 0.5s;
    }
    .btn-shine:hover::after {
      transform: translateX(100%);
    }
    .btn-shine:hover {
      transform: translateY(-3px);
      box-shadow: 0 18px 36px rgba(108, 76, 255, 0.35);
    }

    .btn-outline-light {
      background: rgba(255, 255, 255, 0.08);
      border: 1px solid rgba(255, 255, 255, 0.25);
      backdrop-filter: blur(6px);
      color: #fff;
      padding: 0.9rem 2rem;
      border-radius: 60px;
      font-weight: 600;
      transition: 0.3s;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      cursor: pointer;
    }
    .btn-outline-light:hover {
      background: rgba(255, 255, 255, 0.2);
      transform: translateY(-2px);
    }

    /* header */
    .header-blur {
      background: rgba(255, 255, 255, 0.7);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: 1px solid rgba(108, 76, 255, 0.06);
      box-shadow: 0 6px 28px rgba(0, 0, 0, 0.02);
      position: sticky;
      top: 0;
      z-index: 1000;
    }

    .brand-glow i {
      filter: drop-shadow(0 6px 12px rgba(108, 76, 255, 0.25));
    }

    /* hero */
    .hero-gradient {
      background: linear-gradient(130deg, #17133e 0%, #37247c 45%, #9a2d70 100%);
      position: relative;
      overflow: hidden;
      border-radius: 30px;
      box-shadow: 0 20px 60px rgba(56, 35, 130, 0.25);
    }
    .hero-gradient::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover;
      opacity: 0.35;
      mix-blend-mode: overlay;
    }
    .hero-gradient::after {
      content: '';
      position: absolute;
      width: 400px;
      height: 400px;
      right: -80px;
      top: -120px;
      background: radial-gradient(circle, rgba(255, 79, 154, 0.35), transparent 70%);
      filter: blur(30px);
      pointer-events: none;
    }

    /* cards */
    .cat-card-modern {
      background: rgba(255, 255, 255, 0.9);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(108, 76, 255, 0.08);
      border-radius: 24px;
      transition: all 0.25s ease;
      padding: 1.8rem 0.8rem;
      text-align: center;
      cursor: pointer;
      box-shadow: 0 6px 18px rgba(0, 0, 0, 0.02);
    }
    .cat-card-modern:hover {
      transform: translateY(-8px);
      border-color: rgba(108, 76, 255, 0.2);
      box-shadow: 0 18px 40px rgba(108, 76, 255, 0.08);
    }
    .cat-icon {
      width: 64px;
      height: 64px;
      background: linear-gradient(135deg, #e8e2ff, #ffe3f0);
      border-radius: 18px;
      display: grid;
      place-items: center;
      margin: 0 auto 14px;
      font-size: 24px;
      color: #6c4cff;
      transition: 0.25s;
    }
    .cat-card-modern:hover .cat-icon {
      background: linear-gradient(135deg, #6c4cff, #ff4f9a);
      color: #fff;
      transform: scale(1.04) rotate(-2deg);
      box-shadow: 0 8px 24px rgba(108, 76, 255, 0.2);
    }

    .product-card-premium {
      background: rgba(255, 255, 255, 0.9);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(108, 76, 255, 0.06);
      border-radius: 26px;
      overflow: hidden;
      transition: all 0.3s ease;
      box-shadow: 0 6px 18px rgba(0, 0, 0, 0.02);
      display: flex;
      flex-direction: column;
    }
    .product-card-premium:hover {
      transform: translateY(-10px);
      border-color: rgba(108, 76, 255, 0.15);
      box-shadow: 0 25px 50px rgba(76, 61, 170, 0.08);
    }
    .product-img {
      aspect-ratio: 1 / 1;
      background: linear-gradient(145deg, #f0efff, #ffeef6);
      position: relative;
      overflow: hidden;
    }
    .product-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.5s ease;
    }
    .product-card-premium:hover .product-img img {
      transform: scale(1.06);
    }

    .deal-wrapper {
      background: #fff;
      border-radius: 28px;
      border: 1px solid rgba(108, 76, 255, 0.06);
      box-shadow: 0 20px 50px rgba(76, 61, 170, 0.06);
      display: flex;
      overflow: hidden;
      position: relative;
    }
    .deal-wrapper::before {
      content: '';
      position: absolute;
      width: 320px;
      height: 320px;
      right: -80px;
      bottom: -120px;
      background: radial-gradient(circle, rgba(255, 79, 154, 0.06), transparent 70%);
      pointer-events: none;
    }
    .deal-img {
      flex: 0 0 45%;
      min-height: 280px;
      background: #f2f0fa;
    }
    .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.5s;
    }
    .deal-wrapper:hover .deal-img img {
      transform: scale(1.02);
    }

    .timer-box-dark {
      background: linear-gradient(135deg, #1c1743, #38306f);
      color: #fff;
      padding: 0.7rem 0.5rem;
      min-width: 64px;
      border-radius: 16px;
      text-align: center;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
    }
    .timer-box-dark .num {
      font-size: 1.6rem;
      font-weight: 800;
    }
    .timer-box-dark .label {
      font-size: 0.6rem;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      color: rgba(255, 255, 255, 0.5);
    }

    .newsletter-glow {
      background: linear-gradient(120deg, #1c1743, #5336b9 55%, #b72c76);
      border-radius: 30px;
      padding: 3rem 3.5rem;
      position: relative;
      overflow: hidden;
      color: #fff;
    }
    .newsletter-glow::before {
      content: '';
      position: absolute;
      width: 280px;
      height: 280px;
      right: -60px;
      top: -80px;
      background: rgba(255, 255, 255, 0.04);
      border-radius: 50%;
    }

    .testimonial-card-modern {
      background: #fff;
      border-radius: 26px;
      padding: 1.8rem;
      border: 1px solid rgba(108, 76, 255, 0.04);
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.02);
      flex: 0 0 320px;
      scroll-snap-align: start;
      transition: 0.25s;
    }
    .testimonial-card-modern:hover {
      transform: translateY(-4px);
      box-shadow: 0 18px 40px rgba(76, 61, 170, 0.06);
    }

    .footer-gradient {
      background: linear-gradient(180deg, transparent, rgba(108, 76, 255, 0.02));
      border-top: 1px solid rgba(108, 76, 255, 0.06);
    }

    /* responsive */
    @media (max-width: 992px) {
      .deal-wrapper {
        flex-direction: column;
      }
      .deal-img {
        flex: 0 0 220px;
      }
      .newsletter-glow {
        padding: 2rem 1.8rem;
      }
    }

    @media (max-width: 768px) {
      .hero-gradient {
        border-radius: 20px;
        margin: 0 12px;
      }
      .cat-card-modern {
        padding: 1.2rem 0.4rem;
      }
      .cat-icon {
        width: 48px;
        height: 48px;
        font-size: 18px;
      }
      .product-card-premium {
        border-radius: 18px;
      }
    }

    @media (max-width: 480px) {
      .timer-box-dark {
        min-width: 48px;
        padding: 0.4rem 0.2rem;
      }
      .timer-box-dark .num {
        font-size: 1.2rem;
      }
    }

    /* utility */
    .container {
      max-width: 1240px;
      margin: 0 auto;
      padding: 0 20px;
    }

    .grid-cat {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .grid-prod {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 22px;
    }

    @media (max-width: 1024px) {
      .grid-cat {
        grid-template-columns: repeat(3, 1fr);
      }
      .grid-prod {
        grid-template-columns: repeat(3, 1fr);
      }
    }
    @media (max-width: 700px) {
      .grid-cat {
        grid-template-columns: repeat(2, 1fr);
      }
      .grid-prod {
        grid-template-columns: repeat(2, 1fr);
        gap: 12px;
      }
    }
    @media (max-width: 480px) {
      .grid-cat {
        gap: 8px;
      }
      .grid-prod {
        gap: 8px;
      }
    }
  </style>
</head>
<body>

  <!-- HEADER -->
  <header class="header-blur">
    <div class="container" style="display:flex;align-items:center;justify-content:space-between;min-height:74px;gap:14px;flex-wrap:wrap;">
      <div style="display:flex;align-items:center;gap:12px;">
        <button id="mobileToggle" style="background:none;border:none;font-size:1.4rem;color:#17172f;display:none;" aria-label="menu">
          <i class="fas fa-bars"></i>
        </button>
        <a href="#" style="display:flex;align-items:center;gap:10px;font-size:1.4rem;font-weight:800;color:#17172f;text-decoration:none;">
          <i class="fas fa-store-alt" style="color:#6c4cff;filter:drop-shadow(0 4px 10px rgba(108,76,255,0.3));"></i>
          <span>Nexus<span style="background:linear-gradient(90deg,#6c4cff,#ff4f9a);-webkit-background-clip:text;background-clip:text;color:transparent;">Shop</span></span>
        </a>
      </div>

      <nav style="display:flex;gap:4px;">
        <a href="#" style="padding:8px 16px;border-radius:40px;font-weight:600;font-size:0.9rem;color:#70728a;background:linear-gradient(135deg,rgba(108,76,255,0.08),rgba(255,79,154,0.04));color:#6c4cff;">Home</a>
        <a href="#categories" style="padding:8px 16px;border-radius:40px;font-weight:600;font-size:0.9rem;color:#70728a;transition:0.2s;">Categories</a>
        <a href="#products" style="padding:8px 16px;border-radius:40px;font-weight:600;font-size:0.9rem;color:#70728a;transition:0.2s;">Trending</a>
        <a href="#deals" style="padding:8px 16px;border-radius:40px;font-weight:600;font-size:0.9rem;color:#70728a;transition:0.2s;">Deals</a>
      </nav>

      <div style="display:flex;align-items:center;gap:12px;">
        <div style="background:#f0f1ff;border-radius:60px;padding:2px 8px 2px 18px;display:flex;align-items:center;border:1px solid transparent;transition:0.2s;">
          <input type="text" id="searchInput" placeholder="Search..." style="background:transparent;border:none;outline:none;padding:8px 0;font-size:0.85rem;width:150px;">
          <button id="searchBtn" style="background:transparent;border:none;color:#70728a;padding:8px 8px;border-radius:50%;transition:0.2s;"><i class="fas fa-search"></i></button>
        </div>
        <button style="background:transparent;border:none;font-size:1.2rem;color:#70728a;"><i class="far fa-user"></i></button>
        <button style="background:transparent;border:none;font-size:1.2rem;color:#70728a;"><i class="far fa-heart"></i></button>
        <div style="position:relative;">
          <button id="cartBtn" style="background:transparent;border:none;font-size:1.3rem;color:#17172f;"><i class="fas fa-shopping-bag"></i></button>
          <span id="cartCount" style="position:absolute;top:-6px;right:-6px;background:linear-gradient(135deg,#ff4f9a,#ff8a3d);color:#fff;border-radius:50%;width:20px;height:20px;font-size:0.65rem;font-weight:800;display:grid;place-items:center;border:2px solid #fff;">0</span>
        </div>
      </div>
    </div>
    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none;background:rgba(255,255,255,0.98);padding:16px 0;border-top:1px solid rgba(108,76,255,0.06);">
      <div class="container" style="display:flex;flex-direction:column;gap:6px;">
        <a href="#" style="padding:12px 14px;border-radius:14px;font-weight:600;color:#17172f;"><i class="fas fa-home" style="width:24px;color:#6c4cff;"></i> Home</a>
        <a href="#categories" style="padding:12px 14px;border-radius:14px;font-weight:600;color:#17172f;"><i class="fas fa-th-large" style="width:24px;color:#6c4cff;"></i> Categories</a>
        <a href="#products" style="padding:12px 14px;border-radius:14px;font-weight:600;color:#17172f;"><i class="fas fa-fire" style="width:24px;color:#6c4cff;"></i> Trending</a>
        <a href="#deals" style="padding:12px 14px;border-radius:14px;font-weight:600;color:#17172f;"><i class="fas fa-tag" style="width:24px;color:#6c4cff;"></i> Deals</a>
      </div>
    </div>
  </header>

  <!-- HERO -->
  <section style="padding:28px 0 0;">
    <div class="container">
      <div class="hero-gradient" style="padding:60px 44px;position:relative;z-index:1;">
        <div style="position:relative;z-index:2;max-width:700px;">
          <span style="display:inline-flex;align-items:center;gap:8px;background:rgba(255,255,255,0.1);backdrop-filter:blur(8px);border:1px solid rgba(255,255,255,0.15);border-radius:60px;padding:6px 18px 6px 14px;color:#fff;font-weight:700;font-size:0.8rem;margin-bottom:20px;">
            <i class="fas fa-sparkles" style="color:#ffd166;"></i> New Collection 2026
          </span>
          <h1 style="font-family:'Playfair Display',serif;font-size:clamp(2.4rem,5vw,4rem);color:#fff;line-height:1.05;letter-spacing:-0.02em;margin-bottom:12px;">Discover Premium <br>Essentials</h1>
          <p style="color:rgba(255,255,255,0.75);font-size:1.05rem;max-width:500px;margin-bottom:28px;line-height:1.6;">Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
          <div style="display:flex;gap:14px;flex-wrap:wrap;">
            <button class="btn-shine" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
            <button class="btn-outline-light" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="container" style="padding:64px 0 20px;" id="categories">
    <div style="display:flex;align-items:flex-end;justify-content:space-between;margin-bottom:26px;flex-wrap:wrap;gap:12px;">
      <div>
        <h2 style="font-family:'Playfair Display',serif;font-size:2rem;font-weight:700;letter-spacing:-0.02em;">Browse Categories</h2>
        <p style="color:#70728a;margin-top:4px;">Find exactly what you're looking for</p>
      </div>
      <a href="#" style="color:#6c4cff;font-weight:700;display:flex;align-items:center;gap:8px;transition:0.2s;">All Categories <i class="fas fa-arrow-right"></i></a>
    </div>
    <div class="grid-cat" id="categoriesGrid"></div>
  </section>

  <!-- PRODUCTS -->
  <section class="container" style="padding:40px 0;" id="products">
    <div style="display:flex;align-items:flex-end;justify-content:space-between;margin-bottom:26px;flex-wrap:wrap;gap:12px;">
      <div>
        <h2 style="font-family:'Playfair Display',serif;font-size:2rem;font-weight:700;letter-spacing:-0.02em;">Trending Now</h2>
        <p style="color:#70728a;margin-top:4px;">What's hot — popular picks from our community</p>
      </div>
      <a href="#" style="color:#6c4cff;font-weight:700;display:flex;align-items:center;gap:8px;transition:0.2s;">View All <i class="fas fa-arrow-right"></i></a>
    </div>
    <div class="grid-prod" id="productsGrid"></div>
  </section>

  <!-- DEAL -->
  <section class="container" style="padding:20px 0 40px;" id="deals">
    <div style="margin-bottom:24px;">
      <h2 style="font-family:'Playfair Display',serif;font-size:2rem;font-weight:700;letter-spacing:-0.02em;">⚡ Flash Deal</h2>
      <p style="color:#70728a;">Grab it before it's gone — limited stock</p>
    </div>
    <div class="deal-wrapper">
      <div class="deal-img">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
      </div>
      <div style="padding:40px 38px;flex:1;position:relative;z-index:2;display:flex;flex-direction:column;justify-content:center;">
        <span style="align-self:flex-start;display:inline-flex;align-items:center;gap:8px;background:#fff0d7;color:#e07800;padding:6px 16px;border-radius:60px;font-weight:800;font-size:0.7rem;text-transform:uppercase;letter-spacing:0.02em;margin-bottom:14px;"><i class="fas fa-bolt"></i> Limited Offer</span>
        <h3 style="font-size:1.8rem;font-weight:800;letter-spacing:-0.02em;margin-bottom:4px;">MacBook Air M2</h3>
        <p style="color:#70728a;max-width:460px;margin-bottom:16px;line-height:1.6;">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
        <div style="display:flex;align-items:center;gap:12px;margin-bottom:6px;">
          <span style="font-size:2.2rem;font-weight:800;background:linear-gradient(90deg,#6c4cff,#ff4f9a);-webkit-background-clip:text;background-clip:text;color:transparent;">$999</span>
          <span style="text-decoration:line-through;color:#a6a8bd;font-size:1.1rem;">$1,199</span>
        </div>
        <p style="color:#70728a;font-size:0.9rem;margin-bottom:10px;">Only <strong style="color:#ff4f9a;">12</strong> items left — hurry!</p>
        <div style="display:flex;gap:10px;margin:6px 0 18px;" id="dealTimer">
          <div class="timer-box-dark"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
          <div class="timer-box-dark"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
          <div class="timer-box-dark"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
          <div class="timer-box-dark"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
        </div>
        <button class="btn-shine" id="buyDeal" style="align-self:flex-start;"><i class="fas fa-cart-plus"></i> Add to Cart</button>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="container" style="padding:40px 0;" id="testimonials">
    <div style="margin-bottom:24px;">
      <h2 style="font-family:'Playfair Display',serif;font-size:2rem;font-weight:700;letter-spacing:-0.02em;">What Our Customers Say</h2>
      <p style="color:#70728a;">Real reviews from real people</p>
    </div>
    <div style="display:flex;gap:20px;overflow-x:auto;padding:6px 4px 18px;scroll-snap-type:x mandatory;" id="testimonialsList"></div>
  </section>

  <!-- NEWSLETTER -->
  <section class="container" style="padding:10px 0 50px;">
    <div class="newsletter-glow">
      <div style="position:relative;z-index:2;display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between;gap:30px;">
        <div>
          <h3 style="font-family:'Playfair Display',serif;font-size:1.7rem;font-weight:700;letter-spacing:-0.02em;">Stay in the Loop</h3>
          <p style="color:rgba(255,255,255,0.7);">Get exclusive offers, early access & new arrivals</p>
        </div>
        <form id="newsletterForm" style="display:flex;flex-wrap:wrap;gap:10px;flex:1;max-width:500px;" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" style="flex:1;min-width:200px;padding:14px 22px;border-radius:60px;border:1px solid rgba(255,255,255,0.15);background:rgba(255,255,255,0.08);backdrop-filter:blur(6px);color:#fff;outline:none;" required>
          <button class="btn-shine" id="subscribeBtn" style="background:#fff;color:#6c4cff;box-shadow:0 6px 20px rgba(0,0,0,0.08);"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg" style="width:100%;font-size:0.9rem;margin-top:2px;"></div>
        </form>
      </div>
    </div>
  </section>

  <!-- FOOTER -->
  <footer class="footer-gradient" style="padding:40px 0 20px;">
    <div class="container">
      <div style="display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px;margin-bottom:30px;">
        <div>
          <div style="display:flex;align-items:center;gap:10px;font-size:1.3rem;font-weight:800;margin-bottom:10px;">
            <i class="fas fa-store-alt" style="color:#6c4cff;"></i>
            <span>Nexus<span style="background:linear-gradient(90deg,#6c4cff,#ff4f9a);-webkit-background-clip:text;background-clip:text;color:transparent;">Shop</span></span>
          </div>
          <p style="color:#70728a;max-width:300px;font-size:0.9rem;line-height:1.6;">Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
          <div style="display:flex;gap:8px;margin-top:16px;">
            <a href="#" style="width:38px;height:38px;display:grid;place-items:center;border-radius:14px;background:#fff;border:1px solid rgba(108,76,255,0.06);color:#70728a;transition:0.2s;"><i class="fab fa-facebook-f"></i></a>
            <a href="#" style="width:38px;height:38px;display:grid;place-items:center;border-radius:14px;background:#fff;border:1px solid rgba(108,76,255,0.06);color:#70728a;transition:0.2s;"><i class="fab fa-twitter"></i></a>
            <a href="#" style="width:38px;height:38px;display:grid;place-items:center;border-radius:14px;background:#fff;border:1px solid rgba(108,76,255,0.06);color:#70728a;transition:0.2s;"><i class="fab fa-instagram"></i></a>
          </div>
        </div>
        <div><h5 style="font-weight:800;font-size:0.9rem;margin-bottom:14px;">Company</h5><ul style="list-style:none;display:flex;flex-direction:column;gap:8px;"><li><a href="#" style="color:#70728a;font-size:0.9rem;text-decoration:none;">About</a></li><li><a href="#" style="color:#70728a;font-size:0.9rem;text-decoration:none;">Careers</a></li><li><a href="#" style="color:#70728a;font-size:0.9rem;text-decoration:none;">Press</a></li></ul></div>
        <div><h5 style="font-weight:800;font-size:0.9rem;margin-bottom:14px;">Support</h5><ul style="list-style:none;display:flex;flex-direction:column;gap:8px;"><li><a href="#" style="color:#70728a;font-size:0.9rem;text-decoration:none;">Help Center</a></li><li><a href="#" style="color:#70728a;font-size:0.9rem;text-decoration:none;">Shipping</a></li><li><a href="#" style="color:#70728a;font-size:0.9rem;text-decoration:none;">Returns</a></li></ul></div>
        <div><h5 style="font-weight:800;font-size:0.9rem;margin-bottom:14px;">Legal</h5><ul style="list-style:none;display:flex;flex-direction:column;gap:8px;"><li><a href="#" style="color:#70728a;font-size:0.9rem;text-decoration:none;">Privacy</a></li><li><a href="#" style="color:#70728a;font-size:0.9rem;text-decoration:none;">Terms</a></li></ul></div>
      </div>
      <div style="border-top:1px solid rgba(108,76,255,0.06);padding-top:20px;text-align:center;color:#a6a8bd;font-size:0.8rem;">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
    </div>
  </footer>

  <script>
    // ----- DATA -----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
        img: 'https
