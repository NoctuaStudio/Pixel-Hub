package com.example.javawebapp.forms;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public class LoginForm {
    @Email
    @NotNull
    @NotBlank
    private String email;
    @NotNull
    @NotBlank
    private String senha;
    private String lembrar;

    public LoginForm(String email, String senha, String lembrar) {
        this.email = email;
        this.senha = senha;
        this.lembrar = lembrar;
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

    public String isLembrar() {
        return lembrar;
    }

    public void setLembrar(String lembrar) {
        this.lembrar = lembrar;
    }
}
