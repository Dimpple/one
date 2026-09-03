<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Shop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT VARIABLES ========== */
        <style>
/* =========================================================
   NEXUSSHOP — PREMIUM COLOR UI
   ========================================================= */

@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700;800&display=swap');

:root {
    --bg: #f6f7ff;
    --bg-soft: #eef0ff;
    --card: rgba(255,255,255,.92);
    --white: #ffffff;

    --primary: #17172f;
    --primary-2: #292957;

    --purple: #6c4cff;
    --purple-dark: #5438e8;
    --purple-light: #e8e2ff;

    --pink: #ff4f9a;
    --pink-light: #ffe3f0;

    --blue: #3b82f6;
    --cyan: #06b6d4;

    --orange: #ff8a3d;
    --yellow: #ffc857;

    --green: #18b981;
    --green-light: #d9faed;

    --text: #17172f;
    --muted: #70728a;
    --muted-light: #a6a8bd;

    --border: rgba(91, 75, 190, .12);

    --radius: 22px;
    --radius-md: 16px;
    --radius-sm: 12px;

    --shadow:
        0 10px 35px rgba(39, 34, 91, .08);

    --shadow-hover:
        0 20px 55px rgba(76, 61, 170, .18);

    --transition: .3s cubic-bezier(.4,0,.2,1);

    --container: 1240px;
}

/* =========================================================
   RESET
   ========================================================= */

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: 'Inter', sans-serif;
    background:
        radial-gradient(circle at 10% 0%, rgba(108,76,255,.08), transparent 28%),
        radial-gradient(circle at 90% 15%, rgba(255,79,154,.07), transparent 25%),
        var(--bg);
    color: var(--text);
    line-height: 1.5;
    -webkit-font-smoothing: antialiased;
}

a {
    color: inherit;
    text-decoration: none;
}

img {
    display: block;
    max-width: 100%;
}

button,
input {
    font-family: inherit;
}

button {
    cursor: pointer;
    border: 0;
}

/* =========================================================
   CONTAINER
   ========================================================= */

.container {
    width: 100%;
    max-width: var(--container);
    margin: auto;
    padding: 0 24px;
}

.muted {
    color: var(--muted);
}

.text-center {
    text-align: center;
}

/* =========================================================
   BUTTONS
   ========================================================= */

.btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 9px;

    padding: 13px 27px;

    border-radius: 999px;

    font-size: 14px;
    font-weight: 700;

    transition: var(--transition);

    position: relative;
    overflow: hidden;
}

.btn::after {
    content: "";
    position: absolute;
    inset: 0;

    background: linear-gradient(
        110deg,
        transparent,
        rgba(255,255,255,.25),
        transparent
    );

    transform: translateX(-100%);
    transition: .6s;
}

.btn:hover::after {
    transform: translateX(100%);
}

.btn-primary {
    color: white;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--pink)
        );

    box-shadow:
        0 10px 28px rgba(108,76,255,.28);
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow:
        0 15px 35px rgba(108,76,255,.38);
}

.btn-secondary {
    background: var(--primary);
    color: white;
}

.btn-secondary:hover {
    transform: translateY(-3px);
    background: var(--primary-2);
}

.btn-outline {
    background: white;
    border: 1px solid var(--border);
    color: var(--primary);
}

.btn-outline:hover {
    background: var(--purple);
    color: white;
    border-color: var(--purple);
    transform: translateY(-2px);
}

.btn-ghost {
    background: rgba(255,255,255,.12);
    border: 1px solid rgba(255,255,255,.3);
    color: white;

    backdrop-filter: blur(12px);
}

.btn-ghost:hover {
    background: rgba(255,255,255,.22);
    transform: translateY(-3px);
}

.btn-sm {
    padding: 9px 17px;
    font-size: 13px;
}

/* =========================================================
   HEADER
   ========================================================= */

header {
    position: sticky;
    top: 0;
    z-index: 1000;

    background: rgba(255,255,255,.78);

    backdrop-filter: blur(22px);
    -webkit-backdrop-filter: blur(22px);

    border-bottom: 1px solid rgba(108,76,255,.08);

    box-shadow:
        0 5px 25px rgba(40,35,90,.04);
}

.header-inner {
    min-height: 76px;

    display: flex;
    align-items: center;
    justify-content: space-between;

    gap: 18px;
}

.brand {
    display: flex;
    align-items: center;
    gap: 10px;

    font-size: 22px;
    font-weight: 800;

    letter-spacing: -.7px;

    color: var(--primary);
}

