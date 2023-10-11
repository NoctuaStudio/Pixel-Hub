package com.example.javawebapp;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


// 1. criar uma classe em java
// 2. extends HttpServlet
// 3. "roteamento" anotar a classe com @WebServlet definir
// name e value
// 4. sobreescrever os métodos do???  doGet, doPost, doDelete, etc
// e definir o comportamento

@WebServlet(name = "suporte", value = "/suporte")
public class SuporteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String assunto = req.getParameter("assunto");    
        String titulo = req.getParameter("titulo");  
        String mensagem = req.getParameter("suporte_mensagem");      
         
        Validacao suporte = new Validacao();
        suporte.validarAssunto(assunto);
        suporte.validarTitulo(titulo);
        suporte.validarMensagem(mensagem);

        if(suporte.getErros().isEmpty()){
            res.sendRedirect("index.jsp");
        } else {
            req.setAttribute("assunto", assunto);
            req.setAttribute("titulo", titulo);
            req.setAttribute("suporte_mensagem", mensagem);
            req.setAttribute("erros", suporte.getErros());
            req.getRequestDispatcher("suporte.jsp").forward(req, res);
        }

    }
    
}
