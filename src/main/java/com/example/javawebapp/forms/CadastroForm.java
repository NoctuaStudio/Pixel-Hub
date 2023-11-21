package com.example.javawebapp.forms;

import java.util.ArrayList;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public class CadastroForm {
    @NotNull
    @NotBlank
    private String nome;
    @NotNull
    @NotBlank
    private String sobrenome;
    @NotNull
    @NotBlank
    private String username;
    @NotNull
    @NotBlank
    private String senha;
    @NotNull
    @NotBlank
    private String confirmar;
    @NotNull
    @NotBlank
    private String email;
    @NotNull
    @NotBlank
    private String telefone;
    @NotNull
    @NotBlank
    private String endereco;
    @NotNull
    @NotBlank
    private String estado;
    @NotNull
    @NotBlank
    private String cidade;
    @NotNull
    @NotBlank
    private String cep;
    private Boolean termos;
    private ArrayList<String> erros = new ArrayList<String>();
    private Boolean[] errosSenha = new Boolean[5];

    public CadastroForm(String nome, String email, String senha, String confirmar, String sobrenome, String username,
            String telefone, String endereco, String estado, String cidade, String cep, Boolean termos) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.username = username;
        this.senha = senha;
        this.confirmar = confirmar;
        this.email = email;
        this.telefone = telefone;
        this.endereco = endereco;
        this.estado = estado;
        this.cidade = cidade;
        this.cep = cep;
        this.termos = termos;

    }

    public void validarSenha(String senha, String confirmar) {
        boolean verificarMinuscula = false;
        boolean verificarMaiuscula = false;
        boolean verificarNumero = false;
        boolean verificarEspecial = false;
        boolean verificarTamanho = false;

        char[] caracteresSenha = senha.toCharArray();
        for (char c : caracteresSenha) {
            if (Character.isUpperCase(c)) {
                verificarMaiuscula = true;
            }

            if (Character.isLowerCase(c)) {
                verificarMinuscula = true;
            }
            if (Character.isDigit(c)) {
                verificarNumero = true;
            }
            if ("@$!%*#?&+-".indexOf(c) != -1) {
                verificarEspecial = true;
            }
        }

        if (!(senha.length() < 8 && senha.length() > 30)) {
            verificarTamanho = true;
        }

        if (verificarTamanho == false || verificarMaiuscula == false || verificarMinuscula == false
                || verificarEspecial == false || verificarNumero == false) {
            erros.add("Senha inválida");
        }

        if (!senha.equals(confirmar)) {
            erros.add("As senhas devem ser iguais.");
        }

        errosSenha[0] = verificarMaiuscula;
        errosSenha[1] = verificarMinuscula;
        errosSenha[2] = verificarNumero;
        errosSenha[3] = verificarEspecial;
        errosSenha[4] = verificarTamanho;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getConfirmar() {
        return confirmar;
    }

    public void setConfirmar(String confirmar) {
        this.confirmar = confirmar;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public Boolean getTermos() {
        return termos;
    }

    public void setTermos(Boolean termos) {
        this.termos = termos;
    }

    public ArrayList<String> getErros() {
        return erros;
    }

    public Boolean[] getErrosSenha() {
        return errosSenha;
    }
}