.brand i {
    font-size: 25px;

    color: var(--purple);

    filter:
        drop-shadow(
            0 5px 12px rgba(108,76,255,.3)
        );
}

.brand .accent {
    background:
        linear-gradient(
            90deg,
            var(--purple),
            var(--pink)
        );

    -webkit-background-clip: text;
    background-clip: text;

    color: transparent;
}

nav.main-nav ul {
    display: flex;
    gap: 5px;
    list-style: none;
}

nav.main-nav li a {
    display: flex;
    align-items: center;
    gap: 7px;

    padding: 9px 14px;

    border-radius: 999px;

    font-size: 13px;
    font-weight: 600;

    color: var(--muted);

    transition: var(--transition);
}

nav.main-nav li a:hover,
nav.main-nav li a.active {
    color: var(--purple);

    background:
        linear-gradient(
            135deg,
            rgba(108,76,255,.10),
            rgba(255,79,154,.07)
        );
}

nav.main-nav li a i {
    font-size: 12px;
}

/* =========================================================
   HEADER ACTIONS
   ========================================================= */

.header-actions {
    display: flex;
    align-items: center;
    gap: 5px;
}

.header-actions .icon-btn {
    width: 42px;
    height: 42px;

    display: grid;
    place-items: center;

    border-radius: 50%;

    color: var(--muted);

    font-size: 17px;

    transition: var(--transition);

    background: transparent;
}

.header-actions .icon-btn:hover {
    color: var(--purple);

    background:
        linear-gradient(
            135deg,
            var(--purple-light),
            var(--pink-light)
        );

    transform: translateY(-2px);
}

.cart-wrap {
    position: relative;
}

.cart-count {
    position: absolute;

    top: -3px;
    right: -2px;

    width: 20px;
    height: 20px;

    display: grid;
    place-items: center;

    border-radius: 50%;

    background:
        linear-gradient(
            135deg,
            var(--pink),
            var(--orange)
        );

    color: white;

    font-size: 10px;
    font-weight: 800;

    border: 2px solid white;

    transition: .2s;
}

/* =========================================================
   SEARCH
   ========================================================= */

.search-wrap {
    min-width: 235px;

    display: flex;
    align-items: center;

    padding: 3px 7px 3px 17px;

    background: #f0f1ff;

    border: 1px solid transparent;

    border-radius: 999px;

    transition: var(--transition);
}

.search-wrap:focus-within {
    background: white;

    border-color: rgba(108,76,255,.35);

    box-shadow:
        0 0 0 5px rgba(108,76,255,.08);
}

.search-wrap input {
    width: 100%;

    padding: 9px 0;

    border: 0;
    outline: 0;

    background: transparent;

    color: var(--primary);

    font-size: 13px;
}

.search-wrap input::placeholder {
    color: var(--muted-light);
}

.search-wrap button {
    width: 34px;
    height: 34px;

    display: grid;
    place-items: center;

    border-radius: 50%;

    color: var(--muted);

    transition: var(--transition);
}

.search-wrap button:hover {
    color: white;

    background: var(--purple);
}

/* =========================================================
   MOBILE MENU
   ========================================================= */

.mobile-toggle {
    display: none;

    width: 42px;
    height: 42px;

    place-items: center;

    border-radius: 50%;

    background: var(--purple-light);
    color: var(--purple);

    font-size: 18px;
}

#mobileMenu {
    display: none;

    padding: 12px 0 20px;

    background: rgba(255,255,255,.95);

    border-top: 1px solid var(--border);
}

#mobileMenu ul {
    list-style: none;

    display: flex;
    flex-direction: column;

    gap: 5px;
}

#mobileMenu ul li a {
    display: flex;
    align-items: center;
    gap: 12px;

    padding: 13px 15px;

    border-radius: var(--radius-sm);

    font-weight: 600;

    color: var(--primary);

    transition: var(--transition);
}

#mobileMenu ul li a:hover {
    background: var(--purple-light);
    color: var(--purple);
}

#mobileMenu ul li a i {
    width: 22px;
    color: var(--purple);
}

/* =========================================================
   HERO
   ========================================================= */

.hero {
    position: relative;

    min-height: 540px;

    display: flex;
    align-items: center;

    margin: 24px 24px 0;

    padding: 70px 0;

    overflow: hidden;

    border-radius: 30px;

    background:
        linear-gradient(
            120deg,
            #17133e 0%,
            #37247c 48%,
            #9a2d70 100%
        );

    box-shadow:
        0 25px 70px rgba(56,35,130,.25);
}

