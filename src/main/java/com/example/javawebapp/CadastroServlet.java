package com.example.javawebapp.validators;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Set;
import com.example.javawebapp.validators.ValidatorUtil;

import com.example.javawebapp.Validacao;
import com.example.javawebapp.forms.CadastroForm;

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
        res.sendRedirect("cadastro.jsp");
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

        /*
         * System.out.println("Nome: " + nome);
         * System.out.println("Sobrenome: " + sobrenome);
         * System.out.println("Username: " + username);
         * System.out.println("Senha: " + senha);
         * System.out.println("Confirmar: " + confirmar);
         * System.out.println("Email: " + email);
         * System.out.println("Telefone: " + telefone);
         * System.out.println("Endereço: " + endereco);
         * System.out.println("Estado: " + estado);
         * System.out.println("Cidade: " + cidade);
         * System.out.println("Cep: " + cep);
         */
        System.out.println("Termos: " + termos);

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
        cadastro.validarCep(cep);

        if (cadastro.getErros().isEmpty()) {
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
            req.setAttribute("erros", cadastro.getErros());
            req.setAttribute("errosSenha", cadastro.getErrosSenha());
            req.getRequestDispatcher("cadastro.jsp").forward(req, res);
        }
    }
}
