<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><script src="/docs/5.3/assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.115.4">
    <title>Recuperação</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/modals/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
    <link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="icon" href="imagem/icone.png">
    <link rel="stylesheet" href="styles/style.css">
    <link href="modals.css" rel="stylesheet">
  </head>
  <body>
    <div class="modal modal-sheet position-static d-block p-4 py-md-5"tabindex="-1" role="dialog" id="modalSignin" style="margin-top: 5%;">
      <div class="modal-dialog" role="document">
        <div class="modal-content rounded-4 shadow">
          <div class="py-1 text-center" style="padding: 0;">
            <img class="mx-auto" src="imagem/pixel-hub-transparente.png" alt="" width="250px"
                height="150px">
          </div>
          <div style="margin-top: -8%;">
            <div class="modal-header p-5 pb-4 border-bottom-0">
              <h1 class="fw-bold mb-0 fs-2">Recuperar senha</h1>
            </div>

            <div class="modal-body p-5 pt-0">
              <form class="" action="recuperar" method="post"  >
                <div class="form-floating mb-3">
                  <input type="password" name="novaSenha" class="form-control rounded-3" id="floatingInput" placeholder="123456">
                  <label for="floatingInput">Digite a nova senha</label>
                </div>
                <div class="form-floating mb-3">
                  <input type="password" name="confirmarSenha" class="form-control rounded-3" id="floatingPassword" placeholder="Senha">
                  <label for="floatingPassword">Confirme a senha</label>
                </div>
                <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" name="recuperar" type="submit">Recuperar</button>
                <hr class="my-4">
                <h2 class="fs-5 fw-bold mb-3"> Não é sua conta? <a href="login.jsp">  Tente de novo aqui!</a></h2>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  
  </body>
</html>