.hero::before {
    content: "";

    position: absolute;
    inset: 0;

    background:
        linear-gradient(
            90deg,
            rgba(15,12,46,.85),
            rgba(50,32,110,.5),
            rgba(255,79,154,.15)
        ),
        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80')
        center/cover;

    opacity: .72;
}

.hero::after {
    content: "";

    position: absolute;

    width: 450px;
    height: 450px;

    right: -130px;
    top: -150px;

    border-radius: 50%;

    background:
        radial-gradient(
            circle,
            rgba(255,79,154,.5),
            transparent 68%
        );

    filter: blur(10px);
}

.hero .container {
    position: relative;
    z-index: 2;
}

.hero .badge {
    display: inline-flex;
    align-items: center;
    gap: 7px;

    margin-bottom: 18px;

    padding: 7px 15px;

    border-radius: 999px;

    background: rgba(255,255,255,.12);

    border: 1px solid rgba(255,255,255,.22);

    color: #fff;

    backdrop-filter: blur(12px);

    font-size: 12px;
    font-weight: 700;
}

.hero .badge i {
    color: #ffd166;
}

.hero h1 {
    max-width: 700px;

    margin-bottom: 18px;

    font-family: 'Playfair Display', serif;

    font-size: clamp(38px, 5vw, 64px);

    line-height: 1.08;

    letter-spacing: -1.5px;

    color: white;
}

.hero p {
    max-width: 560px;

    margin-bottom: 30px;

    color: rgba(255,255,255,.78);

    font-size: 17px;

    line-height: 1.7;
}

.hero .actions {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
}

/* =========================================================
   SECTIONS
   ========================================================= */

.section {
    padding: 72px 0;
}

.section-header {
    display: flex;
    align-items: flex-end;
    justify-content: space-between;

    gap: 20px;

    margin-bottom: 30px;
}

.section-header .title-group h2 {
    font-size: 29px;
    font-weight: 800;

    letter-spacing: -.8px;
}

.section-header .title-group p {
    margin-top: 5px;

    color: var(--muted);

    font-size: 14px;
}

.section-header .view-all {
    display: flex;
    align-items: center;
    gap: 7px;

    color: var(--purple);

    font-size: 13px;
    font-weight: 700;

    transition: var(--transition);
}

.section-header .view-all:hover {
    gap: 13px;
    color: var(--pink);
}

/* =========================================================
   CATEGORIES
   ========================================================= */

.categories-grid {
    display: grid;

    grid-template-columns: repeat(6,1fr);

    gap: 16px;
}

.cat-card {
    position: relative;

    padding: 25px 15px;

    text-align: center;

    border-radius: var(--radius);

    background: var(--card);

    border: 1px solid var(--border);

    box-shadow: var(--shadow);

    cursor: pointer;

    transition: var(--transition);

    overflow: hidden;
}

.cat-card::before {
    content: "";

    position: absolute;

    width: 90px;
    height: 90px;

    right: -35px;
    top: -35px;

    border-radius: 50%;

    background: var(--purple-light);

    opacity: .5;
}

.cat-card:hover {
    transform: translateY(-8px);

    border-color: rgba(108,76,255,.25);

    box-shadow: var(--shadow-hover);
}

.cat-card .icon-wrap {
    position: relative;
    z-index: 1;

    width: 60px;
    height: 60px;

    display: grid;
    place-items: center;

    margin: auto auto 13px;

    border-radius: 18px;

    background:
        linear-gradient(
            135deg,
            var(--purple-light),
            var(--pink-light)
        );

    color: var(--purple);

    font-size: 23px;

    transition: var(--transition);
}

.cat-card:hover .icon-wrap {
    color: white;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--pink)
        );

    transform: rotate(-5deg) scale(1.08);

    box-shadow:
        0 10px 25px rgba(108,76,255,.25);
}

.cat-card h4 {
    position: relative;

    font-size: 14px;
    font-weight: 700;
}

.cat-card .count {
    margin-top: 4px;

    color: var(--muted);

    font-size: 12px;
}

/* =========================================================
   PRODUCTS
   ========================================================= */

.products-grid {
    display: grid;

    grid-template-columns: repeat(4,1fr);

    gap: 22px;
}

.product-card {
    overflow: hidden;

    display: flex;
    flex-direction: column;

    border-radius: var(--radius);

    background: var(--card);

    border: 1px solid var(--border);

    box-shadow: var(--shadow);

    transition: var(--transition);
}

.product-card:hover {
    transform: translateY(-8px);

    border-color: rgba(108,76,255,.22);

    box-shadow: var(--shadow-hover);
}

