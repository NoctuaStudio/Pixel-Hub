package com.example.javawebapp.forms;
import java.util.ArrayList;

import jakarta.validation.constraints.Negative;
import jakarta.validation.constraints.NegativeOrZero;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.PositiveOrZero;
public class ProdutoCadastroForm {
    @NotNull
    @NotBlank
    private String nome;

    @NotNull
    @NotBlank
    private String descricao;

    @Positive
    @NotNull
    @NotBlank
    private Float preco;

    @Positive
    @NotNull
    @NotBlank
    private int quantidade;

    @NotNull
    @NotBlank
    private String categoria;

    @NotNull
    @NotBlank
    private String imagem;

    public ProdutoCadastroForm(String nome, String descricao, Float preco2, int quantidade2, String categoria, String imagem) {
        this.nome = nome;
        this.descricao = descricao;
        this.preco = preco2;
        this.quantidade = quantidade2;
        this.categoria = categoria;
        this.imagem = imagem;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Float getPreco() {
        return preco;
    }

    public void setPreco(Float preco) {
        this.preco = preco;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }


}
