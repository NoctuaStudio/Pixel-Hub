package com.example.javawebapp.usuario;

import java.util.*;

import org.eclipse.tags.shaded.org.apache.xpath.operations.Bool;

public class UsuarioDao {
    //cadastrar
    //listar
    private static Integer idAtual = 0;
    private static List<Usuario> usuarios = new ArrayList<>();
    
    //INSERT INTO Usuarios VALUES(?)
    public static Usuario cadastrar(String nome, String email, String senha){
        Usuario usuario = new Usuario(++idAtual, nome, email, senha);
        usuarios.add(usuario);
        return usuario;
    }

    //SELECT * FROM Usuarios WHERE id = ?
    //Entrada = id
    //Saida = usuario
    public static Usuario buscarPorId(Integer id){
        for (Usuario usuario : usuarios) {
            if(usuario.getId().equals(id)){
                return usuario;
            }
        }
        return null;
    }

    //Login
    //Entrada = Email e
    //Saida = Usuario/null ou Boolean
    public static Boolean login(String email, String senha) {
        for (Usuario usuario : usuarios) {
            if(usuario.getEmail().equals(email) && usuario.getSenha().equals(senha)){
                return true;
            }
        }
        return false;
    }

    //Entrada = email
    //Saida = boolean
    public static Boolean verificarEmailExistente(String email){
        for (Usuario usuario : usuarios) {
            if(usuario.getEmail().equals(email)){
                return true;
            }
        }
        return false;
    }
}