.product-card .img-wrap {
    position: relative;

    overflow: hidden;

    aspect-ratio: 1/1;

    background:
        linear-gradient(
            135deg,
            #f0efff,
            #ffeef6
        );
}

.product-card .img-wrap::after {
    content: "";

    position: absolute;
    inset: 0;

    background:
        linear-gradient(
            180deg,
            transparent 60%,
            rgba(20,17,50,.12)
        );

    pointer-events: none;
}

.product-card .img-wrap img {
    width: 100%;
    height: 100%;

    object-fit: cover;

    transition: .6s ease;
}

.product-card:hover .img-wrap img {
    transform: scale(1.08);
}

.product-card .badge {
    position: absolute;

    z-index: 2;

    top: 13px;
    left: 13px;

    padding: 6px 12px;

    border-radius: 999px;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--blue)
        );

    color: white;

    font-size: 10px;
    font-weight: 800;

    box-shadow:
        0 5px 15px rgba(108,76,255,.25);
}

.product-card .badge.sale {
    color: white;

    background:
        linear-gradient(
            135deg,
            var(--orange),
            var(--pink)
        );
}

.product-card .wish-btn {
    position: absolute;

    z-index: 3;

    top: 12px;
    right: 12px;

    width: 38px;
    height: 38px;

    display: grid;
    place-items: center;

    border-radius: 50%;

    background: rgba(255,255,255,.88);

    color: var(--muted);

    backdrop-filter: blur(10px);

    transition: var(--transition);

    box-shadow:
        0 5px 15px rgba(20,15,50,.08);
}

.product-card .wish-btn:hover {
    color: var(--pink);

    background: white;

    transform: scale(1.12);

    box-shadow:
        0 8px 20px rgba(255,79,154,.2);
}

.product-card .body {
    flex: 1;

    display: flex;
    flex-direction: column;
    gap: 6px;

    padding: 17px 18px 12px;
}

.product-card .category-tag {
    color: var(--purple);

    font-size: 10px;
    font-weight: 800;

    text-transform: uppercase;

    letter-spacing: .8px;
}

.product-card .body h5 {
    font-size: 15px;
    font-weight: 700;

    line-height: 1.35;

    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;

    overflow: hidden;
}

.product-card .body .price-row {
    display: flex;
    align-items: center;
    gap: 9px;

    margin-top: 5px;
}

.product-card .body .price {
    font-size: 18px;
    font-weight: 800;

    background:
        linear-gradient(
            90deg,
            var(--purple),
            var(--pink)
        );

    -webkit-background-clip: text;
    background-clip: text;

    color: transparent;
}

.product-card .body .old-price {
    color: var(--muted-light);

    font-size: 13px;

    text-decoration: line-through;
}

.product-card .body .rating {
    display: flex;
    align-items: center;
    gap: 5px;

    color: #ffb400;

    font-size: 12px;
}

.product-card .body .rating span {
    color: var(--muted);
}

.product-card .footer {
    display: flex;
    gap: 9px;

    padding: 0 18px 18px;
}

.product-card .footer .add-btn {
    flex: 1;

    display: flex;
    align-items: center;
    justify-content: center;
    gap: 8px;

    padding: 11px;

    border-radius: var(--radius-sm);

    color: white;

    background:
        linear-gradient(
            135deg,
            var(--primary),
            #35356a
        );

    font-size: 13px;
    font-weight: 700;

    transition: var(--transition);
}

.product-card .footer .add-btn:hover {
    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--pink)
        );

    transform: translateY(-2px);

    box-shadow:
        0 8px 20px rgba(108,76,255,.22);
}

.product-card .footer .add-btn.added {
    background:
        linear-gradient(
            135deg,
            var(--green),
            #0e9f70
        );
}

/* =========================================================
   FLASH DEAL
   ========================================================= */

.deal-wrap {
    position: relative;

    display: flex;

    overflow: hidden;

    border-radius: 26px;

    background: white;

    border: 1px solid var(--border);

    box-shadow: var(--shadow-hover);
}

.deal-wrap::before {
    content: "";

    position: absolute;

    width: 350px;
    height: 350px;

    right: -120px;
    bottom: -160px;

    border-radius: 50%;

    background:
        radial-gradient(
            circle,
            rgba(255,79,154,.13),
            transparent 70%
        );
}

.deal-wrap .deal-img {
    flex: 0 0 48%;

    min-height: 350px;

    background: #eee;
}

.deal-wrap .deal-img img {
    width: 100%;
    height: 100%;

    object-fit: cover;

    transition: .6s;
}

