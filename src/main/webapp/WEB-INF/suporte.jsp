<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>
  <script src="/docs/5.3/assets/js/color-modes.js"></script>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Suporte</title>
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
        <img src="imagem/icone-branco.png" alt="" width="auto" height="50px" style="margin-right: 1%;"> <a
          class="navbar-brand" href="index.jsp"> Pixel Hub</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
          aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
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
              <a class="nav-link" href="suporte.html">Suporte</a>
            </li>
          </ul>
          <form class="d-flex w-25" role="search" style="margin-right: 15%;">
            <label for="search" class="form-label"></label>
            <div class="input-group">
              <input type="search" class="form-control" id="search" name="search" placeholder="O que deseja procurar?"
                required>
              <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                  fill="currentColor" class="bi bi-search nav-link" viewBox="0 0 16 16">
                  <path
                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                </svg></span>
            </div>
          </form>
          <div style="margin-right: 2%;">
            <button type="button" class="btn btn-outline-primary me-2"><a href="login.jsp"
                style="text-decoration: none;">Login</a></button>
            <button type="button" class="btn btn-primary"><a href="cadastro.jsp"
                style="text-decoration: none; color: white;">Cadastrar</a></button>
          </div>
        </div>
      </div>
    </nav>
  </header>

  <main style="display: flex; justify-content: center; ">
    <div class="col-md-10 col-lg-8">
      <div style="background-color: white;"></div>
      <c:if test="${erros != null}">
        <div style="display: flex; justify-content: center; margin: 20px;">
            <div class="col-md-10 col-lg-8 rounded-3 shadow" style="border: 1px solid black; background-color: rgb(243, 77, 77);">
                <ul style="text-decoration: none;">
                    <c:forEach var="erro" items="${erros}">
                    <li>${erro}</li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </c:if>
      <div style="padding: 7%;">
        <h4 class="mb-3" style="margin-top: 15px;">Suporte</h4>
        <form class="needs-validation" action="suporte" method="post">
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="nome" class="form-label">Assunto</label>
              <input type="text" class="form-control" id="assunto" name="assunto" value="" required>
            </div>

            <div class="col-sm-6">
              <label for="sobrenome" class="form-label">Título</label>
              <input type="text" class="form-control" id="titulo" name="titulo" value="" required>
            </div>

            <div class="col-12">
              <label for="senha" class="form-label">Mensagem</label>
              <div class="input-group has-validation">
                <textarea name="suporte_mensagem" id="suporte_mensagem" class="form-control" cols="30" rows="10"></textarea>
              </div>
            </div>

          <hr class="my-4">
          <span>Ou entre em contato por e-mail:<strong style="margin-left: 5px">contato@pixelhub.com.br</strong> </span>
          <button class="w-100 btn btn-primary btn-lg" type="submit" name="cadastrar">Enviar</button>
        </form>
      </div>
    </div>
    </main>

  <footer>
    <div class="container">
      <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4">
        <p class="col-md-4 mb-0 text-body-secondary">&copy; 2023 Pixel Hub</p>
        <a href="/"
          class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
          <svg class="bi me-2" width="40" height="32">
            <use xlink:href="#bootstrap" /></svg>
        </a>

        <ul class="nav col-md-4 justify-content-end">
          <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Nintendo</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Xbox</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Playstation</a></li>
          <li class="nav-item"><a href="/java-web-app-1.0/termos.html"
              class="nav-link px-2 text-body-secondary">Termos</a></li>
          <li class="nav-item"><a href="/java-web-app-1.0/suporte.html"
              class="nav-link px-2 text-body-secondary">Suporte</a></li>
        </ul>
      </footer>

      <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
      </script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
      </script>
      
</body>
</html>