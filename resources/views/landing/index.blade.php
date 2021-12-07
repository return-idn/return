<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- SEO Meta Tags -->
    <meta name="description" content="Your description">
    <meta name="author" content="Your name">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
    <meta property="og:site_name" content="" /> <!-- website name -->
    <meta property="og:site" content="" /> <!-- website link -->
    <meta property="og:title" content="" /> <!-- title shown in the actual shared post -->
    <meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
    <meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
    <meta property="og:url" content="" /> <!-- where do you want your post to link to -->
    <meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

    <!-- Webpage Title -->
    <title>Return</title>

    <!-- Styles -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap"
        rel="stylesheet">
    <link href="{{ asset('/css/bootstrap.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/fontawesome-all.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/swiper.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/magnific-popup.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/styles.css') }}" rel="stylesheet">

</head>

<body data-spy="scroll" data-target=".fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg fixed-top navbar-light">
        <div class="container">

            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Pavo</a> -->

            <!-- Image Logo -->
            <a class="navbar-brand" href="#" alt="Return"></a>

            <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="#header">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="#features">Fitur</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="#meet">Tim Kami</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="#download">Download</a>
                    </li>
                </ul>
                <span class="nav-item app-store-icons">
                    <a href="#your-link">
                        <i class="fab fa-apple"></i>
                    </a>
                    <a href="#your-link">
                        <i class="fab fa-google-play"></i>
                    </a>
                </span>
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->


    <!-- Header -->
    <header id="header" class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="text-container">
                        <h1 class="h1-large">Return</h1>
                        <p class="p-large">Ubah Sampah Menjadi Uang</p>
                        <a class="btn-solid-lg" href="#your-link"><i class="fab fa-apple"></i>Coming Soon</a>
                        <a class="btn-solid-lg secondary" href="#your-link"><i class="fab fa-google-play"></i>Coming
                            Soon</a>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
                <div class="col-lg-6">
                    <div class="image-container">
                        <img class="img-fluid" src="{{ asset('/images/Beranda_UI.PNG') }}" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of header -->
    <!-- end of header -->

    <!-- Features -->
    <div id="features" class="cards-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>
                    <h2>Fitur</p>
                    </h2>
                    <!-- Card -->
                    <div class="card">
                        <div class="card-image">
                            <img class="img-fluid" src="{{ asset('/images/recycling-symbol.png') }}" alt="alternative">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Ubah Sampah Jadi Uang</h5>
                        </div>
                    </div>
                    <!-- end of card -->

                    <!-- Card -->
                    <div class="card">
                        <div class="card-image">
                            <img class="img-fluid" src="{{ asset('/images/collaboration.png') }}" alt="alternative">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Partner</h5>
                        </div>
                    </div>
                    <!-- end of card -->

                    <!-- Card -->
                    <div class="card">
                        <div class="card-image">
                            <img class="img-fluid" src="{{ asset('/images/play-button.png') }}" alt="alternative">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Video Edukasi</h5>
                        </div>
                    </div>
                    <!-- end of card -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of cards-1 -->
    <!-- end of features -->


    <!-- Details 1 -->
    <div id="details" class="basic-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="text-container">
                        <h2>Ubah Sampah Menjadi Uang</h2>
                        <p>Menerima berbagai macam sampah yang telah dikategorikan berdasarkan jenisnya.</p>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
                <div class="col-lg-7">
                    <div class="image-container">
                        <img class="img-fluid" src="{{ asset('/images/Lainnya.PNG') }}" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of basic-2 -->
    <!-- end of details 1 -->


    <!-- Details 2 -->
    <div class="basic-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="image-container">
                        <img class="img-fluid" src="{{ asset('/images/Partner.PNG') }}" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
                <div class="col-lg-5">
                    <div class="text-container">
                        <h2>Partner</h2>
                        <p>Mengajak organisasi atau perusahaan untuk bekerja sama menciptakan Palembang Bebas Sampah.
                        </p>

                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of basic-3 -->
    <!-- end of details 2 -->

    <!-- Details 3 -->
    <div class="basic-4">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="text-container">
                        <h2>Video Edukasi</h2>
                        <p>Menyediakan video edukasi seperti cara mendaur ulang sampah dan edukasi tentang sampah.</p>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
                <div class="col-lg-7">
                    <div class="image-container">
                        <img class="img-fluid" src="{{ asset('/images/Video.PNG') }}" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of basic-4 -->
    <!-- end of details 3 -->


    <!-- Statistics -->
    <div class="counter">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <!-- Counter -->
                    <div id="counter">
                        <h1> Produksi Sampah di Kota Palembang</h1><br><br>
                        <div class="cell">
                            <div class="counter-value number-count" data-count="1400">1</div>
                            <p class="counter-info">Perhari (ton)</p>
                        </div>
                        <div class="cell">
                            <div class="counter-value number-count" data-count="70">1</div>
                            <p class="counter-info">Sampah Plastik (%)</p>
                        </div>
                    </div>
                    <!-- end of counter -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of counter -->
    <!-- end of statistics -->
    <!-- meet -->
    <div id="meet"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
            </div> <!-- end of col -->
        </div> <!-- end of row -->
        <h2>
            <center> Behind the Return </center>
        </h2>
        <div class="row">
            <div class="col-lg-12">

                <div class="container">
                    <div class="swiper-container card-slider">
                        <div class="swiper-wrapper">
                            <!-- card -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="{{ asset('/images/Juli.jpg') }}" alt="alternative">
                                    <div class="card-body">
                                        <center>
                                            <p class="testimonial-author">Juli Ulano</p>
                                        </center>
                                        <center>
                                            <p class="testimonial-text">Chief Executive Officer</p>
                                        </center>
                                    </div>
                                </div>
                            </div>
                            <!--end of card-->

                            <!-- card -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="{{ asset('/images/Putra.jpg') }}" alt="alternative">
                                    <div class="card-body">
                                        <center>
                                            <p class="testimonial-author">M. Putra Aryandi</p>
                                        </center>
                                        <center>
                                            <p class="testimonial-text">Chief Technology Officer</p>
                                        </center>
                                    </div>
                                </div>
                            </div>
                            <!--end of card-->

                            <!-- card -->
                            <div class="swiper-slide">
                                <div class="card">
                                    <img class="card-image" src="{{ asset('/images/Agraa.jpg') }}" alt="alternative">
                                    <div class="card-body">
                                        <center>
                                            <p class="testimonial-author">Agra Sanrio</p>
                                        </center>
                                        <center>
                                            <p class="testimonial-text">Chief Marketing Officer</p>
                                        </center>
                                    </div>
                                </div>
                            </div>
                            <!--end of card-->

                        </div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of card slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of slider-1 -->
    <!-- end of testimonials -->


    <!-- Conclusion -->
    <div id="download" class="basic-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="image-container">
                        <img class="img-fluid" src="{{ asset('/images/loading_screen_return.PNG') }}" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
                <div class="col-lg-6">
                    <div class="text-container">
                        <p>Ayo mulai memilah sampah dan menghasilkan uang dari sampah anda bersama kami.</p>
                        <a class="btn-solid-lg" href="#your-link"><i class="fab fa-apple"></i>Coming Soon</a>
                        <a class="btn-solid-lg secondary" href="#your-link"><i class="fab fa-google-play"></i>Coming
                            Soon</a>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of basic-5 -->
    <!-- end of conclusion -->


    <!-- Footer -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h4>Coming Soon<a class="purple" </a></a></h4>
                    <div class="social-container">
                        <span class="fa-stack">
                            <a href="https://www.instagram.com/return.idn/">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-instagram fa-stack-1x"></i>
                            </a>
                        </span>
                    </div> <!-- end of social-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of footer -->
    <!-- end of footer -->


    <!-- Copyright -->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-0">
                    <p class="p-small statement">Copyright © <a href="#your-link">Return</a></p>
                </div> <!-- end of col -->
            </div> <!-- enf of row -->
        </div> <!-- end of container -->
    </div> <!-- end of copyright -->
    <!-- end of copyright -->


    <!-- Scripts -->
    <script src="{{ asset('/js/jquery.min.js') }}"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="{{ asset('/js/bootstrap.min.js') }}"></script> <!-- Bootstrap framework -->
    <script src="{{ asset('/js/jquery.easing.min.js') }}"></script>
    <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="{{ asset('/js/swiper.min.js') }}"></script> <!-- Swiper for image and text sliders -->
    <script src="{{ asset('/js/jquery.magnific-popup.js') }}"></script> <!-- Magnific Popup for lightboxes -->
    <script src="{{ asset('/js/scripts.js') }}"></script> <!-- Custom scripts -->
</body>

</html>