.deal-wrap:hover .deal-img img {
    transform: scale(1.04);
}

.deal-wrap .deal-content {
    position: relative;
    z-index: 1;

    flex: 1;

    padding: 48px;

    display: flex;
    flex-direction: column;
    justify-content: center;
}

.deal-wrap .deal-content .tag {
    align-self: flex-start;

    display: inline-flex;
    align-items: center;
    gap: 7px;

    margin-bottom: 14px;

    padding: 7px 14px;

    border-radius: 999px;

    background: #fff0d7;

    color: #e07800;

    font-size: 11px;
    font-weight: 800;

    text-transform: uppercase;
}

.deal-wrap .deal-content h3 {
    margin-bottom: 8px;

    font-size: 31px;
    font-weight: 800;

    letter-spacing: -.8px;
}

.deal-wrap .deal-content .desc {
    max-width: 500px;

    margin-bottom: 18px;

    color: var(--muted);

    font-size: 14px;
    line-height: 1.7;
}

.deal-wrap .deal-content .price-big {
    font-size: 36px;
    font-weight: 800;

    color: var(--primary);
}

.deal-wrap .deal-content .price-big .old {
    margin-left: 10px;

    color: var(--muted-light);

    font-size: 19px;
    font-weight: 400;

    text-decoration: line-through;
}

.deal-wrap .deal-content .stock {
    margin: 4px 0 15px;

    color: var(--muted);

    font-size: 13px;
}

.deal-wrap .deal-content .stock strong {
    color: var(--pink);
}

/* =========================================================
   TIMER
   ========================================================= */

.timer-grid {
    display: flex;
    gap: 10px;

    margin: 14px 0 22px;
}

.timer-box {
    min-width: 68px;

    padding: 11px 10px;

    text-align: center;

    border-radius: 14px;

    background:
        linear-gradient(
            135deg,
            #1c1743,
            #38306f
        );

    color: white;

    box-shadow:
        0 8px 20px rgba(28,23,67,.15);
}

.timer-box .num {
    font-size: 24px;
    font-weight: 800;
}

.timer-box .label {
    margin-top: 1px;

    color: rgba(255,255,255,.55);

    font-size: 9px;
    font-weight: 600;

    text-transform: uppercase;
    letter-spacing: .7px;
}

/* =========================================================
   TESTIMONIALS
   ========================================================= */

.testimonials-scroll {
    display: flex;
    gap: 20px;

    overflow-x: auto;

    padding: 8px 4px 18px;

    scroll-snap-type: x mandatory;
}

.testimonials-scroll::-webkit-scrollbar {
    height: 5px;
}

.testimonials-scroll::-webkit-scrollbar-thumb {
    background:
        linear-gradient(
            90deg,
            var(--purple),
            var(--pink)
        );

    border-radius: 999px;
}

.testimonial-card {
    flex: 0 0 350px;

    padding: 27px;

    border-radius: var(--radius);

    background:
        linear-gradient(
            145deg,
            white,
            #faf9ff
        );

    border: 1px solid var(--border);

    box-shadow: var(--shadow);

    scroll-snap-align: start;

    transition: var(--transition);
}

.testimonial-card:hover {
    transform: translateY(-5px);

    box-shadow: var(--shadow-hover);
}

.testimonial-card .stars {
    margin-bottom: 12px;

    color: #ffb400;

    font-size: 15px;

    letter-spacing: 2px;
}

.testimonial-card blockquote {
    margin-bottom: 18px;

    color: var(--primary);

    font-size: 14px;

    line-height: 1.7;

    font-style: italic;
}

.testimonial-card .author {
    display: flex;
    align-items: center;
    gap: 12px;
}

.testimonial-card .author .avatar {
    width: 46px;
    height: 46px;

    border-radius: 50%;

    object-fit: cover;

    border: 3px solid var(--purple-light);
}

.testimonial-card .author .name {
    font-size: 14px;
    font-weight: 700;
}

.testimonial-card .author .role {
    color: var(--muted);

    font-size: 12px;
}

/* =========================================================
   NEWSLETTER
   ========================================================= */

.newsletter-wrap {
    position: relative;

    overflow: hidden;

    display: flex;
    align-items: center;
    justify-content: space-between;

    gap: 30px;

    padding: 50px 55px;

    border-radius: 28px;

    color: white;

    background:
        linear-gradient(
            120deg,
            #1c1743,
            #5336b9 55%,
            #b72c76
        );

    box-shadow:
        0 20px 55px rgba(67,42,150,.2);
}

