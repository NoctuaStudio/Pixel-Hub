<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>

  <head><script src="/docs/5.3/assets/js/color-modes.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><fmt:message key="terms.title" /></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/modals/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
    <link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="icon" href="imagem/icone.png">
    <link href="modals.css" rel="stylesheet">
    <link rel="stylesheet" href="styles/style.css">
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
  <body>
    
      <div class="modal modal-sheet position-static d-block p-4 py-md-5"  tabindex="-1" role="dialog" id="modalSignin" style="margin-top: 5%; margin-left: -200px;">
        <div class="modal-dialog" role="document" >
          <div class="modal-content rounded-4 shadow" style="width: 900px" >
            <div class="py-1 text-center" style="padding: 0;">
              <img class="mx-auto" src="imagem/pixel-hub-transparente.png" alt="" width="250px"
                  height="150px">
            </div>
            <div style="margin-top: -8%;" >
              <div class="modal-header p-5 pb-4 border-bottom-0"  style="display: flex; justify-content: center;">
                <h1 class="fw-bold mb-0 fs-2"><fmt:message key="terms.title" /></h1>
              </div>
              <div class="col-sm-12" style="border: solid 1px #dcdcdc; border-radius: 10px; width: 90%; padding:5%; margin-left: 5%;" >
                <div style="padding: 10px;">
                  <span>
                      Seja bem-vindo ao nosso site. Leia com atenção todos os termos abaixo.

                      <br>  Este documento, e todo o conteúdo do site é oferecido por <b>Pixel Hub</b>, neste termo representado apenas por “EMPRESA”, que regulamenta todos os direitos e obrigações com todos que acessam o site, denominado neste termo como “VISITANTE”, reguardado todos os direitos previstos na legislação, trazem as cláusulas abaixo como requisito para acesso e visita do mesmo, situado no endereço <b>pixelHub.com</b>.

                      <br>  A permanência no website implica-se automaticamente na leitura e aceitação tácita do presente termos de uso a seguir. Este termo foi atualizado pela última vez em 11 de setembro de 2023.

                      <br><br><b>1. DA FUNÇÃO DO SITE</b> <br>
                      Este site foi criado e desenvolvido com a função de trazer conteúdo informativo de alta qualidade, a venda de produtos físicos, digitais e a divulgação de prestação de serviço. A EMPRESA busca através da criação de conteúdo de alta qualidade, desenvolvido por profissionais da área, trazer o conhecimento ao alcance de todos, assim como a divulgação dos próprios serviços.

                      <br>  Nesta plataforma, poderá ser realizado tanto a divulgação de material original de alta qualidade, assim como a divulgação de produtos de e-commerce.

                      <br> Todo o conteúdo presente neste site foi desenvolvido buscando fontes e materiais de confiabilidade, assim como são baseados em estudos sérios e respeitados, através de pesquisa de alta nível.

                      <br> Todo o conteúdo é atualizado periodicamente, porém, pode conter em algum artigo, vídeo ou imagem, alguma informação que não reflita a verdade atual, não podendo a EMPRESA ser responsabilizada de nenhuma forma ou meio por qualquer conteúdo que não esteja devidamente atualizado.

                      <br>  É de responsabilidade do usuário de usar todas as informações presentes no site com senso crítico, utilizando apenas como fonte de informação, e sempre buscando especialistas da área para a solução concreta do seu conflito.

                      <br><br> <b>2. DO ACEITE DOS TERMOS</b> <br>
                      Este documento, chamado “Termos de Uso”, aplicáveis a todos os visitantes do site, foi desenvolvido por Diego Castro Advogado – OAB/PI 15.613, modificado com permissão para este site.

                      <br>  Este termo especifica e exige que todo usuário ao acessar o site da EMPRESA, leia e compreenda todas as cláusulas do mesmo, visto que ele estabelece entre a EMPRESA e o VISITANTE direitos e obrigações entre ambas as partes, aceitos expressamente pelo VISITANTE a permanecer navegando no site da EMPRESA.

                      <br>  Ao continuar acessando o site, o VISITANTE expressa que aceita e entende todas as cláusulas, assim como concorda integralmente com cada uma delas, sendo este aceite imprescindível para a permanência na mesma. Caso o VISITANTE discorde de alguma cláusula ou termo deste contrato, o mesmo deve imediatamente interromper sua navegação de todas as formas e meios.

                      <br>  Este termo pode e irá ser atualizado periodicamente pela EMPRESA, que se resguarda no direito de alteração, sem qualquer tipo de aviso prévio e comunicação. É importante que o VISITANTE confira sempre se houve movimentação e qual foi a última atualização do mesmo no começo da página.

                      <br><br> <b>3. DO GLOSSÁRIO</b> <br>
                      Este termo pode conter algumas palavras específicas que podem não se de conhecimento geral. Entre elas:

                      <br>  <b>VISITANTE:</b> Todo e qualquer usuário do site, de qualquer forma e meio, que acesse através de computador, notebook, tablet, celular ou quaisquer outros meios, o website ou plataforma da empresa.
                      <br><b>NAVEGAÇÃO:</b> O ato de visitar páginas e conteúdo do website ou plataforma da empresa.
                      <br>  <b>COOKIES:</b> Pequenos arquivos de textos gerados automaticamente pelo site e transmitido para o navegador do visitante, que servem para melhorar a usabilidade do visitante.
                      <br>  <b>LOGIN:</b> Dados de acesso do visitante ao realizar o cadastro junto a EMPRESA, dividido entre usuário e senha, que dá acesso a funções restritas do site.
                      <br>  <b>HIPERLINKS:</b> São links clicáveis que podem aparecer pelo site ou no conteúdo, que levam para outra página da EMPRESA ou site externo.
                      <br>  <b>OFFLINE:</b> Quando o site ou plataforma se encontra indisponível, não podendo ser acessado externamente por nenhum usuário. <br>
                      Em caso de dúvidas sobre qualquer palavra utilizada neste termo, o VISITANTE deverá entrar em contato com a EMPRESA através dos canais de comunicação encontradas no site.

                      <br> <br>  <b>4. DO ACESSO AO SITE</b> <br>
                      O Site e plataforma funcionam normalmente 24 (vinte e quatro) horas por dia, porém podem ocorrer pequenas interrupções de forma temporária para ajustes, manutenção, mudança de servidores, falhas técnicas ou por ordem de força maior, que podem deixar o site indisponível por tempo limitado.

                      <br>  A EMPRESA não se responsabiliza por nenhuma perda de oportunidade ou prejuízos que esta indisponibilidade temporária possa gerar aos usuários.

                      <br>  Em caso de manutenção que exigirem um tempo maior, a EMPRESA irá informar previamente aos clientes da necessidade e do tempo previsto em que o site ou plataforma ficará offline.

                      <br>  O acesso ao site só é permitido a maiores de 18 anos de idade ou que possuírem capacidade civil plena. Para acesso de menores de idade, é necessária a expressa autorização dos pais ou tutores, ficando o mesmo responsáveis sobre qualquer compra ou acesso efetuados pelo mesmo.

                      <br>  Caso seja necessário realizar um cadastro junto a plataforma, onde o VISITANTE deverá preencher um formulário com seus dados e informações, para ter acesso a alguma parte restrita, ou realizar alguma compra.

                      <br>  Todos os dados estão protegidos conforme a Lei Geral de Proteção de Dados, e ao realizar o cadastro junto ao site, o VISITANTE concorda integralmente com a coleta de dados conforme a Lei e com a Política de Privacidade da EMPRESA.

                      <br><br>  <b>5. DA LICENÇA DE USO E CÓPIA</b> <br>
                      O visitante poderá acessar todo o conteúdo do website, como artigos, vídeos, imagens, produtos e serviços, não significando nenhum tipo de cessão de direito ou permissão de uso, ou de cópia dos mesmo.

                      <br>  Todos os direitos são preservados, conforme a legislação brasileira, principalmente na Lei de Direitos Autorais (regulamentada na Lei nº 9.610/18), assim como no Código Civil brasileiro (regulamentada na Lei nº 10.406/02), ou quaisquer outras legislações aplicáveis.

                      <br>  Todo o conteúdo do site é protegido por direitos autorais, e seu uso, cópia, transmissão, venda, cessão ou revenda, deve seguir a lei brasileira, tendo a EMPRESA todos os seus direitos reservados, e não permitindo a cópia ou utilização de nenhuma forma e meio, sem autorização expressa e por escrita da mesma.

                      <br>  A EMPRESA poderá em casos concretos permitir pontualmente exceções a este direito, que serão claramente destacados no mesmo, com a forma e permissão de uso do conteúdo protegido. Este direito é revogável e limitado as especificações de cada caso.

                      <br><br>  <b>6. DAS OBRIGAÇÕES</b> <br>
                      O VISITANTE ao utilizar o website da EMPRESA, concorda integralmente em:

                      <br>  De nenhuma forma ou meio realizar qualquer tipo de ação que tente invadir, hacker, destruir ou prejudicar a estrutura do site, plataforma da EMPRESA ou de seus parceiros comerciais. Incluindo-se, mas não se limitando, ao envio de vírus de computador, de ataques de DDOS, de acesso indevido por falhas da mesma ou quaisquer outras forma e meio.
                      De não realizar divulgação indevida nos comentários do si☺te de conteúdo de SPAM, empresas concorrentes, vírus, conteúdo que não possua direitos autorais ou quaisquer outros que não seja pertinente a discussão daquele texto, vídeo ou imagem.
                      Da proibição em reproduzir qualquer conteúdo do site ou plataforma sem autorização expressa, podendo responder civil e criminalmente pelo mesmo.
                      Com a Política de Privacidade do site, assim como tratamos os dados referentes ao cadastro e visita no site, podendo a qualquer momento e forma, requerer a exclusão dos mesmos, através do formulário de contato.
                      <br><br>  <b>7. DA MONETIZAÇÃO E PUBLICIDADE</b> <br>
                      A EMPRESA pode alugar ou vender espaços publicitários na plataforma, ou no site, diretamente aos anunciantes, ou através de empresas especializadas com o Adsense (Google), Taboola ou outras plataformas especializadas como o Eletro Criticas

                      <br>  Essas publicidades não significam nenhuma forma de endosso ou responsabilidade pelos mesmos, ficando o VISITANTE responsável pelas compras, visitas, acessos ou quaisquer ações referentes as estas empresas.

                      <br>  Todas as propagandas no site ou plataforma serão claramente destacadas como publicidade, como forma de disclaimer da EMPRESA e de conhecimento do VISITANTE.

                      <br>  Em casos de compra de produtos ou serviços, será possível a devolução em até 07 (sete) dias, conforme o Código de Defesa do Consumidor.

                      <br>  Estes anúncios podem ser selecionados pela empresa de publicidade automaticamente, conforme as visitas recentes do VISITANTE, assim como baseado no seu histórico de busca, conforme as políticas de acesso da plataforma.

                      <br><br>  <b>8. DOS TERMOS GERAIS</b> <br>
                      O Site irá apresentar hiperlinks durante toda a sua navegação, que podem levar diretamente para outra página da EMPRESA ou para sites externos.

                      <br>  Apesar da EMPRESA apenas criar links para sites externos de extrema confiança, caso o usuário acesse um site externo, a EMPRESA não tem nenhuma responsabilidade pelo meio, sendo uma mera indicação de complementação de conteúdo, ficando o mesmo responsável pelo acesso, assim como sobre quaisquer ações que venham a realizar neste site.

                      <br>  Em caso que ocorra eventuais conflitos judiciais entre o VISITANTE e a EMPRESA, o foro elegido para a devida ação será o da comarca da Empresa, mesmo que haja outro mais privilegiado.
                  </span>
                </div>
              </div>
              <div>
                <div style="width: 80%;  margin-left: 10%; padding: 2%;">
                  <a href="/home">
                    <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit" > Voltar</button>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

      <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    
    </body>
</html>
