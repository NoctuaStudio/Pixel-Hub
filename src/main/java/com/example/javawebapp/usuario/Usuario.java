package com.example.javawebapp.usuario;

public class Usuario {
    private Integer id;
    private String nome;
    private String sobrenome;
    private String username;
    private String senha;
    private String email;
    private String telefone;
    private String endereco;
    private String cep;
    private int ID_Cidade;

    public Usuario(int id, String nome, String sobrenome, String username, String senha, String email, String telefone,String endereco, String cep, int ID_Cidade) {
        this.id = id;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.username = username;
        this.senha = senha;
        this.email = email;
        this.telefone = telefone;
        this.endereco = endereco;
        this.cep = cep;
        this.ID_Cidade = ID_Cidade;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public int getID_Cidade() {
        return ID_Cidade;
    }

    public void setID_Cidade(int iD_Cidade) {
        ID_Cidade = iD_Cidade;
    }

    @Override
    public String toString() {
        return "Usuario [id=" + id + ", nome=" + nome + ", sobrenome=" + sobrenome + ", username=" + username
                + ", senha=" + senha + ", email=" + email + ", telefone=" + telefone + ", endereco=" + endereco
                + ", cep=" + cep + ", ID_Cidade=" + ID_Cidade + "]";
    }

    
    
}
