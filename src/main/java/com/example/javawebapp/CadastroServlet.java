package com.example.javawebapp;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "cadastro", value = "/cadastro")
public class CadastroServlet extends HttpServlet {   

    //VARÁVEIS

    // 4. sobreescrever os métodos do???  doGet, doPost, doDelete, etc
    // e definir o comportamento

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String nome = req.getParameter("nome");
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        String confirmar = req.getParameter("confirmar");
        // salvar no banco de dados
        // enviar um email para o admin com a mensagem
        System.out.println(nome);
        System.out.println(email);
        System.out.println(senha);
        System.out.println(confirmar);
    }
    
}
