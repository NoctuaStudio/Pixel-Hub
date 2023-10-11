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
        ArrayList<String> erros = new ArrayList<String>();        


        if (nome.isBlank() || nome.isEmpty()){
            erros.add("O nome não pode estar vazio.");
        }
        if (sobrenome.isBlank() || sobrenome.isEmpty()){
            erros.add("O sobrenome não pode estar vazio.");
        }
        if (username.isBlank() || username.isEmpty()){
            erros.add("O username não pode estar vazio.");
        }
        if (senha.isBlank() || senha.isEmpty() || confirmar.isBlank() || confirmar.isEmpty()){
            erros.add("A senha não pode estar vazia.");
        }
        if (senha != confirmar){
            erros.add("As senhas devem ser iguais.");
        }
        if (!email.contains("@")){
            erros.add("O email deve ser válido.");
        }

        if(senha != null){
            boolean verificarMinuscula = false;
            boolean verificarMaiuscula = false;
            boolean verificarNumero = false;
            boolean verificarEspecial = false;

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

            if(!verificarEspecial){
                erros.add("Sua senha deve ter pelo menos um dos caracteres especiais");
            }

            if(!verificarMaiuscula){
                erros.add("Sua senha deve ter pelo menos um dos caracteres em maiusculo");
            }

            if(!verificarMinuscula){
                erros.add("Sua senha deve ter pelo menos um dos caracteres em minusculo");
            }

            if(!verificarNumero){
                erros.add("Sua senha deve ter pelo menos um número");
            }

            if(senha.length() < 8){
                erros.add("A senha deve ter no mínimo 8 caracteres");
            }
        }
        if (email.isBlank() || email.isEmpty()){
            erros.add("O email não pode estar vazio.");
        }
        if (telefone.isBlank() || telefone.isEmpty()){
            erros.add("O telefone não pode estar vazio.");
        }
        if (endereco.isBlank() || endereco.isEmpty()){
            erros.add("O endereço não pode estar vazio.");
        }
        if (estado.isBlank() || estado.isEmpty()){
            erros.add("O Estado não pode estar vazio.");
        }
        if (estado.isBlank() || estado.isEmpty()){
            erros.add("O Estado não pode estar vazio.");
        }
        if (cidade.isBlank() || cidade.isEmpty()){
            erros.add("A Cidade não pode estar vazia.");
        }
        if (cep.isBlank() || cep.isEmpty()){
            erros.add("O CEP não pode estar vazio.");
        }

        if (erros.isEmpty()) {
            res.sendRedirect("index.jsp");
        } else {
            req.setAttribute("nome", nome);
            req.setAttribute("sobrenome", sobrenome);   
            req.setAttribute("username", username);  
            req.setAttribute("senha", senha);
            req.setAttribute("confirmar", confirmar);
            req.setAttribute("email", email);
            req.setAttribute("telefone", telefone);
            req.setAttribute("endereco", endereco);
            req.setAttribute("estado", estado);
            req.setAttribute("cidade", cidade);
            req.setAttribute("cep", cep);
            req.setAttribute("termos", termos);
            req.setAttribute("erros", erros);
            req.getRequestDispatcher("cadastro.jsp").forward(req, res);
        }
    }
}
