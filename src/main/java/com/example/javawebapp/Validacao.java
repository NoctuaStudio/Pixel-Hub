package com.example.javawebapp;
import java.util.ArrayList;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validacao {
private ArrayList<String> erros = new ArrayList<String>();

    public ArrayList getErros() {
    return erros;
    }

    public void validarNome(String nome) {
        if (nome.isBlank() || nome.isEmpty()){
            erros.add("O nome não pode estar vazio.");
        }        
    }

    public void validarEmail(String email) {
        if(email.isBlank() || email == null){
            erros.add("O email não pode ser vazio");
        }else{
            if (!emailIsValid(email)) {
                erros.add("O email é inválido.");
            }   
        }         
    }

    public boolean emailIsValid(String email) {
        Pattern pattern = Pattern.compile("^(.+)@(.+)$");
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }

    public void validarSenha(String senha){

        boolean verificarMinuscula = false;
        boolean verificarMaiuscula = false;
        boolean verificarNumero = false;
        boolean verificarEspecial = false;

        if(senha.isBlank() || senha == null){
            erros.add("A senha não pode ser vazia");
        }
        char[] caracteresSenha = senha.toCharArray();
        for (char c : caracteresSenha) {
            if (Character.isUpperCase(c)){
                verificarMaiuscula = true;
            }
            if (Character.isLowerCase(c)) {
                verificarMinuscula = true;
            }
            if (Character.isDigit(c)){
                verificarNumero = true;
            }
        }
        if(senha.contains("@$!%*#?&+-")){
            verificarEspecial = true;
        }
        if(senha.length() < 8 || verificarMaiuscula==false || verificarMinuscula==false || verificarEspecial==false || verificarNumero==false){
            erros.add("Senha inválida");
        }
    }
}
