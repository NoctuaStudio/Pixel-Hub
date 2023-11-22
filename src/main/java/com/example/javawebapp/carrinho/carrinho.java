package com.example.javawebapp.carrinho;

import java.util.List;

import com.example.javawebapp.produto.Produto;

public class carrinho {
    private List<Produto> produtos;
    private double total;

    public carrinho(List<Produto> produtos, double total) {
        this.produtos = produtos;
        this.total = total;
    }

    public List<Produto> getProdutos() {
        return this.produtos;
    }
}
