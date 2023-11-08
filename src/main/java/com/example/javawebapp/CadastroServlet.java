package com.example.javawebapp;

import java.io.IOException;
import java.util.Set;
import com.example.javawebapp.validators.ValidatorUtil;
import com.example.javawebapp.forms.CadastroForm;
import com.example.javawebapp.usuario.UsuarioDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.ConstraintViolation;
import jakarta.validation.Validation;
import jakarta.validation.Validator;

@WebServlet(name = "cadastro", value = "/cadastro")
public class CadastroServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/cadastro.jsp").forward(req, res);
    }

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
        Boolean termos = Boolean.parseBoolean(req.getParameter("termos"));

        CadastroForm cadastroForm = new CadastroForm(nome, sobrenome, username, senha, confirmar, email, telefone,
                endereco, estado, cidade, cep, termos);

        Set<ConstraintViolation<CadastroForm>> violations = ValidatorUtil.validateObject(cadastroForm);
        cadastroForm.validarSenha(senha, confirmar);

        if (violations.isEmpty() && cadastroForm.getErros().isEmpty()) {
            if(UsuarioDao.existeComEmail(email)){
                req.setAttribute("erroEmail", "Já existe um usuário com esse email!");
                req.getRequestDispatcher("WEB-INF/cadastro.jsp").forward(req, res);
            } else{
                UsuarioDao.cadastrar(nome, email, senha);
                res.sendRedirect("index.jsp");
            }
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
            req.setAttribute("violations", violations);
            req.setAttribute("erros", cadastroForm.getErros());
            req.setAttribute("errosSenha", cadastroForm.getErrosSenha());
            req.getRequestDispatcher("WEB-INF/cadastro.jsp").forward(req, res);
        }
    }
}
