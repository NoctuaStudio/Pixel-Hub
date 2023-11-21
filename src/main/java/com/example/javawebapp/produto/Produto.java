package com.example.javawebapp.produto;

import java.time.LocalDateTime;

public class Produto {
    private Integer id;
    private Integer idUsuario;
    private String nome;
    private String descricao;
    private String imagem;
    private String categoria;
    private Double preco;
    private Integer quantidade;
    private String condicao; // Modificado de Boolean para String
    private LocalDateTime horaPostagem;

    public Produto(Integer id, Integer idUsuario, String nome, String descricao, String imagem, String categoria, Double preco, Integer quantidade, String condicao, LocalDateTime horaPostagem) {
        this.id = id;
        this.idUsuario = idUsuario;
        this.nome = nome;
        this.descricao = descricao;
        this.imagem = imagem;
        this.categoria = categoria;
        this.preco = preco;
        this.quantidade = quantidade;
        this.condicao = condicao;
        this.horaPostagem = horaPostagem;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
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

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    public String getcondicao() {
        return condicao;
    }

    public void setcondicao(String condicao) {
        this.condicao = condicao;
    }

    public LocalDateTime getHoraPostagem() {
        return horaPostagem;
    }

    public void setHoraPostagem(LocalDateTime horaPostagem) {
        this.horaPostagem = horaPostagem;
    }

    @Override
    public String toString() {
        return "Produto [id=" + id + ", idUsuario=" + idUsuario + ", nome=" + nome + ", descricao=" + descricao
                + ", imagem=" + imagem + ", categoria=" + categoria + ", preco=" + preco + ", quantidade=" + quantidade
                + ", condicao=" + condicao + ", horaPostagem=" + horaPostagem + "]";
    }
}
