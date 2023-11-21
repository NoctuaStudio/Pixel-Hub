<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>
  <script src="/docs/5.3/assets/js/color-modes.js"></script>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><fmt:message key="support.title" /></title>
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
                <li><a class="dropdown-item" href="perfil"><fmt:message key="header.profile" /></a></li>
                <li><a class="dropdown-item" href="logout"><fmt:message key="header.logout" /></a></li>
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
        <h4 class="mb-3" style="margin-top: 15px;"><fmt:message key="support.title" /></h4>
        <form class="needs-validation" action="suporte" method="post">
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="nome" class="form-label"><fmt:message key="support.subject" /></label>
              <input type="text" class="form-control" id="assunto" name="assunto" value="" required>
            </div>

            <div class="col-sm-6">
              <label for="sobrenome" class="form-label"><fmt:message key="support.messageTitle" /></label>
              <input type="text" class="form-control" id="titulo" name="titulo" value="" required>
            </div>

            <div class="col-12">
              <label for="senha" class="form-label"><fmt:message key="support.message" /></label>
              <div class="input-group has-validation">
                <textarea name="suporte_mensagem" id="suporte_mensagem" class="form-control" cols="30" rows="10"></textarea>
              </div>
            </div>

          <hr class="my-4">
          <span><fmt:message key="support.contact" /><strong style="margin-left: 5px">contato@pixelhub.com.br</strong> </span>
          <button class="w-100 btn btn-primary btn-lg" type="submit" name="cadastrar"><fmt:message key="support.button" /></button>
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
          <li class="nav-item"><a href="termos"
              class="nav-link px-2 text-body-secondary"><fmt:message key="registration.terms" /></a></li>
          <li class="nav-item"><a href="suporte"
              class="nav-link px-2 text-body-secondary"><fmt:message key="support.title" /></a></li>
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