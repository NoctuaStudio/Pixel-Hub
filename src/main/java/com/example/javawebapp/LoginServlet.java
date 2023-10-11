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

        ArrayList<String> erros = new ArrayList();

        boolean verificarMinuscula = false;
        boolean verificarMaiuscula = false;
        boolean verificarNumero = false;
        boolean verificarEspecial = false;


        if(email.isBlank() || email == null){
            erros.add("O email não pode ser vazio");
        }else{
            if(!Validacao.emailIsValid(email)){
                erros.add("Email inválido");
            }
        }

        if(senha.isBlank() || senha == null){
            erros.add("A senha não pode ser vazia");
        }
        char[] caracteresSenha = senha.toCharArray();
        for (char c : caracteresSenha) {
            if (Character.isUpperCase(c)){
                verificarMaiuscula = true;
            }
            if (Character.isLowerCase(c)) {
                verificarMinuscula = true;
            }
            if (Character.isDigit(c)){
                verificarNumero = true;
            }
        }
        if(senha.contains("@$!%*#?&+-")){
            verificarEspecial = true;
        }
        if(senha.length() < 8 || !verificarMaiuscula || !verificarMinuscula || !verificarEspecial || !verificarNumero){
            erros.add("Senha inválida");
        }
        
        if(erros.isEmpty()){
            res.sendRedirect("index.jsp");
        }else{
            req.setAttribute("email", email);
            req.setAttribute("senha", senha);
            req.setAttribute("erros", erros);
            req.getRequestDispatcher("login.jsp").forward(req, res);
        }
        // salvar no banco de dados
        // enviar um email para o admin com a mensagem
      
        System.out.println(email);
        System.out.println(senha);
        System.out.println(continuarConectado);

        //fazer em todos os redirect    
      

    }

}