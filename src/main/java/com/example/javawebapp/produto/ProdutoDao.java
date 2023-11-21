package com.example.javawebapp.produto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.example.javawebapp.db.Conexao;

public class ProdutoDao {

    public static Produto cadastrar(Integer idUsuario, String nome, String descricao, String imagem, String categoria, Double preco, Integer quantidade, Boolean usado) {
        Produto produto = null;
        String sql = "INSERT INTO Produtos (ID_Usuario, Nome, Descricao, Imagem, Categoria, Preco, Quantidade, Usado, Hora_postagem) VALUES (?, ?, ?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP)";

        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
        ) {
            statement.setInt(1, idUsuario);
            statement.setString(2, nome);
            statement.setString(3, descricao);
            statement.setString(4, imagem);
            statement.setString(5, categoria);
            statement.setDouble(6, preco);
            statement.setInt(7, quantidade);
            statement.setBoolean(8, usado);
            statement.executeUpdate(); // Executando a query

            ResultSet rs = statement.getGeneratedKeys();

            if (rs.next()) {
                produto = new Produto(
                    rs.getInt(1),
                    idUsuario,
                    nome,
                    descricao,
                    imagem,
                    categoria,
                    preco,
                    quantidade,
                    usado,
                    rs.getTimestamp("Hora_postagem").toLocalDateTime()
                );
            }

            rs.close();

            return produto;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static List<Produto> listarTodos() {
        String sql = "SELECT * FROM produtos;";
        List<Produto> produtos = new ArrayList<>();

        try (
            Connection connection = Conexao.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
        ) {
            while (rs.next()) {
                produtos.add(
                    new Produto(
                        rs.getInt("ID"),
                        rs.getInt("ID_Usuario"),
                        rs.getString("Nome"),
                        rs.getString("Descricao"),
                        rs.getString("Imagem"),
                        rs.getString("Categoria"),
                        rs.getDouble("Preco"),
                        rs.getInt("Quantidade"),
                        rs.getBoolean("Usado"),
                        rs.getTimestamp("Hora_postagem").toLocalDateTime()
                    )
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
            return produtos;
        }

        return produtos;
    }
}