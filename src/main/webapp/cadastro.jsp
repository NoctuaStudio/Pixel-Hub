<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="/docs/5.3/assets/js/color-modes.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <meta charset="utf-8">
    <title> Cadastro </title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/checkout/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
    <link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="icon" href="imagem/icone.png">


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


    <!-- Custom styles for this template -->
    <link href="checkout.css" rel="stylesheet">
</head>

<body class="bg-body-tertiary">
    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
        <symbol id="check2" viewBox="0 0 16 16">
            <path
                d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
        </symbol>
        <symbol id="circle-half" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z" />
        </symbol>
        <symbol id="moon-stars-fill" viewBox="0 0 16 16">
            <path
                d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z" />
            <path
                d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z" />
        </symbol>
        <symbol id="sun-fill" viewBox="0 0 16 16">
            <path
                d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z" />
        </symbol>
    </svg>

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




            <div style="display: flex; justify-content: center; ">
                <div class="col-md-10 col-lg-8 rounded-4 shadow" style="border: 1px solid black;  background-color: white;">
                    <div style="background-color: white;"></div>
                    <div style="padding: 7%;">
                        <h4 class="mb-3">Cadastro</h4>
                            <form class="needs-validation" action="cadastro" method="post">
                                <div class="row g-3">
                                    <div class="col-sm-6">
                                        <label for="nome" class="form-label">Nome*</label>
                                        <input type="text" class="form-control" id="nome" name="nome" value="${nome}" required>
                                        <div class="invalid-feedback">
                                            Valid first name is required.
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <label for="sobrenome" class="form-label">Sobrenome*</label>
                                        <input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${sobrenome}" required>
                                        <div class="invalid-feedback">
                                            Valid last name is required.
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label for="Username" class="form-label">username*</label>
                                        <div class="input-group has-validation">
                                            <span class="input-group-text">@</span>
                                            <input type="text" class="form-control" id="username" name="username" placeholder="Username" value="${username}"
                                                required>
                                            <div class="invalid-feedback">
                                                Your username is required.
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label for="senha" class="form-label">Senha*</label>
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
                                            <div class="invalid-feedback">
                                                Sua senha é obrigatória.
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label for="confirmar" class="form-label">Confirmar senha*</label>
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
                                            <div class="invalid-feedback">
                                                Your username is required.
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-12" style="border: solid 1px #dcdcdc; border-radius: 10px;">
                                        <div style="padding: 10px;">
                                            <span> Sua senha deve ter ao menos:</span>
                                            <br><br>
                                            <ul class="form-label">
                                                <c:choose>
                                                    <c:when test="${errosSenha[0] == null}">
                                                        <li><p class="password-rule-2">Uma letra maiúscula</p></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:if test="${!errosSenha[0]}">
                                                            <li><p class="password-rule-2" style="color: red">Uma letra maiúscula</p></li>
                                                        </c:if>
                                                        <c:if test="${errosSenha[0]}">
                                                            <li><p class="password-rule-2" style="color: green">Uma letra maiúscula</p></li>
                                                        </c:if>
                                                    </c:otherwise>
                                                </c:choose>
                                                <c:choose>
                                                    <c:when test="${errosSenha[1] == null}">
                                                        <li><p class="password-rule-2">Uma letra minúscula</p></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:if test="${!errosSenha[1]}">
                                                            <li><p class="password-rule-2" style="color: red">Uma letra minúscula</p></li>
                                                        </c:if>
                                                        <c:if test="${errosSenha[1]}">
                                                            <li><p class="password-rule-2" style="color: green">Uma letra minúscula</p></li>
                                                        </c:if>
                                                    </c:otherwise>
                                                </c:choose>
                                                <c:choose>
                                                    <c:when test="${errosSenha[2] == null}">
                                                        <li><p class="password-rule-2">Um número</p></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:if test="${!errosSenha[2]}">
                                                            <li><p class="password-rule-2" style="color: red">Um número</p></li>
                                                        </c:if>
                                                        <c:if test="${errosSenha[2]}">
                                                            <li><p class="password-rule-3" style="color: green">Um número</p></li>
                                                        </c:if>
                                                    </c:otherwise>
                                                </c:choose>
                                                <c:choose>
                                                    <c:when test="${errosSenha[3] == null}">
                                                        <li><p class="password-rule-2">Um desses caracteres especiais: @$!%*#?&+-</p></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:if test="${!errosSenha[3]}">
                                                            <li><p class="password-rule-2" style="color: red">Um desses caracteres especiais: @$!%*#?&+-</p></li>
                                                        </c:if>
                                                        <c:if test="${errosSenha[3]}">
                                                            <li><p class="password-rule-2" style="color: green">Um desses caracteres especiais: @$!%*#?&+-</p></li>
                                                        </c:if>
                                                    </c:otherwise>
                                                </c:choose>
                                                <c:choose>
                                                    <c:when test="${errosSenha[4] == null}">
                                                        <li><p class="password-rule-2">Entre 8 a 30 caracteres</p></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:if test="${!errosSenha[4]}">
                                                            <li><p class="password-rule-2" style="color: red">Entre 8 a 30 caracteres</p></li>
                                                        </c:if>
                                                        <c:if test="${errosSenha[4]}">
                                                            <li><p class="password-rule-2" style="color: green">Entre 8 a 30 caracteres</p></li>
                                                        </c:if>
                                                    </c:otherwise>
                                                </c:choose>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <label for="email" class="form-label">Email* <span
                                                class="text-body-secondary"></span></label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="voce@exemplo.com" value="${email}" required>
                                        <div class="invalid-feedback">
                                            Please enter a valid email address for shipping updates.
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <label for="telefone" class="form-label">Telefone <span
                                                class="text-body-secondary"></span></label>
                                        <input type="tel" class="form-control" id="telefone" name="telefone" placeholder="(11) 94002-8922" value="${telefone}"> 
                                        <div class="invalid-feedback">
                                            Please enter a valid email address for shipping updates.
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label for="endereco" class="form-label">Endereço*</label>
                                        <input type="text" class="form-control" id="endereco" name="endereco" placeholder="1234 Rua Lula da Silva" value="${endereco}"
                                            required>
                                        <div class="invalid-feedback">
                                            Please enter your shipping address.
                                        </div>
                                    </div>

                                    <div class="col-md-5">
                                        <label for="estado" class="form-label">Estado*</label>
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
                                        <label for="cidade" class="form-label">Cidade*</label>
                                        <select class="form-select" id="cidade" name="cidade" required>
                                            <option>-</option>
                                            <option <% if ("São Paulo".equals(request.getParameter("cidade"))) out.print("selected"); %>>São Paulo</option>
                                            <option <% if ("Belo Horizonte".equals(request.getParameter("cidade"))) out.print("selected"); %>>Belo Horizonte</option>
                                        </select>
                                        <div class="invalid-feedback">
                                            Please provide a valid state.
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <label for="cep" class="form-label" required>CEP*</label>
                                        <input type="text" class="form-control" id="cep" name="cep" placeholder="" value="${cep}" required>
                                        <div class="invalid-feedback">
                                            Zip code required.
                                        </div>
                                    </div>
                                </div>
                               
                                <hr class="my-4">
                                <div>
                                    <label for="termos" style="margin-bottom: 10px;">
                                      <input type="checkbox" name="termos" checked required <% // if ("false".equals(request.getParameter("termos"))) out.print(" checked "); %> > Aceito os <b><a href="termos.html">Termos de Uso</a></b>.*
                                    </label>
                                  </div>
                                  <button class="w-100 btn btn-primary btn-lg" type="submit" name="cadastrar">  Cadastrar-se </button> 
                                <div style="display: flex; justify-content: center; margin-bottom: -5%; margin-top: 2%;">
                                    <h2 class="fs-5 fw-bold mb-3"> Já tem uma conta? <a href="login.jsp">  Clique aqui!</a></h2>
                                </div>
                            </form>
                </div>
            </div>
        </div>
        </main>

        <footer class="my-5 pt-5 text-body-secondary text-center text-small">
            <p class="mb-1">&copy; 2023 Pixel Hub</p>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="termos.html">Termos</a></li>
                <li class="list-inline-item"><a href="suporte.html">Suporte</a></li>
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