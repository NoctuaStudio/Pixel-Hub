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


        Validacao cadastro = new Validacao(); 
        cadastro.validarNome(nome);
        cadastro.validarSobrenome(sobrenome);
        cadastro.validarUsername(username);
        cadastro.validarSenha(senha);
        cadastro.confirmarSenha(senha, confirmar);
        cadastro.validarEmail(email);
        cadastro.validarTelefone(telefone);
        cadastro.validarEndereco(endereco);
        cadastro.validarEstado(estado);
        cadastro.validarCidade(cidade);

        Boolean[] errosSenha = cadastro.getErrosSenha();

        ArrayList<String> erros = new ArrayList<String>(); 
        erros = cadastro.getErros();

        if (cep.isBlank() || cep.isEmpty()){
            erros.add("O CEP não pode estar vazio.");
        }

        if (erros.isEmpty()) {
            res.sendRedirect("login.jsp");
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
            req.setAttribute("errosSenha", errosSenha);
            req.getRequestDispatcher("cadastro.jsp").forward(req, res);
        }
    }
}