.newsletter-wrap::before {
    content: "";

    position: absolute;

    width: 300px;
    height: 300px;

    right: -80px;
    top: -160px;

    border-radius: 50%;

    background:
        rgba(255,255,255,.12);
}

.newsletter-wrap::after {
    content: "";

    position: absolute;

    width: 180px;
    height: 180px;

    left: 45%;
    bottom: -130px;

    border-radius: 50%;

    background:
        rgba(255,79,154,.25);

    filter: blur(10px);
}

.newsletter-wrap .text,
.newsletter-wrap form {
    position: relative;
    z-index: 2;
}

.newsletter-wrap .text h3 {
    margin-bottom: 5px;

    font-size: 27px;
    font-weight: 800;
}

.newsletter-wrap .text p {
    color: rgba(255,255,255,.68);

    font-size: 14px;
}

.newsletter-wrap form {
    display: flex;
    gap: 10px;

    width: 100%;
    max-width: 500px;

    flex-wrap: wrap;
}

.newsletter-wrap form input {
    flex: 1;

    min-width: 210px;

    padding: 14px 20px;

    border: 1px solid rgba(255,255,255,.15);

    border-radius: 999px;

    outline: none;

    background: rgba(255,255,255,.11);

    color: white;

    backdrop-filter: blur(10px);
}

.newsletter-wrap form input::placeholder {
    color: rgba(255,255,255,.5);
}

.newsletter-wrap form input:focus {
    border-color: rgba(255,255,255,.45);

    background: rgba(255,255,255,.16);
}

.newsletter-wrap form .btn {
    background: white;
    color: var(--purple);

    border: 0;
}

.newsletter-wrap form .btn:hover {
    color: white;

    background:
        linear-gradient(
            135deg,
            var(--pink),
            var(--purple)
        );
}

#newsletterMsg {
    width: 100%;

    margin-top: 2px;

    font-size: 13px;
}

/* =========================================================
   FOOTER
   ========================================================= */

footer {
    margin-top: 20px;

    padding: 55px 0 25px;

    background:
        linear-gradient(
            180deg,
            transparent,
            rgba(108,76,255,.035)
        );

    border-top: 1px solid var(--border);
}

.footer-grid {
    display: grid;

    grid-template-columns: 2fr 1fr 1fr 1fr;

    gap: 45px;

    margin-bottom: 35px;
}

.footer-grid .brand-col .brand {
    margin-bottom: 10px;

    font-size: 20px;
}

.footer-grid .brand-col p {
    max-width: 320px;

    color: var(--muted);

    font-size: 13px;

    line-height: 1.7;
}

.footer-grid .brand-col .socials {
    display: flex;
    gap: 9px;

    margin-top: 18px;
}

.footer-grid .brand-col .socials a {
    width: 38px;
    height: 38px;

    display: grid;
    place-items: center;

    border-radius: 12px;

    background: white;

    border: 1px solid var(--border);

    color: var(--muted);

    transition: var(--transition);
}

.footer-grid .brand-col .socials a:hover {
    color: white;

    border-color: transparent;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--pink)
        );

    transform: translateY(-3px);
}

.footer-grid .col h5 {
    margin-bottom: 14px;

    color: var(--primary);

    font-size: 13px;
    font-weight: 800;
}

.footer-grid .col ul {
    display: flex;
    flex-direction: column;

    gap: 8px;

    list-style: none;
}

.footer-grid .col ul li a {
    color: var(--muted);

    font-size: 13px;

    transition: var(--transition);
}

.footer-grid .col ul li a:hover {
    padding-left: 4px;

    color: var(--purple);
}

.footer-bottom {
    padding-top: 22px;

    border-top: 1px solid var(--border);

    color: var(--muted-light);

    font-size: 12px;

    text-align: center;
}

/* =========================================================
   SELECTION
   ========================================================= */

::selection {
    color: white;
    background: var(--purple);
}

/* =========================================================
   SCROLLBAR
   ========================================================= */

::-webkit-scrollbar {
    width: 8px;
}

::-webkit-scrollbar-track {
    background: #f0f1fa;
}

::-webkit-scrollbar-thumb {
    border-radius: 999px;

    background:
        linear-gradient(
            180deg,
            var(--purple),
            var(--pink)
        );
}

/* =========================================================
   RESPONSIVE — 1200px
   ========================================================= */

@media (max-width: 1200px) {

    .products-grid {
        grid-template-columns: repeat(3,1fr);
    }

    .categories-grid {
        grid-template-columns: repeat(3,1fr);
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }
}

/* =========================================================
   RESPONSIVE — 992px
   ========================================================= */

