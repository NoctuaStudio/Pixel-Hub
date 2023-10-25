package com.example.javawebapp;

import java.io.IOException;

import com.example.javawebapp.usuario.UsuarioDao;

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

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/login.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        String continuarConectado = req.getParameter("ContinuarConectado");

        Validacao login = new Validacao();
        login.validarEmail(email);
        login.validarSenha(senha);

        if(login.getErros().isEmpty()){
            if(UsuarioDao.login(email, senha)){
                HttpSession session = req.getSession();
                session.setAttribute("usuarioLogado", email);
                res.sendRedirect("index.jsp");
            } else{
                req.setAttribute("erroLogin", "Email ou senha incorretos!");
                req.getRequestDispatcher("WEB-INF/login.jsp").forward(req, res);
            }
        }else{
            req.setAttribute("email", email);
            req.setAttribute("senha", senha);
            req.setAttribute("continuarConectado", continuarConectado);
            req.setAttribute("erros", login.getErros());
            req.getRequestDispatcher("WEB-INF/login.jsp").forward(req, res);
        }
        // salvar no banco de dados
        //fazer em todos os redirect    

    }

}