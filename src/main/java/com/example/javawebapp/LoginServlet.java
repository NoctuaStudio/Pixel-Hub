package com.example.javawebapp;

import java.io.IOException;
import java.util.ArrayList;

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

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {
    

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        String continuarConectado = req.getParameter("ContinuarConectado");

        Validacao login = new Validacao();
        login.validarEmail(email);
        login.validarSenha(senha);

        ArrayList<String> erros = new ArrayList();
        erros = login.getErros();

        if(erros.isEmpty()){
            res.sendRedirect("index.jsp");
        }else{
            req.setAttribute("email", email);
            req.setAttribute("senha", senha);
            req.setAttribute("erros", erros);
            req.getRequestDispatcher("login.jsp").forward(req, res);
        }
        // salvar no banco de dados
        //fazer em todos os redirect    

    }

}