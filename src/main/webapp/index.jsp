<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><script src="/docs/5.3/assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Pixel Hub</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel/">
    <link rel="icon" href="imagem/icone.png">
    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }


      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
        
      }
      .bd-mode-toggle {
        z-index: 1500;
      }

      .bi-search:hover{
        transform: scale(110%);
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>
    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
      <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
      </symbol>
    </svg>


    
<header data-bs-theme="dark">
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <img src="imagem/icone-branco.png" alt="" width="auto" height="50px" style="margin-right: 1%;"> <a class="navbar-brand" href="#"> Pixel Hub</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link" href="#">Consoles</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Jogos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Acessórios</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Pré-Vendas</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Suporte</a>
          </li>
        </ul>
        <form class="d-flex w-25" role="search" style="margin-right: 15%;">
          <label for="search" class="form-label"></label>
            <div class="input-group">
                <input type="search" class="form-control" id="search" name="search" placeholder="O que deseja procurar?"
                    required>
                <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search nav-link" viewBox="0 0 16 16">
                  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                </svg></span>
            </div>
        </form>
        <div style="margin-right: 2%;">
          <button type="button" class="btn btn-outline-primary me-2"><a href="login.html" style="text-decoration: none;">Login</a></button>
          <button type="button" class="btn btn-primary"><a href="cadastro.html" style="text-decoration: none; color: white;">Cadastrar</a></button>
        </div>
      </div>
    </div>
  </nav>
</header>

<main>

  <div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="imagem/nintendo-switch.jpg" style="filter: brightness(75%)" class="bd-placeholder-img" width="100%" height="550px" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
        <div class="container">
          <div class="carousel-caption text-start">
            <h1>Nintendo Switch Oled</h1>
            <p class="opacity-75">Adquira já o seu!  - R$ 2.069,10</p>
            <p><a class="btn btn-lg btn-primary" href="#">Veja mais</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <img src="imagem/ps5-controle-lebron-james.png" style="filter: brightness(75%)" class="bd-placeholder-img" width="100%" height="550px" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
        <div class="container">
          <div class="carousel-caption">
            <h1>PS5 Controle Lebron James</h1>
            <p>Controle exclusivo do Lebron James para PS5!</p>
            <p><a class="btn btn-lg btn-primary" href="#">Veja mais</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <img src="imagem/baldurs_gate_3_capa__5m88x0-1210x544.webp" style="filter: brightness(75%)" class="bd-placeholder-img" width="100%" height="550px" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
        <div class="container">
          <div class="carousel-caption text-end">
            <h1>Baldurs Gate 3</h1>
            <p>O jogo mais aclamado pelos jogadores de RPG!</p>
            <p><a class="btn btn-lg btn-primary" href="#">Veja mais</a></p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Anterior</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Proximo</span>
    </button>
  </div>


  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->
<div class="flex-column align-items-center justify-content-center m-5" >
  <div class="container marketing" >

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
        <img src="imagem/cart-check.svg" class="bd-placeholder-img " width="70" height="70" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
        <h2 class="fw-normal" style="padding-top: 3%;">Venda e Compre!</h2>
        <p> Na nossa plataforma, pode vender jogos, consoles e acessórios usados e pode comprar, álem dos nossos produtos, produtos da nossa comunidade.</p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <img src="imagem/chat-square-dots.svg" class="bd-placeholder-img" width="70" height="70" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
        <h2 class="fw-normal" style="padding-top: 3%;">Avaliações!</h2>
        <p>Além de termos jogos de qualidade, temos também uma base de criticas que podem te ajudar a escolher melhor seu proximo jogo.</p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <img src="imagem/patch-check.svg" class="bd-placeholder-img rounded-circle" width="70" height="70" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
        <h2 class="fw-normal" style="padding-top: 3%;">Segurança!</h2>
        <p>Todas as transações tem a nossa segurança, sem riscos de alguma perda.</p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">Pokemon como você nunca jogou! </h2>
        <p class="lead">Com a pokebola como controle do switch, você consegue capturar pokemons de uma forma mais dinamica. Com os sensores de movimento presentes no switch, sua experiencia com pokemon será diferente de todas as anteriores.</p>
      </div>
      <div class="col-md-5">
        <img src="imagem/pokeboll_joystick.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img">
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading fw-normal lh-1">Spider-Man 2</h2>
        <p class="lead">O sucesso do jogo Spider-Man é inegavel, mas será que sua continuação vai ser tão bom quanto? Confira um dos trailers e garanta já a sua cópia na pré-venda! </p>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/KxZ1i-IC4xo?si=3q30Z9BKfjSE7n4k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
      </div>
      <div class="col-md-5 order-md-1">
        <img src="imagem/Marvels-Spider-Man-2-5.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-bg)"/><text x="50%" y="50%" fill="var(--bs-secondary-color)" dy=".3em"></text></img>
      </div>
    </div>


    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->
</div>

  <!-- FOOTER -->
  <div class="container">
    <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4">
      <p class="col-md-4 mb-0 text-body-secondary">&copy; 2023 Company, Inc</p>
  
      <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
      </a>
  
      <ul class="nav col-md-4 justify-content-end">
        <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Consoles</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Jogos</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Vendas</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Sobre</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Suporte</a></li>
      </ul>
    </footer>
  </div>
</main>
<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    </body>
</html>