@media (max-width: 992px) {

    .hero {
        min-height: 440px;

        margin: 16px 16px 0;

        border-radius: 25px;
    }

    .hero h1 {
        font-size: 45px;
    }

    .search-wrap {
        min-width: 170px;
    }

    .deal-wrap {
        flex-direction: column;
    }

    .deal-wrap .deal-img {
        min-height: 300px;
    }

    .newsletter-wrap {
        flex-direction: column;

        align-items: flex-start;

        padding: 40px;
    }

    .newsletter-wrap form {
        max-width: 100%;
    }
}

/* =========================================================
   RESPONSIVE — 768px
   ========================================================= */

@media (max-width: 768px) {

    nav.main-nav {
        display: none;
    }

    .mobile-toggle {
        display: grid;
    }

    .header-inner {
        min-height: 68px;
    }

    .brand {
        font-size: 18px;
    }

    .brand i {
        font-size: 21px;
    }

    .search-wrap {
        min-width: 125px;
    }

    .header-actions .icon-btn {
        width: 36px;
        height: 36px;

        font-size: 15px;
    }

    .hero {
        min-height: 380px;

        padding: 45px 0;
    }

    .hero h1 {
        font-size: 35px;
    }

    .hero p {
        font-size: 14px;
    }

    .section {
        padding: 50px 0;
    }

    .section-header .title-group h2 {
        font-size: 24px;
    }

    .products-grid {
        grid-template-columns: repeat(2,1fr);

        gap: 14px;
    }

    .categories-grid {
        grid-template-columns: repeat(2,1fr);

        gap: 12px;
    }

    .deal-wrap .deal-content {
        padding: 32px;
    }

    .deal-wrap .deal-content h3 {
        font-size: 25px;
    }

    .testimonial-card {
        flex: 0 0 300px;
    }

    .footer-grid {
        grid-template-columns: 1fr;

        gap: 25px;
    }
}

/* =========================================================
   RESPONSIVE — 480px
   ========================================================= */

@media (max-width: 480px) {

    .container {
        padding: 0 14px;
    }

    .header-inner {
        gap: 7px;
    }

    .search-wrap {
        min-width: 105px;
        padding-left: 11px;
    }

    .search-wrap input {
        font-size: 12px;
    }

    .header-actions {
        gap: 0;
    }

    .hero {
        margin: 10px 10px 0;

        min-height: 330px;

        padding: 30px 0;

        border-radius: 20px;
    }

    .hero h1 {
        font-size: 28px;

        letter-spacing: -.8px;
    }

    .hero p {
        font-size: 13px;

        line-height: 1.6;
    }

    .hero .actions {
        gap: 8px;
    }

    .hero .actions .btn {
        padding: 10px 17px;

        font-size: 12px;
    }

    .section {
        padding: 38px 0;
    }

    .section-header {
        margin-bottom: 22px;
    }

    .section-header .title-group h2 {
        font-size: 21px;
    }

    .section-header .title-group p {
        font-size: 12px;
    }

    .categories-grid {
        gap: 9px;
    }

    .cat-card {
        padding: 17px 8px;
    }

    .cat-card .icon-wrap {
        width: 46px;
        height: 46px;

        border-radius: 14px;

        font-size: 18px;
    }

    .cat-card h4 {
        font-size: 12px;
    }

    .cat-card .count {
        font-size: 10px;
    }

    .products-grid {
        gap: 9px;
    }

    .product-card {
        border-radius: 15px;
    }

    .product-card .body {
        padding: 11px 11px 8px;
    }

    .product-card .body h5 {
        font-size: 12px;
    }

    .product-card .body .price {
        font-size: 15px;
    }

    .product-card .body .old-price {
        font-size: 11px;
    }

    .product-card .body .rating {
        font-size: 10px;
    }

    .product-card .footer {
        padding: 0 11px 11px;
    }

    .product-card .footer .add-btn {
        padding: 9px;

        font-size: 11px;
    }

    .product-card .wish-btn {
        width: 31px;
        height: 31px;

        font-size: 13px;
    }

    .product-card .badge {
        top: 9px;
        left: 9px;

        padding: 5px 9px;

        font-size: 8px;
    }

    .deal-wrap .deal-img {
        min-height: 200px;
    }

    .deal-wrap .deal-content {
        padding: 24px 18px;
    }

    .deal-wrap .deal-content h3 {
        font-size: 22px;
    }

    .deal-wrap .deal-content .price-big {
        font-size: 27px;
    }

    .timer-grid {
        gap: 7px;
    }

    .timer-box {
        min-width: 48px;

        padding: 7px 5px;

        border-radius: 10px;
    }

    .timer-box .num {
        font-size: 17px;
    }

    .timer-box .label {
        font-size: 8px;
    }

    .newsletter-wrap {
        padding: 28px 20px;

        border-radius: 20px;
    }

    .newsletter-wrap .text h3 {
        font-size: 21px;
    }

    .newsletter-wrap form {
        flex-direction: column;
    }

    .newsletter-wrap form input,
    .newsletter-wrap form .btn {
        width: 100%;
    }

    .testimonial-card {
        flex: 0 0 280px;

        padding: 22px;
    }
}
</style>

    </style>
