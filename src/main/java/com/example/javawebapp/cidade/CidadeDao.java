package com.example.javawebapp.cidade;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.example.javawebapp.db.Conexao;

public class CidadeDao {

    public static Integer obterIdPorNome(String nomeCidade) {
        Integer idCidade = null;
        String sql = "SELECT ID FROM Cidades WHERE name = ?;";

        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
        ) {
            statement.setString(1, nomeCidade);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                idCidade = rs.getInt("ID");
            }

            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return idCidade;
    }
}
