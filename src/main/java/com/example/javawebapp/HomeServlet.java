package com.example.javawebapp;

import java.io.IOException;

import com.example.javawebapp.usuario.Usuario;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

// 1. criar uma classe em java
// 2. extends HttpServlet
// 3. "roteamento" anotar a classe com @WebServlet definir
// name e value
// 4. sobreescrever os métodos do???  doGet, doPost, doDelete, etc
// e definir o comportamento

@WebServlet(name = "home", value = "/home")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession();
        System.out.println("Sessao pegada");
        Usuario usuarioLogado = (Usuario) session.getAttribute("usuarioLogado");

        if (usuarioLogado != null) {
            System.out.println("Existe sessão");
            System.out.println("Dados do usuario:"+ usuarioLogado.toString());
            req.setAttribute("usuarioLogado", usuarioLogado);
            System.out.println("USUARIO LOGADO");
        }

        System.out.println("Enviando para index");
        req.getRequestDispatcher("WEB-INF/index.jsp").forward(req, res);
        

                

    }
}