</head>

<body>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-store-alt"></i>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- HERO -->
        <section class="hero" aria-label="Hero banner">
            <div class="container">
                <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
                <h1>Discover Premium <br>Essentials</h1>
                <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
                    <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="cat-title">Browse Categories</h2>
                        <p>Find exactly what you're looking for</p>
                    </div>
                    <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="prod-title">Trending Now</h2>
                        <p>What's hot — popular picks from our community</p>
                    </div>
                    <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="deals-title">⚡ Flash Deal</h2>
                        <p>Grab it before it's gone — limited stock</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
                        <div>
                            <span class="price-big">$999 <span class="old">$1,199</span></span>
                        </div>
                        <p class="stock">Only <strong>12</strong> items left — hurry!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="test-title">What Our Customers Say</h2>
                        <p>Real reviews from real people</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3 id="news-title">Stay in the Loop</h3>
                        <p>Get exclusive offers, early access & new arrivals</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand">
                        <i class="fas fa-store-alt"></i>
                        <span>Nexus<span class="accent">Shop</span></span>
                    </div>
                    <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">Cookies</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusShop. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- ===== SCRIPT ===== -->
    <script>
        // ============================================================
        // DATA
        // ============================================================
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
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [{
            name: 'Ava Martin',
            role: 'Verified Buyer',
            avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
            text: 'Fast shipping and excellent support. The product exceeded my expectations!',
            stars: 5
        }, {
            name: 'Michael Lee',
            role: 'Frequent Shopper',
            avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
            text: 'Great selection and smooth checkout. Will definitely shop again.',
            stars: 4
        }, {
            name: 'Sophia Chen',
            role: 'Designer',
            avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
            text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
            stars: 5
        }, {
            name: 'James Wilson',
            role: 'Tech Enthusiast',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
            text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
            stars: 5
        }];

        // ============================================================
        // STATE
        // ============================================================
        let cartCount = 0;

        // ============================================================
        // DOM REFS
        // ============================================================
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        // ============================================================
        // RENDER FUNCTIONS
        // ============================================================
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` :
                '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">
                            ${stars} <span>(${p.reviews})</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // Add to cart listeners
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = Number(this.dataset.id);
                    addToCart(id, this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ============================================================
        // UTILITY FUNCTIONS
        // ============================================================
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            // animate
            cartCountEl.style.transform = 'scale(1.3)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1500);
            }
            // subtle feedback
            const cartBtn = document.getElementById('cartBtn');
            cartBtn.style.color = 'var(--accent)';
            setTimeout(() => cartBtn.style.color = '', 400);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // ============================================================
        // DEAL TIMER
        // ============================================================
        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    document.getElementById('dealDays').textContent = '0';
                    document.getElementById('dealHours').textContent = '00';
                    document.getElementById('dealMinutes').textContent = '00';
                    document.getElementById('dealSeconds').textContent = '00';
                    return;
                }
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // ============================================================
        // EVENT BINDINGS
        // ============================================================

        // Search
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // Mobile menu
        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        // Close mobile menu on link click
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        // Hero buttons
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        // Deal buy
        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = 'var(--success)';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        // Newsletter
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email address.';
                newsletterMsg.style.color = '#ffb3b3';
                newsletterMsg.style.display = 'block';
                return;
            }
            newsletterMsg.textContent = '🎉 Thanks for subscribing!';
            newsletterMsg.style.color = '#a8e6cf';
            newsletterMsg.style.display = 'block';
            newsletterEmail.value = '';
            setTimeout(() => {
                newsletterMsg.style.display = 'none';
            }, 3500);
        });

        // Cart button click feedback
        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
        });

        // Year in footer
        document.getElementById('year').textContent = new Date().getFullYear();

        // ============================================================
        // INIT
        // ============================================================
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        // Close mobile menu on resize to desktop
        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });

        console.log('🚀 NexusShop — user‑friendly e‑commerce demo loaded.');
    </script>

</body>
</html>
