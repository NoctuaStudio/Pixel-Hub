<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="/docs/5.3/assets/js/color-modes.js"></script>
    <meta charset="utf-8">
    <title><fmt:message key="registration.title" /></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/checkout/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
    <link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="icon" href="imagem/icone.png">
    <link rel="stylesheet" href="styles/style.css">
    <link href="checkout.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(51deg, #f9e7e7, #e5f3fb, #d8f2ef);
            background-size: 600% 600%;

            -webkit-animation: AnimationName 7s ease infinite;
            -moz-animation: AnimationName 7s ease infinite;
            animation: AnimationName 7s ease infinite;
        }

        @-webkit-keyframes AnimationName {
            0%{background-position:96% 0%}
            50%{background-position:5% 100%}
            100%{background-position:96% 0%}
        }
        @-moz-keyframes AnimationName {
            0%{background-position:96% 0%}
            50%{background-position:5% 100%}
            100%{background-position:96% 0%}
        }
        @keyframes AnimationName {
            0%{background-position:96% 0%}
            50%{background-position:5% 100%}
            100%{background-position:96% 0%}
        }
    </style>
</head>

<body class="bg-body-tertiary">
    <div class="container">

        <main>
            <div class="py-1 text-center">
                <img class="mx-auto" src="imagem/pixel-hub-transparente.png" alt="" width="400px"
                    height="300px">
            </div>
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
            <c:if test="${violations != null}">
                <div style="display: flex; justify-content: center; margin: 20px;">
                    <div class="col-md-10 col-lg-8 rounded-3 shadow" style="border: 1px solid black; background-color: rgb(243, 77, 77);">
                        <ul style="text-decoration: none;">
                            <c:forEach var="violation" items="${violations}">
                            <li>${violation.propertyPath} ${violation.message}</li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </c:if>
            <div style="display: flex; justify-content: center; ">
                <div class="col-md-10 col-lg-8 rounded-4 shadow" style="border: 1px solid black;  background-color: white;">
                    <div style="padding: 7%;">
                        <h4 class="mb-3"><fmt:message key="registration.title" /></h4>
                        <form class="needs-validation" action="cadastro" method="post">
                            <div class="row g-3">
                                <div class="col-sm-6">
                                    <label for="nome" class="form-label"><fmt:message key="registration.name" />*</label>
                                    <input type="text" class="form-control" id="nome" name="nome" value="${nome}" required>
                                </div>

                                <div class="col-sm-6">
                                    <label for="sobrenome" class="form-label"><fmt:message key="registration.lastName" />*</label>
                                    <input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${sobrenome}" required>
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
                                                        <li><p class="password-rule-2" style="color: red"><fmt:message key="registration.confirmPasswordLenght" /></p></li>
                                                    </c:if>
                                                    <c:if test="${errosSenha[4]}">
                                                        <li><p class="password-rule-2" style="color: green"><fmt:message key="registration.confirmPasswordLenght" /></p></li>
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
        </main>

        <footer class="my-5 pt-5 text-body-secondary text-center text-small">
            <p class="mb-1">&copy; 2023 Pixel Hub</p>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="termos.jsp"><fmt:message key="registration.terms" /></a></li>
                <li class="list-inline-item"><a href="suporte.jsp"><fmt:message key="registration.support" /></a></li>
            </ul>
        </footer>

    </div>
    <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous">
    </script>
    <script>

        function mostrarOcultarConfirmarSenha() {
            var senhaConfirmarInput = document.getElementById("confirmar");
            var icon1 = document.getElementById("eye-dismissed2");
            var icon2 = document.getElementById("eye-vissible2");

            if (senhaConfirmarInput.type === "password") {
                icon1.style.display = "none";
                icon2.style.display = "block";
                senhaConfirmarInput.type = "text";
            } else if (senhaConfirmarInput.type === "text"){
                icon1.style.display = "block";
                icon2.style.display = "none";
                senhaConfirmarInput.type = "password";
            }

        }    
        function mostrarOcultarSenha() {
            var senhaInput = document.getElementById("senha");
            var icon1 = document.getElementById("eye-dismissed1");
            var icon2 = document.getElementById("eye-vissible1");
            

            if (senhaInput.type === "password") {
                icon1.style.display = "none";
                icon2.style.display = "block";
                senhaInput.type = "text";
            } else if (senhaInput.type === "text") {
                icon1.style.display = "block";
                icon2.style.display = "none";
                senhaInput.type = "password";
            }
        }
    </script>
    <script src="checkout.js"></script>
</body>

</html>