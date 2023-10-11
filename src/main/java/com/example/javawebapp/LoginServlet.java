package com.example.javawebapp;

import java.io.IOException;
import java.util.ArrayList;

import java.util.regex.Matcher;
import java.util.regex.Pattern;


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
    private static final String regex = "^(.+)@(.+)$";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        String continuarConectado = req.getParameter("ContinuarConectado");

        ArrayList<String> erros = new ArrayList();

        if(email.isBlank() || email == null){
            erros.add("O email não pode ser vazio");
        }else{
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(email);
            if(!matcher.matches()){
                erros.add("Email inválido");
            }
        }

        if(senha.isBlank() || senha == null){
            erros.add("A senha não pode ser vazia");
        }
        

        // salvar no banco de dados
        // enviar um email para o admin com a mensagem
      
        System.out.println(email);
        System.out.println(senha);
        System.out.println(continuarConectado);

        //fazer em todos os redirect    
      

    }

}