<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Pixel Hub</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel/">
    <link rel="icon" href="imagem/icone.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
    <link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/style.css">
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>
    <header data-bs-theme="dark">
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <img src="imagem/icone-branco.png" alt="" width="auto" height="50px" style="margin-right: 1%;"> <a class="navbar-brand" href="#"> Pixel Hub</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse d-flex justify-content-between" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
              <li class="nav-item">
                <a class="nav-link" href="produtos"><fmt:message key="header.buy" /></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="vender"><fmt:message key="header.sell" /></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="suporte"><fmt:message key="header.support" /></a>
              </li>
            </ul>
            <c:if test="${not empty usuarioLogado}"> 
              <div class="dropdown">
                <button class="btn btn-outline-primary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                  <c:out value="${usuarioLogado.nome}"/>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                  <li><a class="dropdown-item" href="perfil"><fmt:message key="header.profile" /> perfil </a></li>
                  <li><a class="dropdown-item" href="logout"><fmt:message key="header.logout" /> logout </a></li>
                </ul>
              </div>
            </c:if>
            <div>

            </div>
            <c:if test="${empty usuarioLogado}">
              <div style="margin-right: 2%;">
                <button type="button" class="btn btn-outline-primary"><a href="login" style="text-decoration: none;"><fmt:message key="login.title" /></a></button>
                <button type="button" class="btn btn-primary"><a href="cadastro" style="text-decoration: none; color: white;"><fmt:message key="registration.title" /></a></button>
              </div>
            </c:if> 
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
                <h1><fmt:message key="index.nintendoTitle"/></h1>
                <p class="opacity-75"><fmt:message key="index.nintendoMessage"/></p>
                <p><a class="btn btn-lg btn-primary" href="#"><fmt:message key="index.seeMore"/></a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img src="imagem/ps5-controle-lebron-james.png" style="filter: brightness(75%)" class="bd-placeholder-img" width="100%" height="550px" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
            <div class="container">
              <div class="carousel-caption">
                <h1><fmt:message key="index.lebronControllerTitle"/></h1>
                <p><fmt:message key="index.lebronMessage"/></p>
                <p><a class="btn btn-lg btn-primary" href="#"><fmt:message key="index.seeMore"/></a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img src="imagem/baldurs_gate_3_capa__5m88x0-1210x544.webp" style="filter: brightness(75%)" class="bd-placeholder-img" width="100%" height="550px" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
            <div class="container">
              <div class="carousel-caption text-end">
                <h1><fmt:message key="index.baldursTitle"/></h1>
                <p><fmt:message key="index.baldursMessage"/></p>
                <p><a class="btn btn-lg btn-primary" href="#"><fmt:message key="index.seeMore"/></a></p>
              </div>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden"><fmt:message key="index.previous"/></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden"><fmt:message key="index.next"/></span>
        </button>
      </div>

      <div class="flex-column align-items-center justify-content-center m-5" >
        <div class="container marketing">
          <div class="row">
            <div class="col-lg-4">
              <img src="imagem/cart-check.svg" class="bd-placeholder-img " width="70" height="70" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
              <h2 class="fw-normal" style="padding-top: 3%;"><fmt:message key="index.sellBuy"/></h2>
              <p><fmt:message key="index.sellBuyMessage"/></p>
            </div>
            <div class="col-lg-4">
              <img src="imagem/chat-square-dots.svg" class="bd-placeholder-img" width="70" height="70" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
              <h2 class="fw-normal" style="padding-top: 3%;"><fmt:message key="index.evaluation"/></h2>
              <p><fmt:message key="index.evaluationMessage"/></p>
            </div>
            <div class="col-lg-4">
              <img src="imagem/patch-check.svg" class="bd-placeholder-img rounded-circle" width="70" height="70" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
              <h2 class="fw-normal" style="padding-top: 3%;"><fmt:message key="index.security"/></h2>
              <p><fmt:message key="index.securityMessage"/></p>
            </div>
          </div>

          <hr class="featurette-divider">

          <div class="row featurette">
            <div class="col-md-7">
              <h2 class="featurette-heading fw-normal lh-1"><fmt:message key="index.pokemonTitle"/></h2>
              <p class="lead"><fmt:message key="index.pokemonMessage"/></p>
            </div>
            <div class="col-md-5">
              <img src="imagem/pokeboll_joystick.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img">
            </div>
          </div>

          <hr class="featurette-divider">

          <div class="row featurette">
            <div class="col-md-7 order-md-2">
              <h2 class="featurette-heading fw-normal lh-1"><fmt:message key="index.spiderManTitle"/></h2>
              <p class="lead"><fmt:message key="index.spiderManMessage"/> </p>
              <iframe width="560" height="315" src="https://www.youtube.com/embed/KxZ1i-IC4xo?si=3q30Z9BKfjSE7n4k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
            <div class="col-md-5 order-md-1">
              <img src="imagem/Marvels-Spider-Man-2-5.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-bg)"/><text x="50%" y="50%" fill="var(--bs-secondary-color)" dy=".3em"></text></img>
            </div>
          </div>

          <hr class="featurette-divider">

        </div>
      </div>
    </main>

    <div class="container">
      <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4">
        <p class="col-md-4 mb-0 text-body-secondary">&copy; 2023 Pixel - Hub</p>
        <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
          <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        </a>
        <ul class="nav col-md-4 justify-content-end">
          <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Consoles</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Jogos</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Vendas</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Sobre</a></li>
          <li class="nav-item"><a href="java-web-app-1.0/suporte" class="nav-link px-2 text-body-secondary">Suporte</a></li>
        </ul>
      </footer>
    </div>

    <script src="/docs/5.3/assets/js/color-modes.js"></script>
    <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="indexScript.js"></script>
    </body>
</html>