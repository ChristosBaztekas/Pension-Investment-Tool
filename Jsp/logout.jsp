<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
session.invalidate();
request.setAttribute("success_message", "Logout successfully!");
%>



<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>RIRA</title>
  <meta content="" name="description">

  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/logos/favicon.jpg" rel="icon">
  <link href="assets/img/logos/favicon.jpg" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span>RIRA</span>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Ξ‘ΟΟ‡ΞΉΞΊΞ®</a></li>
          <li><a class="nav-link scrollto" href="#about">Ξ“ΞΉΞ± ΞµΞΌΞ¬Ο‚</a></li>
          <li><a class="nav-link scrollto" href="#services">Ξ¥Ο€Ξ·ΟΞµΟƒΞ―ΞµΟ‚</a></li>
<!--          <li><a class="nav-link scrollto" href="#portfolio">Portfolio</a></li>-->
          <li><a class="nav-link scrollto" href="#team">ΞΞΌΞ¬Ξ΄Ξ±</a></li>
<!--          <li><a href="blog.html">Blog</a></li>-->
          <li><a class="nav-link scrollto" href="#contact">Ξ•Ο€ΞΉΞΊΞΏΞΉΞ½Ο‰Ξ½Ξ―Ξ±</a></li>
          <li><a class="getstarted scrollto" href="login.jsp">Ξ£ΟΞ½Ξ΄ΞµΟƒΞ·</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center">
          <h1 data-aos="fade-up">ΞΞ±Ξ»ΟΟ‚ Ξ®ΟΞΈΞµΟ‚! Ξ•Ο„ΞΏΞΉΞΌΞ¬ΟƒΞΏΟ… Ξ½Ξ± Ξ±Ξ»Ξ»Ξ¬ΞΎΞµΞΉΟ‚ Ο„ΞΏ ΞΌΞ­Ξ»Ξ»ΞΏΞ½ ΟƒΞΏΟ…!</h1>
          <h2 data-aos="fade-up" data-aos-delay="400">Ξ’ΟΞµΟ‚ Ο„Ξ·Ξ½ Ο€ΟΞΏΟƒΟ‰Ο€ΞΉΞΊΟΟ„Ξ·Ο„Ξ¬ ΟƒΞΏΟ… ΟƒΟ„ΞΉΟ‚ ΞµΟ€ΞµΞ½Ξ΄Ο…Ο„ΞΉΞΊΞ­Ο‚ Ο€ΟΞΏΞΊΞ»Ξ®ΟƒΞµΞΉΟ‚ ΞΊΞ±ΞΉ ΟƒΟ„ΟΟ‡ΞµΟ…ΟƒΞµ ΟƒΟ„Ξ·Ξ½ ΞµΞΎΞ±ΟƒΟ†Ξ¬Ξ»ΞΉΟƒΞ· Ο„ΞΏΟ… ΞΌΞ­Ξ»Ξ»ΞΏΞ½Ο„ΟΟ‚ ΟƒΞΏΟ…!</h2>
          <div data-aos="fade-up" data-aos-delay="600">
            <div class="text-center text-lg-start">
              <a href="#about" class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
                <span>Ξ‘Ξ½Ξ±ΞΊΞ¬Ξ»Ο…ΟΞ­ Ο„Ξ±</span>
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-lg-6 hero-img" data-aos="zoom-out" data-aos-delay="200">
          <img src="assets/img/hero-img.png" class="img-fluid" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  

    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts">
      <div class="container" data-aos="fade-up">

        <div class="row gy-4">

          <div class="col-lg-3 col-md-6">
            <div class="count-box">
              <i class="bi bi-emoji-smile"></i>
              <div>
                <span data-purecounter-start="0" data-purecounter-end="678" data-purecounter-duration="1" class="purecounter"></span>
                <p>Ξ§Ξ±ΟΞΏΟΞΌΞµΞ½ΞΏΞΉ Ξ£Ο…Ξ½Ξ΄ΟΞΏΞΌΞ·Ο„Ξ­Ο‚</p>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="count-box">
              <i class="bi bi-journal-richtext" style="color: #ee6c20;"></i>
              <div>
                <span data-purecounter-start="0" data-purecounter-end="699" data-purecounter-duration="1" class="purecounter"></span>
                <p>ΞΞµΟ„ΟΞ®ΟƒΞµΞΉΟ‚ </p>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="count-box">
              <i class="bi bi-headset" style="color: #15be56;"></i>
              <div>
                <span data-purecounter-start="0" data-purecounter-end="1463" data-purecounter-duration="1" class="purecounter"></span>
                <p>ΞΟΞµΟ‚ Ο…Ο€ΞΏΟƒΟ„Ξ®ΟΞΉΞΎΞ·Ο‚ Ξ ΞµΞ»Ξ±Ο„ΟΞ½</p>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="count-box">
              <i class="bi bi-people" style="color: #bb0852;"></i>
              <div>
                <span data-purecounter-start="0" data-purecounter-end="15" data-purecounter-duration="1" class="purecounter"></span>
                <p>Ξ£Ο…Ξ½ΞµΟΞ³Ξ±Ο„ΞΉΞΊΞ­Ο‚ Ξ•Ο„Ξ±ΞΉΟΞµΞ―ΞµΟ‚</p>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Counts Section -->

    <!-- ======= Features Section ======= -->
    <section id="features" class="features">

      <div class="container" data-aos="fade-up">

        <!-- Feature Icons -->
        <div class="row feature-icons" data-aos="fade-up">
          <h3>Ξ–Ξ®ΟƒΞµ Ο„Ξ·Ξ½ ΞµΞΌΟ€ΞµΞΉΟΞ―Ξ± Ο„Ξ·Ο‚ Ο€Ξ»Ξ·ΞΈΟΟΞ±Ο‚ Ο„Ο‰Ξ½ Ο…Ο€Ξ·ΟΞµΟƒΞΉΟΞ½ Ο€ΞΏΟ… Ο€ΟΞΏΟƒΟ†Ξ­ΟΞΏΟ…ΞΌΞµ</h3>

          <div class="row">

            <div class="col-xl-4 text-center" data-aos="fade-right" data-aos-delay="100">
              <img src="assets/img/features-3.png" class="img-fluid p-4" alt="">
            </div>

            <div class="col-xl-8 d-flex content">
              <div class="row align-self-center gy-4">
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="400">
                  <i class="ri-command-line"></i>               
                  <div>
                    <h4>Ξ•ΟΟΞµΟƒΞ· Ο„ΞΏΟ… ΞµΟ€ΞµΞ½Ξ΄Ο…Ο„ΞΉΞΊΞΏΟ ΞΌΞΏΟ… Ο€ΟΞΏΟ†Ξ―Ξ»</h4>
                    <p>Ξ‘Ξ½Ξ±ΞΊΞ¬Ξ»Ο…ΟΞµ Ο„ΞΏΞ½ Ο„ΟΟ€ΞΏ Ο„Ξ·Ο‚ ΞµΟ€ΞµΞ½Ξ΄Ο…Ο„ΞΉΞΊΞ®Ο‚ ΟƒΞΏΟ… Ξ΄ΟΞ±ΟƒΟ„Ξ·ΟΞΉΟΟ„Ξ·Ο„Ξ±Ο‚ Ξ²Ξ¬ΟƒΞ· Ο„Ο‰Ξ½ ΟƒΟ„ΞΏΞΉΟ‡ΞµΞ―Ο‰Ξ½ Ο„ΞΏΟ… Ο‡Ξ±ΟΞ±ΞΊΟ„Ξ®ΟΞ± ΟƒΞΏΟ…</p>
                  </div>
                </div>

                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
                  <i class="ri-stack-line"></i>
                  <div>
                    <h4>Ξ¥Ο€ΞΏΞ»ΞΏΞ³ΞΉΟƒΞΌΟΟ‚ Ο„Ξ·Ο‚ ΞΌΞµΞ»Ξ»ΞΏΞ½Ο„ΞΉΞΊΞ®Ο‚ ΞΌΞΏΟ… ΟƒΟΞ½Ο„Ξ±ΞΎΞ·Ο‚</h4>
                    <p>Ξ§ΟΞ·ΟƒΞΉΞΌΞΏΟ€ΞΏΞΉΟΞ½Ο„Ξ±Ο‚ ΞΊΞ±Ο„Ξ¬Ξ»Ξ»Ξ·Ξ»Ξ± ΞΌΞ±ΞΈΞ·ΞΌΞ±Ο„ΞΉΞΊΞ¬ ΞΌΞµΞ³Ξ­ΞΈΞ· ΞΊΞ±ΞΉ Ξ΄ΞµΞ―ΞΊΟ„ΞµΟ‚ Ο…Ο€ΞΏΞ»ΞΏΞ³Ξ―Ξ¶ΞΏΟ…ΞΌΞµ ΟƒΟΞΌΟ†Ο‰Ξ½Ξ± ΞΌΞµ Ο„Ξ± Ο„Ο‰ΟΞΉΞ½Ξ¬ Ξ΄ΞµΞ΄ΞΏΞΌΞ­Ξ½Ξ± Ο„Ξ·Ξ½ ΞΌΞµΞ»Ξ»ΞΏΞ½Ο„ΞΉΞΊΞ® ΟƒΞΏΟ… ΟƒΟΞ½Ο„Ξ±ΞΎΞ·</p>
                  </div>
                </div>

                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
                  <i class="ri-brush-4-line"></i>
                  <div>
                    <h4>Ξ‘ΟΞΎΞ·ΟƒΞ· ΞΌΞµΞ»Ξ»ΞΏΞ½Ο„ΞΉΞΊΞ®Ο‚ ΟƒΟΞ½Ο„Ξ±ΞΎΞ·Ο‚</h4>
                    <p>Ξ£ΞΏΟ… Ξ΄ΞµΞ―Ο‡Ξ½ΞΏΟ…ΞΌΞµ Ο„ΞΏΞ½ Ο„ΟΟΟ€ΞΏ, ΟΟƒΟ„Ξµ Ξ½Ξ± ΞµΞΎΞ±ΟƒΟ†Ξ±Ξ»Ξ―ΟƒΞµΞΉΟ‚ Ο…ΟΞ·Ξ»ΟΟ„ΞµΟΞ· ΟƒΟΞ½Ο„Ξ±ΞΎΞ® ΟƒΞΏΟ… Ξ³ΞΉΞ± Ο„ΞΏ ΞΌΞ­Ξ»Ξ»ΞΏΞ½</p>
                  </div>
                </div>

                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                  <i class="ri-magic-line"></i>
                  <div>
                    <h4>Ξ¥Ο€ΞΏΞ»ΞΏΞ³ΞΉΟƒΞΌΟΟ‚ Ξ±ΟƒΟ†Ξ¬Ξ»ΞµΞΉΞ±Ο‚ Ξ¶Ο‰Ξ®Ο‚ </h4>
                    <p>Ξ£Ξµ Ξ²ΞΏΞ·ΞΈΞ¬ΞΌΞµ Ξ½Ξ± Ο…Ο€ΞΏΞ»ΞΏΞ³Ξ―ΟƒΞµΞΉΟ‚ Ο„ΞΏ ΞΊΟΟƒΟ„ΞΏΟ‚ Ο„Ξ·Ο‚ Ξ±ΟƒΟ†Ξ¬Ξ»ΞµΞΉΞ±Ο‚ Ξ¶Ο‰Ξ®Ο‚ ΟƒΞΏΟ…</p>
                  </div>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up">
                  <i class="ri-line-chart-line"></i>
                  <div>
                    <h4>Ξ ΟΞΏΞ²ΞΏΞ»Ξ® Ξ΄ΞµΞΉΞΊΟ„ΟΞ½ Ο‡ΟΞ·ΞΌΞ±Ο„ΞΉΟƒΟ„Ξ·ΟΞ―ΞΏΟ…</h4>
                    <p>Ξ£ΟΞΌΟ†Ο‰Ξ½Ξ± ΞΌΞµ ΞΉΟƒΟ„ΞΏΟΞΉΞΊΞ¬ Ξ΄ΞµΞ΄ΞΏΞΌΞ­Ξ½Ξ± ΟƒΞµ Ξ²ΞΏΞ·ΞΈΞ¬ΞΌΞµ Ξ½Ξ± Ο€Ξ±ΟΞ±ΞΊΞ±Ξ»ΞΏΞΈΞΏΟ…ΟƒΞ®ΟƒΞµΞΉΟ‚ Ο„ΞΏΟ…Ο‚ Ο€ΟΞ±Ξ³ΞΌΞ±Ο„ΞΉΞΊΞΏΟΟ‚ Ξ΄ΞµΞ―ΞΊΟ„ΞµΟ‚ Ο‡ΟΞ·ΞΌΞ±Ο„ΞΉΟƒΟ„Ξ·ΟΞ―ΞΏΟ… Ο„Ξ·Ο‚ Ξ±Ξ³ΞΏΟΞ¬Ο‚ </p>
                  </div>
                </div>

              </div>
            </div>

          </div>

        </div><!-- End Feature Icons -->

      </div>

    </section><!-- End Features Section -->
    

    

    <!-- ======= F.A.Q Section ======= -->
    <section id="faq" class="faq">

      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h2>Ξ£.Ξ•</h2>
          <p>Ξ£Ο…Ο‡Ξ½Ξ­Ο‚ Ξ•ΟΟ‰Ο„Ξ®ΟƒΞµΞΉΟ‚</p>
        </header>

        

        <div class="row">
          <div class="col-lg-6">
            <!-- F.A.Q List 1-->
            <div class="accordion accordion-flush" id="faqlist1">
              <div class="accordion-item">
                <h2 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-1">
                    Ξ“ΞΉΞ±Ο„Ξ― Ξ½Ξ± Ξ³Ξ½Ο‰ΟΞ―Ξ¶Ο‰ Ο„ΞΏ Ο„ΟΟ€ΞΏ Ο„ΞΏΟ… ΞµΟ€ΞµΞ½Ξ΄Ο…Ο„ΞΉΞΊΞΏΟ ΞΌΞΏΟ… Ο€ΟΞΏΟ†Ξ―Ξ»;
                  </button>
                </h2>
                <div id="faq-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                  <div class="accordion-body">
                    Ξ“Ξ½Ο‰ΟΞ―Ξ¶ΞΏΞ½Ο„Ξ±Ο‚ Ο„ΞΉ Ο„ΟΟ€ΞΏΟ‚ ΞµΞ―ΟƒΟ„Ξµ ΟƒΟ„ΞΉΟ‚ ΞµΟ€ΞµΞ½Ξ΄Ο…Ο„ΞΉΞΊΞ­Ο‚ ΟƒΞ±Ο‚ Ξ±Ο€ΞΏΟ†Ξ¬ΟƒΞµΞΉΟ‚, ΟƒΟ…Ξ½ΞµΞΉΞ΄Ξ·Ο„ΞΏΟ€ΞΏΞΉΞµΞ―Ο„Ξµ Ο„ΞΏ ΟΞ―ΟƒΞΊΞΏ Ο€ΞΏΟ… ΟƒΟ…Ξ½Ξ·ΞΈΞ―Ξ¶ΞµΟ„Ξµ Ξ½Ξ± Ο€Ξ±Ξ―ΟΞ½ΞµΟ„Ξµ ΞΊΞ±ΞΉ ΞµΞ―ΟƒΟ„Ξµ ΟƒΞµ ΞΈΞ­ΟƒΞ· Ξ½Ξ± Ξ²ΞµΞ»Ο„ΞΉΟΟƒΞµΟ„Ξµ Ξ±Ξ΄ΟΞ½Ξ±ΞΌΞ± ΟƒΞ·ΞΌΞµΞ―Ξ±.
                  </div>
                </div>
              </div>

              <div class="accordion-item">
                <h2 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-2">
                    Ξ£Ξµ Ο„ΞΉ ΞΈΞ± ΞΌΞµ Ξ²ΞΏΞ·ΞΈΞ®ΟƒΞµΞΉ Ξ½Ξ± ΞΌΞ¬ΞΈΟ‰ Ο„Ξ· ΞΌΞµΞ»Ξ»ΞΏΞ½Ο„ΞΉΞΊΞ® ΞΌΞΏΟ… ΟƒΟΞ½Ο„Ξ±ΞΎΞ·;
                  </button>
                </h2>
                <div id="faq-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                  <div class="accordion-body">
                    ΞΞ±ΞΈΞ±Ξ―Ξ½ΞΏΞ½Ο„Ξ±Ο‚ Ο„Ξ·Ξ½ ΞµΞ½Ξ΄ΞµΞΉΞΊΟ„ΞΉΞΊΞ® ΞΌΞµΞ»Ξ»ΞΏΞ½Ο„ΞΉΞΊΞ® ΟƒΞ±Ο‚ ΟƒΟΞ½Ο„Ξ±ΞΎΞ®, ΞΊΞ±Ο„Ξ±Ξ»Ξ±Ξ²Ξ±Ξ―Ξ½ΞµΟ„Ξµ ΞΊΞ±Ο„Ξ¬ Ο€ΟΟƒΞΏ ΟƒΞ±Ο‚ ΞµΟ€Ο‰Ο†ΞµΞ»ΞΏΟΞ½ ΞΏΞΉ Ο„Ο‰ΟΞΉΞ½Ξ­Ο‚ ΟƒΞ±Ο‚ ΞΏΞΉΞΊΞΏΞ½ΞΏΞΌΞΉΞΊΞ­Ο‚ Ξ΄ΟΞ±ΟƒΟ„Ξ·ΟΞΉΟΟ„Ξ·Ο„ΞµΟ‚ ΞΌΞ±ΞΊΟΞΏΟ€ΟΟΞΈΞµΟƒΞΌΞ± ΞΊΞ±ΞΉ Ξ±Ξ½ ΞµΞ―ΟƒΟ„Ξµ ΞΉΞΊΞ±Ξ½ΞΏΟ€ΞΏΞΉΞ·ΞΌΞ­Ξ½ΞΏΞΉ Ξ±Ο€Ο Ξ±Ο…Ο„Ο.
                  </div>
                </div>
              </div>

              <div class="accordion-item">
                <h2 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-3">
                    Ξ ΟΟ‚ ΞΌΞµ Ξ²ΞΏΞ·ΞΈΞ¬Ο„Ξµ Ξ½Ξ± Ξ±Ο…ΞΎΞ®ΟƒΟ‰ Ο„Ξ· ΞΌΞµΞ»Ξ»ΞΏΞ½Ο„ΞΉΞΊΞ® ΞΌΞΏΟ… ΟƒΟΞ½Ο„Ξ±ΞΎΞ·;
                  </button>
                </h2>
                <div id="faq-content-3" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                  <div class="accordion-body">
                    Ξ‘Ο†ΞΏΟ Ξ΄ΞµΞ―Ο„Ξµ Ο„Ξ·Ξ½ ΞµΞ½Ξ΄ΞµΞΉΞΊΟ„ΞΉΞΊΞ® ΞΌΞµΞ»Ξ»ΞΏΞ½Ο„ΞΉΞΊΞ® ΟƒΞ±Ο‚ ΟƒΟΞ½Ο„Ξ±ΞΎΞ·, Ξ²Ξ¬ΟƒΞ· Ο„Ο‰Ξ½ Ξ΄ΞµΞΉΞΊΟ„ΟΞ½ Ο…Ο€ΞΏΞ»ΞΏΞ³ΞΉΟƒΞΌΞΏΟ Ο„Ξ·Ο‚ Ξ±Ο€ΞΏΟ„Ξ±ΞΌΞ―ΞµΟ…ΟƒΞ·Ο‚, ΞΈΞ± ΞµΞ―ΟƒΟ„Ξµ ΟƒΞµ ΞΈΞ­ΟƒΞ· Ξ½Ξ± ΟƒΟ…Ξ³ΞΊΟΞ―Ξ½ΞµΟ„Ξµ Ο„ΞΏΟ…Ο‚ Ξ΄ΞΉΞ¬Ο†ΞΏΟΞΏΟ…Ο‚ Ξ΄ΞµΞ―ΞΊΟ„ΞµΟ‚ ΞΌΞµΟ„Ξ±ΞΎΟ Ο„ΞΏΟ…Ο‚ ΞΊΞ±ΞΉ Ξ½Ξ± Ξ±Ο€ΞΏΟ†Ξ±ΟƒΞ―ΟƒΞµΟ„Ξµ Ξ²Ξ±ΟƒΞΉΞ¶ΟΞΌΞµΞ½ΞΏΟ‚ ΟƒΞµ Ξ±Ο…Ο„ΞΏΟΟ‚ Ο€ΞΏΞΉΟΟ‚ Ο‡ΟΞ®Ξ¶ΞµΞΉ Ξ²ΞµΞ»Ο„Ξ―Ο‰Ξ·ΟƒΟ‚ ΞΊΞ±ΞΉ ΞΌΞµ Ο„Ξ· Ξ²ΞΏΞ®ΞΈΞµΞΉΞ¬ ΞΌΞ±Ο‚, Ο„ΞΉ ΞΌΟ€ΞΏΟΞµΞ―Ο„Ξµ Ξ½Ξ± ΞΊΞ¬Ξ½ΞµΟ„Ξµ Ξ³ΞΉ'Ξ±Ο…Ο„Ο.
                  </div>
                </div>
              </div>

            </div>
          </div>

          <div class="col-lg-6">

            <!-- F.A.Q List 2-->
            <div class="accordion accordion-flush" id="faqlist2">
              <div class="accordion-item">
                <h2 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq2-content-1">
                    Ξ“ΞΉΞ±Ο„Ξ― Ξ½Ξ± ΞµΟ€ΞΉΞ»Ξ­ΞΎΟ‰ Ο„Ξ· RIRA;
                  </button>
                </h2>
                <div id="faq2-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist2">
                  <div class="accordion-body">
                    Ξ— RIRA ΞµΞ―Ξ½Ξ±ΞΉ ΞΊΞ±ΞΉΞ½ΞΏΟ„ΟΞΌΞ± Ο€Ξ»Ξ±Ο„Ο†ΟΟΞΌΞ± ΟƒΟ„ΞΏ Ο‡ΟΟΞΏ Ο„Ο‰Ξ½ ΞµΟ€ΞµΞ½Ξ΄ΟΟƒΞµΟ‰Ξ½ ΞΊΞ±ΞΉ Ο„Ο‰Ξ½ Ξ±ΟƒΟ†Ξ±Ξ»Ξ―ΟƒΞµΟ‰Ξ½, Ο†ΞµΟΞ­Ξ³Ξ³Ο…Ξ± ΞΊΞ±ΞΉ ΞΌΞµ Ο€ΞµΞ»Ξ±Ο„ΞΏΞΊΞµΞ½Ο„ΟΞΉΞΊΞ® Ο†ΞΉΞ»ΞΏΟƒΞΏΟ†Ξ―Ξ±.Ξ‘Ο€ΞΏΟ„ΞµΞ»ΞµΞ―Ο„Ξ±ΞΉ Ξ±Ο€Ο Ξ½ΞµΞ±ΟΟ ΞµΟΞ³Ξ±Ο„ΞΉΞΊΟ Ξ΄Ο…Ξ½Ξ±ΞΌΞΉΞΊΟ ΞΌΞµ ΟΟΞµΞΎΞ· Ξ³ΞΉΞ± Ξ΄ΞΏΟ…Ξ»ΞµΞΉΞ¬ ΞΊΞ±ΞΉ Ξ¬ΟΞΉΟƒΟ„Ξ· Ο„ΞµΟ‡Ξ½ΞΏΞ³Ξ½Ο‰ΟƒΞ―Ξ±, Ο€ΞΏΟ… ΞΊΞ¬ΞΈΞµ ΟƒΟ„ΞΉΞ³ΞΌΞ® ΞµΞ―Ξ½Ξ±ΞΉ Ξ­Ο„ΞΏΞΉΞΌΞΏ Ξ½Ξ± ΞµΞΎΟ…Ο€Ξ·ΟΞµΟ„Ξ®ΟƒΞµΞΉ Ο„ΞΉΟ‚ Ξ±Ξ½Ξ¬Ξ³ΞΊΞµΟ‚ ΟƒΞ±Ο‚.ΞΞΉ Ο…Ο€Ξ·ΟΞµΟƒΞ―ΞµΟ‚ Ο„Ξ·Ο‚ ΞµΞ―Ξ½Ξ±ΞΉ Ξ±Ξ½Ξ±Ξ³ΞΊΞ±Ξ―ΞµΟ‚ Ξ³ΞΉΞ± Ξ¬Ο„ΞΏΞΌΞ± Ο€ΞΏΟ… ΞµΞ½Ξ΄ΞΉΞ±Ο†Ξ­ΟΞΏΞ½Ο„Ξ±ΞΉ Ξ³ΞΉΞ± Ο„ΞΉΟ‚ ΞµΟ€ΞµΞ½Ξ΄Ο…Ο„ΞΉΞΊΞ­Ο‚ Ξ΄ΟΞ±ΟƒΟ„Ξ·ΟΞΉΟΟ„Ξ·Ο„ΞµΟ‚ ΞΊΞ±ΞΉ ΞΈΞ­Ξ»ΞΏΟ…Ξ½ Ξ½Ξ± ΞµΞΎΞ±ΟƒΟ†Ξ±Ξ»Ξ―ΟƒΞΏΟ…Ξ½ Ο„ΞΏ ΞΌΞ­Ξ»Ξ»ΞΏΞ½ Ο„ΞΏΟ…Ο‚.
                  </div>
                </div>
              </div>

              <div class="accordion-item">
                <h2 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq2-content-2">
                    Ξ¤ΞΉ Ξ΄ΞµΞ―ΞΊΟ„ΞµΟ‚ Ο‡ΟΞ·ΞΌΞ±Ο„ΞΉΟƒΟ„Ξ·ΟΞ―ΞΏΟ… ΞΌΞΏΟ… Ξ΄ΞµΞ―Ο‡Ξ½ΞµΞΉ Ξ· RIRA;
                  </button>
                </h2>
                <div id="faq2-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist2">
                  <div class="accordion-body">
                    Ξ‘Ο†ΞΏΟ ΞµΟ€ΞΉΞ»ΞµΞ³ΞµΞ― Ο„ΞΏ Ξ­Ο„ΞΏΟ‚, Ο„ΞΏ Ο€ΞΏΟƒΟ Ο„Ξ·Ο‚ ΞµΟ€Ξ­Ξ½Ξ΄Ο…ΟƒΞ·Ο‚ ΞΊΞ±ΞΉ Ξ· Ξ±Ξ³ΞΏΟΞ¬ Ο„ΞΏΟ…, ΞµΞΌΟ†Ξ±Ξ½Ξ―Ξ¶ΞµΟ„Ξ±ΞΉ ΟƒΟ‡ΞµΞ΄ΞΉΞ¬Ξ³ΟΞ±ΞΌΞΌΞ± Ο„Ξ·Ο‚ Ξ±Ο€ΟΞ΄ΞΏΟƒΞ®Ο‚ Ο„Ξ·Ο‚ Ξ±Ο€Ο Ο„ΞΏ Ξ­Ο„ΞΏΟ‚ ΞµΟ€Ξ­Ξ½Ξ΄Ο…ΟƒΞ·Ο‚ Ξ­Ο‰Ο‚ Ο„ΞΏ ΟƒΞ®ΞΌΞµΟΞ±. ΞΟ€ΞµΞΉΟ„Ξ±, Ο…Ο€ΞΏΞ»ΞΏΞ³Ξ―Ξ¶ΞµΟ„Ξ±ΞΉ ΞΏ ΞΌΞ­ΟƒΞΏΟ‚ ΟΟΞΏΟ‚ ΞµΟ„Ξ®ΟƒΞΉΞ±Ο‚ Ξ±Ο€ΟΞ΄ΞΏΟƒΞ·Ο‚, ΞΊΞ±ΞΈΟΟ‚ ΞΊΞ±ΞΉ Ο„ΞΏ ΟƒΟ…Ξ½ΞΏΞ»ΞΉΞΊΟ Ο€ΞΏΟƒΟ Ο„Ξ·Ο‚ Ξ±Ο€ΞΏΟ„Ξ±ΞΌΞ―ΞµΟ…ΟƒΞ·Ο‚.
                  </div>
                </div>
              </div>

            </div>
          </div>

        </div>

      </div>

    </section><!-- End F.A.Q Section -->

    

    

    <!-- ======= Team Section ======= -->
    <section id="team" class="team">

      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h2>ΞΞΌΞ¬Ξ΄Ξ±</h2>
          <p>Ξ¤ΞΏ Ξ΄Ο…Ξ½Ξ±ΞΌΞΉΞΊΟ ΞµΟΞ³Ξ±Ο„ΞΉΞΊΟ Ο€ΟΞΏΟƒΟ‰Ο€ΞΉΞΊΟ ΞΌΞ±Ο‚</p>
        </header>

        <div class="row gy-4">

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-1.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>

                </div>
              </div>
              <div class="member-info">
                <h4>Ξ§ΟΞ®ΟƒΟ„ΞΏΟ‚ ΞΟ€Ξ±Ξ¶Ο„Ξ­ΞΊΞ±Ο‚</h4>
                
                
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-2.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Ξ•Ο…Ξ±Ξ³Ξ³ΞµΞ»Ξ―Ξ± Ξ Ξ±Ξ½ΞΏΟ…ΟΞ³ΞΉΞ¬</h4>
                
                
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-3.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Ξ›ΞµΟ‰Ξ½Ξ―Ξ΄Ξ±Ο‚ Ξ”ΞΉΞ±ΞΌΞ±Ξ½Ο„ΟΟ€ΞΏΟ…Ξ»ΞΏΟ‚</h4>
                
  
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-4.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Ξ£Ο„Ξ­Ξ»Ξ»Ξ± ΞΟ€Ο…ΟΞ¬ΞΊΞ·</h4>
                
                
              </div>
            </div>
          </div>

        </div>

      </div>

    </section><!-- End Team Section -->


    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">

      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h2>Ξ•Ο€ΞΉΞΊΞΏΞΉΞ½Ο‰Ξ½Ξ―Ξ±</h2>
          <p>Ξ•Ο€ΞΉΞΊΞΏΞΉΞ½ΟΞ½Ξ·ΟƒΞµ ΞΌΞ±Ξ¶Ξ― ΞΌΞ±Ο‚</p>
        </header>

        <div class="row gy-4">

          <div class="col-lg-6">

            <div class="row gy-4">
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bi bi-geo-alt"></i>
                  <h3>Ξ”ΞΉΞµΟΞΈΟ…Ξ½ΟƒΞ·</h3>
                  <p>76,Ξ›ΞµΟ‰Ο†ΟΟΞΏΟ‚ Ξ Ξ±Ο„Ξ·ΟƒΞ―Ο‰Ξ½<br>Ξ‘ΞΈΞ®Ξ½Ξ±, 104 34</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bi bi-telephone"></i>
                  <h3>ΞΞ¬Ξ»ΞµΟƒΞ­ ΞΌΞ±Ο‚</h3>
                  <p>+30 210 8903627<br>+30 6926783647</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bi bi-envelope"></i>
                  <h3>Ξ¤ΞΏ Email ΞΌΞ±Ο‚ </h3>
                  <p>info@rira.com</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bi bi-clock"></i>
                  <h3>Ξ©ΟΞ¬ΟΞΉΞΏ Ξ•ΟΞ³Ξ±ΟƒΞ―Ξ±Ο‚</h3>
                  <p>Ξ”ΞµΟ…Ο„Ξ­ΟΞ± - Ξ Ξ±ΟΞ±ΟƒΞΊΞµΟ…Ξ®<br>9:00Ο€ΞΌ - 05:00ΞΌΞΌ</p>
                </div>
              </div>
            </div>

          </div>

          <div class="col-lg-6">
            <form action="forms/contact.php" method="post" class="php-email-form">
              <div class="row gy-4">

                <div class="col-md-6">
                  <input type="text" name="name" class="form-control" placeholder="Ξ¤ΞΏ ΞΏΞ½ΞΏΞΌΞ±Ο„ΞµΟ€ΟΞ½Ο…ΞΌΟ ΟƒΞ±Ο‚" required>
                </div>

                <div class="col-md-6 ">
                  <input type="email" class="form-control" name="email" placeholder="Ξ¤ΞΏ Email ΟƒΞ±Ο‚" required>
                </div>

                <div class="col-md-12">
                  <input type="text" class="form-control" name="subject" placeholder="ΞΞ­ΞΌΞ±" required>
                </div>

                <div class="col-md-12">
                  <textarea class="form-control" name="message" rows="6" placeholder="ΞΞ®Ξ½Ο…ΞΌΞ±" required></textarea>
                </div>

                <div class="col-md-12 text-center">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Ξ¤ΞΏ ΞΌΞ®Ξ½Ο…ΞΌΞ¬ ΟƒΞ±Ο‚ ΟƒΟ„Ξ¬Ξ»ΞΈΞ·ΞΊΞµ ΞµΟ€ΞΉΟ„Ο…Ο‡ΟΟ‚. Ξ•Ο…Ο‡Ξ±ΟΞΉΟƒΟ„ΞΏΟΞΌΞµ!</div>

                  <button type="submit">Ξ‘Ο€ΞΏΟƒΟ„ΞΏΞ»Ξ® ΞΞ·Ξ½ΞΌΟΞΌΞ±Ο„ΞΏΟ‚</button>
                </div>

              </div>
            </form>

          </div>

        </div>

      </div>

    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12 text-center">
            <h4>Ξ¤Ξ± Ξ½Ξ­Ξ± ΞΌΞ±Ο‚</h4>
            <p>Ξ•Ξ³Ξ³ΟΞ¬ΟΞΏΟ… ΟƒΟ„ΞΏ newsletter ΞΌΞ±Ο‚, Ξ³ΞΉΞ± Ξ½Ξ± ΞµΞ½Ξ·ΞΌΞµΟΟΞ½ΞµΟƒΞ±ΞΉ Ξ¬ΞΌΞµΟƒΞ± Ξ³ΞΉΞ± Ο„Ξ± Ξ½Ξ­Ξ± ΞΊΞ±ΞΉ Ο„ΞΉΟ‚ Ο€ΟΞΏΟƒΟ†ΞΏΟΞ­Ο‚ ΞΌΞ±Ο‚</p>
          </div>
          <div class="col-lg-6">
            <form action="" method="post">
              <input type="email" name="email"><button type="subscribe">ΞΞ­Ξ»Ο‰ Ξ½Ξ± ΞµΞ³Ξ³ΟΞ±Ο†Ο</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-top">
      <div class="container">
        <div class="row gy-4">
          <div class="col-lg-5 col-md-12 footer-info">
            <a href="index.html" class="logo d-flex align-items-center">
              <img src="assets/img/logo.png" alt="">
              <span>Ξ“ΟΞ®Ξ³ΞΏΟΞ· Ξ”ΞΏΞΊΞΉΞΌΞ®</span>
            </a>
            <p>Ξ”ΞΏΞΊΞ―ΞΌΞ±ΟƒΞµ Ξ³ΟΞ®Ξ³ΞΏΟΞ± Ο„ΞΏΞ½ Ο…Ο€ΞΏΞ»ΞΏΞ³ΞΉΟƒΞΌΟ Ο„Ξ·Ο‚ ΞµΞ½Ξ΄ΞµΞΉΞΊΟ„ΞΉΞΊΞ®Ο‚ ΞΌΞµΞ»Ξ»ΞΏΞ½Ο„ΞΉΞΊΞ®Ο‚ ΟƒΞΏΟ… ΟƒΟΞ½Ο„Ξ±ΞΎΞ·Ο‚ Ο„ΟΟΞ±!</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
              <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
              <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
              <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>
          </div>

          <div class="col-lg-2 col-6 footer-links">
            <h4>Ξ§ΟΞ®ΟƒΞΉΞΌΞΏΞΉ Ξ£ΟΞ½Ξ΄ΞµΟƒΞΌΞΏΞΉ</h4>
            <ul>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Ξ‘ΟΟ‡ΞΉΞΊΞ®</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Ξ“ΞΉΞ± ΞµΞΌΞ¬Ο‚</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Ξ¥Ο€Ξ·ΟΞµΟƒΞ―ΞµΟ‚</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">ΞΟΞΏΞΉ ΞΊΞ±ΞΉ Ο€ΟΞΏΟ‹Ο€ΞΏΞΈΞ­ΟƒΞµΞΉΟ‚</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Ξ ΞΏΞ»ΞΉΟ„ΞΉΞΊΞ® Ξ‘Ο€ΞΏΟΟΞ®Ο„ΞΏΟ…</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
            <h4>Ξ•Ο€ΞΉΞΊΞΏΞΉΞ½ΟΞ½Ξ·ΟƒΞµ ΞΌΞ±Ξ¶Ξ― ΞΌΞ±Ο‚</h4>
            <p>
              76, Ξ›ΞµΟ‰Ο†ΟΟΞΏΟ‚ Ξ Ξ±Ο„Ξ·ΟƒΞ―Ο‰Ξ½ <br>
              Ξ‘ΞΈΞ®Ξ½Ξ±, 104 34<br>
              Ξ•Ξ»Ξ»Ξ¬Ξ΄Ξ± <br><br>
              <strong>Ξ¤Ξ·Ξ»Ξ­Ο†Ο‰Ξ½ΞΏ:</strong> +30 210 8903627<br>
              <strong>Email:</strong> info@rira.com<br>
            </p>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>ismgroup4</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/flexstart-bootstrap-startup-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>