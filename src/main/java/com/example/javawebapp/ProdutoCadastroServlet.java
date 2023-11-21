package com.example.javawebapp;

import java.io.IOException;
import java.util.Set;

import com.example.javawebapp.forms.CadastroForm;
import com.example.javawebapp.forms.ProdutoCadastroForm;
import com.example.javawebapp.usuario.UsuarioDao;
import com.example.javawebapp.validators.ValidatorUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.ConstraintViolation;

// 1. criar uma classe em java
// 2. extends HttpServlet
// 3. "roteamento" anotar a classe com @WebServlet definir
// name e value
// 4. sobreescrever os métodos do???  doGet, doPost, doDelete, etc
// e definir o comportamento

@WebServlet(name = "vender", value = "/vender")
public class ProdutoCadastroServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/cadastrar-produtos.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String nome = req.getParameter("nome");
        String descricao = req.getParameter("descricao");
        String preco = req.getParameter("preco");
        String quantidade = req.getParameter("quantidade");
        String categoria = req.getParameter("categoria");
        String imagem = req.getParameter("imagem");

        ProdutoCadastroForm produtoCadastroForm = new ProdutoCadastroForm(nome, descricao, preco, quantidade, categoria, imagem);

        Set<ConstraintViolation<ProdutoCadastroForm>> violations = ValidatorUtil.validateObject(produtoCadastroForm);
    
        if (violations.isEmpty()) {
            if(nome == descricao){
               // req.setAttribute("erroEmail", "Já existe um usuário com esse email!");
                //req.getRequestDispatcher("WEB-INF/cadastro.jsp").forward(req, res);
            } else{
                // AQUI DataBase
                //UsuarioDao.cadastrar(nome, sobrenome, username, senha, email, telefone, endereco, cep, Integer.parseInt(cidade));
                //res.sendRedirect("index.jsp");
            }
        } else {
            req.setAttribute("nome", nome);
            req.setAttribute("descricao", descricao);
            req.setAttribute("preco", preco);
            req.setAttribute("quantidade", quantidade);
            req.setAttribute("categoria", categoria);
            req.setAttribute("imagem", imagem);
            req.setAttribute("violations", violations);
            req.getRequestDispatcher("WEB-INF/cadastrar-produtos.jsp").forward(req, res);
        }
    }
}



