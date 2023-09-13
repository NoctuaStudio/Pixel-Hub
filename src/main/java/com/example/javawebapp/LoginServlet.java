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

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {   

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        String continuarConectado = req.getParameter("ContinuarConectado");
        // salvar no banco de dados
        // enviar um email para o admin com a mensagem
      
        System.out.println(email);
        System.out.println(senha);
        System.out.println(continuarConectado);

        //fazer em todos os redirect    
        String redirectURL = "/mudar-aqui-para-home";
        res.sendRedirect(redirectURL); // caso nao fuoncione, tente esse "res.setHeader("Location", redirectURL);"
        res.setStatus(HttpServletResponse.SC_FOUND);

    }

}