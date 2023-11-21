package com.example.javawebapp.usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.sql.Statement;

import com.example.javawebapp.db.Conexao;
import at.favre.lib.crypto.bcrypt.BCrypt;



public class UsuarioDao {
    //cadastrar
    //listar
    private static Integer idAtual = 0;
    
    //INSERT INTO Usuarios VALUES(?)
    public static Usuario cadastrar(String nome, String sobrenome, String username, String senha, String email, String telefone, String endereco, String cep, int ID_Cidade){
        Usuario usuario = null;
        String hashSenha = BCrypt.withDefaults().hashToString(12, senha.toCharArray());        
        String sql = "INSERT INTO Usuarios (Nome, Sobrenome, Username, Senha, Email, Telefone, Endereco, Cep, ID_Cidade) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);//??
        ) {
            statement.setString(1, nome);
            statement.setString(2, sobrenome);
            statement.setString(3, username);
            statement.setString(4, hashSenha);
            statement.setString(5, email);
            statement.setString(6, telefone);
            statement.setString(7, endereco);
            statement.setString(8, cep);
            statement.setInt(9, ID_Cidade);
            statement.executeUpdate(); //EXECUTANDO A QUERY

            ResultSet rs = statement.getGeneratedKeys();

            if(rs.next()) {
                usuario = new Usuario(rs.getInt(1), nome, sobrenome, username, hashSenha, email, telefone, endereco, cep, ID_Cidade);

                System.out.println("CADASTREI O USUARIO, DADOS DO USUARIO:"+ usuario.toString());
            }

            rs.close();

            return usuario;  
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static List<Usuario> listarTodos() {
        String sql = "SELECT * FROM usuarios;";
        List<Usuario> usuarios = new ArrayList<>();

        try (
            Connection connection = Conexao.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
        ) {
            while(rs.next()) {
                usuarios.add(
                    new Usuario(
                        rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("sobrenome"),
                    rs.getString("username"),
                    rs.getString("senha"),
                    rs.getString("email"),
                    rs.getString("telefone"),
                    rs.getString("endereco"),
                    rs.getString("cep"),
                    rs.getInt("ID_Cidade")
                    )
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
            return usuarios;
        } 

        return usuarios;
        
    }


    //SELECT * FROM Usuarios WHERE id = ?
    //Entrada = id
    //Saida = usuario
    public static Usuario buscarPorEmail(String email) {
        String sql = "SELECT * FROM usuarios WHERE email = ?;";
    
        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
        ) {
            statement.setString(1, email);
            ResultSet rs = statement.executeQuery();
    
            if (rs.next()) {
                return new Usuario(
                    rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("sobrenome"),
                    rs.getString("username"),
                    rs.getString("senha"),
                    rs.getString("email"),
                    rs.getString("telefone"),
                    rs.getString("endereco"),
                    rs.getString("cep"),
                    rs.getInt("ID_Cidade")
                );
            }
    
            rs.close();
    
        } catch (Exception e) {
            e.printStackTrace();
        }
    
        return null;
    }
    

    //Login
    //Entrada = Email e
    //Saida = Usuario/null ou Boolean
    public static Boolean login(String email, String senha) {
        Usuario usuario = buscarPorEmail(email);
        if (usuario != null) {
            BCrypt.Result result = BCrypt.verifyer().verify(senha.toCharArray(), usuario.getSenha());
            return result.verified;
        }
        return false;
    }

    //Entrada = email
    //Saida = boolean
    
    public static Boolean existeComEmail(String email) {
        return buscarPorEmail(email) != null;
    }

    public static String apresentarDadosString(Usuario usuario){
        return usuario.toString();
    }


    
}


