<%@ page language="java" contentType="text/html; charset=UTF-8" %> <%@ page
import="org.apache.juli.logging.LogFactory" %>
<html>
  <head>
    <title>Formulário De Contato</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    />

  <style> 
  body {
      background-image: linear-gradient(
        to right,
        rgb(40, 41, 41),
        rgb(2, 10, 14)
      );
      color: white;
    }
    button {
      background-image: linear-gradient(
        to right,
        rgb(0, 92, 197),
        rgb(90, 20, 220)
      );
      width: 100%;
    }
    .titulo-formulario {
      text-align: center;
    }
    
    .rodape {
      /* background-color: #f8f9fa; */
      background-image: linear-gradient(
        to right,
        rgb(40, 41, 41),
        rgba(2, 10, 14, 0.671)
      );
      padding: 20px;
      text-align: center;
      position: absolut;
      left: 0;
      bottom: 0;
      width: 100%;
    }
    
    .rodape img {
      width: 35px;
      height: 30px;
      margin-right: 10px;
      vertical-align: middle;
    }
    
    .erro {
      color: red;
    }

    /* width */
    ::-webkit-scrollbar {
      width: 10px;
    }

    /* Track */
    ::-webkit-scrollbar-track {
      background: #f1f1f1; 
    }
    
    /* Handle */
    ::-webkit-scrollbar-thumb {
      background: #888; 
    }

    /* Handle on hover */
    ::-webkit-scrollbar-thumb:hover {
      background: #555; 
}

  </style>
  </head>
  <body>
    <div class="container mt-5">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <h1 class="titulo-formulario">Formulário de Contato</h1>

          <form action="process.jsp" method="post" onsubmit="envioConcluido()">
            <div class="form-group">
              <label for="nome">Nome Completo:</label>
              <input
                type="text"
                class="form-control"
                id="nome"
                name="nome"
                required
              />
            </div>
            <div class="form-group">
              <label for="email">E-mail:</label>
              <input
                type="email"
                class="form-control"
                id="email"
                name="email"
                placeholder="example@example.com"
                required
              />
            </div>
            <div class="form-group">
              <label for="telefone">Telefone:</label>
              <input
                type="text"
                class="form-control"
                id="telefone"
                name="telefone"
                required
              />
            </div>
            <div class="form-group">
              <label for="empresa">Nome da Empresa:</label>
              <input
                type="text"
                class="form-control"
                id="empresa"
                name="empresa"
                required
              />
            </div>
            <div class="form-group">
              <label for="mensagem">Mensagem:</label>
              <textarea
                class="form-control"
                id="mensagem"
                name="mensagem"
                rows="5"
                placeholder="Digite sua mensagem aqui..."
                required
              ></textarea>
            </div>
            <div class="d-grid gap-2">
              <button class="btn btn-primary" type="submit" style="width: 100%">
                Enviar
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <footer class="rodape" style="color: whitesmoke">
      <img src="./assets/java11.png" alt="Logo Java" />
      Desenvolvido com Java 11
      <br />
      <img src="./assets/Apache_Tomcat_logo.svg.png" alt="Logo Tomcat" />
      Rodando no servidor Tomcat
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>
      function envioConcluido() {
        event.preventDefault();
        alert("Envio concluído!");
        window.location.href =
          "https://pro-ti-solutions-main.vercel.app/index.html"; // Redireciona para outra página
      }
    </script>
  </body>
</html>
