package com.example.javawebapp;

import java.io.IOException;
import java.util.Set;

import com.example.javawebapp.forms.CadastroForm;
import com.example.javawebapp.forms.ProdutoCadastroForm;
import com.example.javawebapp.produto.ProdutoDao;
import com.example.javawebapp.usuario.Usuario;
import com.example.javawebapp.usuario.UsuarioDao;
import com.example.javawebapp.validators.ValidatorUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
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
        System.out.println("CADASTRANDO VENDA");
        String nome = req.getParameter("produtoNome");
        String descricao = req.getParameter("produtoDescricao");
        Double preco = Double.parseDouble(req.getParameter("produtoPreco"));
        int quantidade = Integer.parseInt( req.getParameter("produtoQuantidade"));
        String categoria = req.getParameter("produtoCategoria");
        String condicao =req.getParameter("produtoCondicao");
        String imagem = req.getParameter("produtoImagem");

       System.out.println("DADOS:");
       System.out.println("Nome: "+ nome);
       System.out.println("preco: "+ preco);
       System.out.println("quantidade: "+ quantidade);
       System.out.println("categoria: "+ categoria);
       System.out.println("condicao: "+ condicao);
       System.out.println("imagem: "+ imagem);
  

        System.out.println("FAZENDO VALIDAÇÕES");
        ProdutoCadastroForm produtoCadastroForm = new ProdutoCadastroForm(nome, descricao, preco, quantidade, categoria, imagem);

        Set<ConstraintViolation<ProdutoCadastroForm>> violations = ValidatorUtil.validateObject(produtoCadastroForm);
        System.out.println("VALIDAÇÕES FEITAS");


        System.out.println("VERIFICANDO ERROS:");
        if (violations.isEmpty()) {
            
            if(nome == descricao){
                System.out.println("DEU ERRO:");
                // req.setAttribute("erroEmail", "Já existe um usuário com esse email!");
                //req.getRequestDispatcher("WEB-INF/cadastro.jsp").forward(req, res);
            } else{
                // CADASTRAR
                HttpSession session = req.getSession();
                Usuario usuarioLogado = (Usuario) session.getAttribute("usuarioLogado");
                int id_usuario = usuarioLogado.getId();
                System.out.println("ID DO USUÁRIO LOGADO:"+id_usuario);
                ProdutoDao.cadastrar(id_usuario, nome, descricao, imagem, categoria, preco, quantidade, condicao);
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



