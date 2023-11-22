package com.example.javawebapp;

import java.io.IOException;

import com.example.javawebapp.usuario.Usuario;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "logoutServlet", value = "/logout")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession();        
        Usuario usuarioLogado = (Usuario) session.getAttribute("usuarioLogado");
         if (usuarioLogado == null) {
            System.out.println("NAO TINHA SESSAO");
            res.sendRedirect("login");
            return;
        }

       

        session.removeAttribute("usuarioLogado");
        System.out.println("SESSAO ELIMINADA");

        res.sendRedirect("home");
    }
}