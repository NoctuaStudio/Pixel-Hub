<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.Date" %>
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
    <link rel="stylesheet" href="../styles/style.css">
    <link rel="stylesheet" href="../styles/produto.css">

  </head>
  <body>
    <header data-bs-theme="dark">
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <img src="imagem/icone-branco.png" alt="" width="auto" height="50px" style="margin-right: 1%;"> <a class="navbar-brand" href="home"> Pixel Hub</a>
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

    <main class="mt-lg-5">
      <div class="mt-lg-1">
        a
      </div>
      <div class="container mt-lg-3">
        <div class="card p-3">
          <div class="container-fliud">
            <div class="wrapper row">
              <div class="preview col-md-6">
                <div class="preview-pic tab-content">
                    <div class="tab-pane active" id="pic-1"><img width="500px" height="300px" src="${produto.imagem}" /></div>
                </div>
              </div>
              <div class="details col-md-6">

                <h3 class="product-title">${produto.nome}</h3>

                <p>${usuario.nome}</p>

                <h4 class="price"><fmt:message key="product.price" />:<c:out value="${produto.preco}"/></h4>
                
                <p class="product-description"><c:out value="${produto.descricao}"/></p>
          
                <div class="d-flex flex-row justify-content-between">
                  <p><b><fmt:message key="product.category"/></b> ${produto.categoria} </p>
                  <p><b><fmt:message key="product.condition"/></b> ${produto.condicao}</p>
                </div>

                <div class="action d-flex flex-row justify-content-between">
                    <div class="col-6">
                      <label for="quantidadeDesejada"><fmt:message key="product.quantity"/>:</label>
                      <input class="form-control rounded-3" type="number" name="quantidadeDesejada" id="quantidadeDesejada" min="1" max="${produto.quantidade}" value="1">
                    </div>
                    <button class="add-to-cart btn btn-dark" type="button">add to cart</button>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <div class="container">
      <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4">
        <hr class="col-12">
        <p class="col-md-4 mb-0 text-body-secondary">&copy; 2023 Pixel - Hub</p>
        <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
          <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        </a>
        <ul class="nav col-md-4 justify-content-end">
          <li class="nav-item"><a href="produtos" class="nav-link px-2 text-body-secondary"><fmt:message key="header.buy" /></a></li>
          <li class="nav-item"><a href="vender" class="nav-link px-2 text-body-secondary"><fmt:message key="header.sell" /></a></li>
          <li class="nav-item"><a href="suporte" class="nav-link px-2 text-body-secondary"><fmt:message key="header.support" /></a></li>
        </ul>
      </footer>
    </div>

    <script src="/docs/5.3/assets/js/color-modes.js"></script>
    <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src=" https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js "></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        
</body>