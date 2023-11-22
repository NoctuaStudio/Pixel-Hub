package com.example.javawebapp;

import java.io.IOException;
import java.util.List;

import com.example.javawebapp.produto.Produto;
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

@WebServlet(name = "carrinho", value = "/carrinho")
public class CarrinhoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        List<Produto> carrinho = ProdutoDao.listarTodos();
        System.out.println(carrinho.size());
        req.setAttribute("carrinho", carrinho);
        req.getRequestDispatcher("WEB-INF/carrinho.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }

}

