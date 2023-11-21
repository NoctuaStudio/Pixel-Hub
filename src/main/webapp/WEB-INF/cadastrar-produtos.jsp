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
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/produto.css">

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

    <main class="mt-lg-5">
      <form action="">
        <label for="product-name"><fmt:message key="productRegistration.name"/></label>
        <input type="text" id="product-name">
        <label for="product-description"><fmt:message key="productRegistration.description"/></label>
        <input type="text" id="product-description">
        <label for="product-price"><fmt:message key="productRegistration.price"/></label>
        <input type="text" id="product-price">
        <label for="product-quantity"><fmt:message key="productRegistration.quantity"/></label>
        <input type="text" id="product-quantity">
        <label for="product-image"><fmt:message key="productRegistration.image"/></label>
        <input type="text" id="product-image">
        <label for="product-category"><fmt:message key="productRegistration.category"/></label>
        <input type="text" id="product-category">
        <label for="product-brand"><fmt:message key="productRegistration.brand"/></label>
        <input type="text" id="product-brand">
        <label for="product-condition"><fmt:message key="productRegistration.condition"/></label>
        <input type="text" id="product-condition">
        <div style="display: flex; justify-content: center; ">
            <div class="col-md-10 col-lg-8 rounded-4 shadow" style="border: 1px solid black;  background-color: white;">
                <div style="padding: 7%;">
                    <h4 class="mb-3"><fmt:message key="productRegistration.title" /></h4>
                    <form class="needs-validation" action="meu-produto" method="post">
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <label for="produtoNome" class="form-label"><fmt:message key="productRegistration.name" />*</label>
                                <input type="text" class="form-control" id="produtoNome" name="produtoNome" value="${produtoNome}">
                            </div>

                            <div class="col-sm-6">
                                <label for="produtoDescricao" class="form-label"><fmt:message key="productRegistration.description" />*</label>
                                <textarea class="form-control" id="produtoDescricao" name="produtoDescricao" value="${produtoDescricao}" cols="10" rows="2">
                            </div>

                            <div class="col-12">
                                <label for="Username" class="form-label"><fmt:message key="registration.username" />*</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text">@</span>
                                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" value="${username}"
                                        required>
                                </div>
                            </div>

                                <div class="col-12">
                                    <label for="senha" class="form-label"><fmt:message key="registration.password" />*</label>
                                    <div class="input-group has-validation">
                                        <span class="input-group-text senhaVisibilidade" onclick="mostrarOcultarSenha()" >
                                            <svg id="eye-dismissed1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
                                                <path d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z"/>
                                                <path d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z"/>
                                                <path d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"/>
                                            </svg>
                                            <svg id="eye-vissible1" style="display: none;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                                <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                                <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                            </svg>
                                        </span>
                                        <input type="password" class="form-control" id="senha" name="senha" value="${senha}" required>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <label for="confirmar" class="form-label"><fmt:message key="registration.confirmPassword" />*</label>
                                    <div class="input-group has-validation">
                                        <span class="input-group-text" class="senhaVisibilidade" onclick="mostrarOcultarConfirmarSenha()" >
                                            <svg id="eye-dismissed2" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
                                                <path d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z"/>
                                                <path d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z"/>
                                                <path d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"/>
                                            </svg>
                                            <svg id="eye-vissible2" style="display: none;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                                <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                                <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                            </svg>
                                        </span>
                                        <input type="password" class="form-control" id="confirmar" name="confirmar" value="${confirmar}"
                                            required>
                                    </div>
                                </div>

                            <div class="col-sm-12" style="border: solid 1px #dcdcdc; border-radius: 10px;">
                                <div style="padding: 10px;">
                                    <span> <fmt:message key="registration.confirmPasswordTitle" /></span>
                                    <br><br>
                                    <ul class="form-label">
                                        <c:choose>
                                            <c:when test="${errosSenha[0] == null}">
                                                <li><p class="password-rule-2"><fmt:message key="registration.confirmPasswordLetterUppercase" /></p></li>
                                            </c:when>
                                            <c:otherwise>
                                                <c:if test="${!errosSenha[0]}">
                                                    <li><p class="password-rule-2" style="color: red"><fmt:message key="registration.confirmPasswordLetterUppercase" /></p></li>
                                                </c:if>
                                                <c:if test="${errosSenha[0]}">
                                                    <li><p class="password-rule-2" style="color: green"><fmt:message key="registration.confirmPasswordLetterUppercase" /></p></li>
                                                </c:if>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${errosSenha[1] == null}">
                                                <li><p class="password-rule-2"><fmt:message key="registration.confirmPasswordLetterLowercase" /></p></li>
                                            </c:when>
                                            <c:otherwise>
                                                <c:if test="${!errosSenha[1]}">
                                                    <li><p class="password-rule-2" style="color: red"><fmt:message key="registration.confirmPasswordLetterLowercase" /></p></li>
                                                </c:if>
                                                <c:if test="${errosSenha[1]}">
                                                    <li><p class="password-rule-2" style="color: green"><fmt:message key="registration.confirmPasswordLetterLowercase" /></p></li>
                                                </c:if>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${errosSenha[2] == null}">
                                                <li><p class="password-rule-2"><fmt:message key="registration.confirmPasswordNumber" /></p></li>
                                            </c:when>
                                            <c:otherwise>
                                                <c:if test="${!errosSenha[2]}">
                                                    <li><p class="password-rule-2" style="color: red"><fmt:message key="registration.confirmPasswordNumber" /></p></li>
                                                </c:if>
                                                <c:if test="${errosSenha[2]}">
                                                    <li><p class="password-rule-3" style="color: green"><fmt:message key="registration.confirmPasswordNumber" /></p></li>
                                                </c:if>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${errosSenha[3] == null}">
                                                <li><p class="password-rule-2"><fmt:message key="registration.confirmPasswordSpecial" /></p></li>
                                            </c:when>
                                            <c:otherwise>
                                                <c:if test="${!errosSenha[3]}">
                                                    <li><p class="password-rule-2" style="color: red"><fmt:message key="registration.confirmPasswordSpecial" /></p></li>
                                                </c:if>
                                                <c:if test="${errosSenha[3]}">
                                                    <li><p class="password-rule-2" style="color: green"><fmt:message key="registration.confirmPasswordSpecial" /></p></li>
                                                </c:if>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${errosSenha[4] == null}">
                                                <li><p class="password-rule-2"><fmt:message key="registration.confirmPasswordLenght" /></p></li>
                                            </c:when>
                                            <c:otherwise>
                                                <c:if test="${!errosSenha[4]}">
                                                    <li><p class="password-rule-2" style="color: red"><fmt:message key="registration.confirmPasswordLength" /></p></li>
                                                </c:if>
                                                <c:if test="${errosSenha[4]}">
                                                    <li><p class="password-rule-2" style="color: green"><fmt:message key="registration.confirmPasswordLength" /></p></li>
                                                </c:if>
                                            </c:otherwise>
                                        </c:choose>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <label for="email" class="form-label"><fmt:message key="registration.email" />*<span
                                        class="text-body-secondary"></span></label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="voce@exemplo.com" value="${email}" required>
                            </div>

                            <div class="col-sm-6">
                                <label for="telefone" class="form-label"><fmt:message key="registration.phone" /> *<span
                                        class="text-body-secondary"></span></label>
                                <input type="tel" class="form-control" id="telefone" name="telefone" placeholder="(11) 94002-8922" value="${telefone}"> 
                            </div>

                            <div class="col-12">
                                <label for="endereco" class="form-label"><fmt:message key="registration.address" />*</label>
                                <input type="text" class="form-control" id="endereco" name="endereco" placeholder="1234 Rua Lula da Silva" value="${endereco}"
                                    required>
                            </div>

                                <div class="col-md-5">
                                    <label for="estado" class="form-label"><fmt:message key="registration.state" />*</label>
                                    <select class="form-select" id="estado" name="estado" required>
                                        <option>-</option>
                                        <option <% if ("São Paulo".equals(request.getParameter("estado"))) out.print("selected"); %> >São Paulo</option>
                                        <option <% if ("Minas-Gerais".equals(request.getParameter("estado"))) out.print("selected"); %>>Minas-Gerais</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select a valid country.
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <label for="cidade" class="form-label"><fmt:message key="registration.city" />*</label>
                                    <select class="form-select" id="cidade" name="cidade" required>
                                        <option>-</option>
                                        <option <% if ("São Paulo".equals(request.getParameter("cidade"))) out.print("selected"); %>>São Paulo</option>
                                        <option <% if ("Belo Horizonte".equals(request.getParameter("cidade"))) out.print("selected"); %>>Belo Horizonte</option>
                                    </select>
                                </div>

                            <div class="col-md-3">
                                <label for="cep" class="form-label" required><fmt:message key="registration.zip" />*</label>
                                <input type="text" class="form-control" id="cep" name="cep" placeholder="" value="${cep}" required>
                            </div>
                        </div>
                        
                        <hr class="my-4">
                        <div>
                            <label for="termos" style="margin-bottom: 10px;">
                                <input type="checkbox" name="termos" checked required <% // if ("false".equals(request.getParameter("termos"))) out.print(" checked "); %>><fmt:message key="registration.startTerms" /><b><a href="termos.jsp"><fmt:message key="registration.terms" /></a></b>.*
                            </label>
                            </div>
                            <button class="w-100 btn btn-primary btn-lg" type="submit" name="cadastrar"> <fmt:message key="registration.button" /> </button> 
                        <div style="display: flex; justify-content: center; margin-bottom: -5%; margin-top: 2%;">
                            <h2 class="fs-5 fw-bold mb-3"> <fmt:message key="registration.already" /> <a href="login"><fmt:message key="registration.alreadyButton" /></a></h2>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </form>
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