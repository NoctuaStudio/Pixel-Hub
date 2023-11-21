package com.example.javawebapp;

import java.io.IOException;

import com.example.javawebapp.produto.ProdutoDao;

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

@WebServlet(name = "produto", value = "/produto")
public class ProdutoServlet extends HttpServlet {


    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // Obter o parâmetro "id" da URL
        String idParam = req.getParameter("id");

        // Verificar se o parâmetro "id" está presente
        if (idParam != null && !idParam.isEmpty()) {
            try {
                // Converter o parâmetro "id" para um inteiro
                int id = Integer.parseInt(idParam);
                System.out.println("ID do produto: " + id);
                req.setAttribute("produto", ProdutoDao.obterPorId(id));
                System.out.println("TUDO CERTO, REDIRECIONANDO AQUI");
                req.getRequestDispatcher("WEB-INF/produto.jsp").forward(req, res);


            } catch (NumberFormatException e) {
                // NAO CONSEGUIU CONVERTER O ID PRA INTEIRO NA URL
                e.printStackTrace();
            }
        } else {
            // NAO TEM ID NA URL
           res.sendRedirect("produtos");
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }

}

