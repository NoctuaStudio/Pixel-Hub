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

@WebServlet(name = "cadastro", value = "/cadastro")
public class CadastroServlet extends HttpServlet {   

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
       
        String nome = req.getParameter("nome");  
        String sobrenome = req.getParameter("sobrenome");
        String username = req.getParameter("username"); 
        String senha = req.getParameter("senha");
        String confirmar = req.getParameter("confirmar");
        String email = req.getParameter("email");
        String telefone = req.getParameter("telefone");
        String endereco = req.getParameter("endereco");
        String estado = req.getParameter("estado");
        String cidade = req.getParameter("cidade");
        String cep = req.getParameter("cep");
        String termos = req.getParameter("termos");


        System.out.println(nome);
        System.out.println(sobrenome);   
        System.out.println(username);  
        System.out.println(senha);
        System.out.println(confirmar);
        System.out.println(email);
        System.out.println(telefone);
        System.out.println(endereco);
        System.out.println(estado);
        System.out.println(cidade);
        System.out.println(cep);
        System.out.println(termos);

        String redirectURL = "/login";
        res.sendRedirect(redirectURL);
    }
}
