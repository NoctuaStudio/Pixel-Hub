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
        
        if (!emailIsValid(email)) {
            erros.add("O email é inválido.");
        }    
    }


    public static boolean emailIsValid(String email) {
        Pattern pattern = Pattern.compile("^(.+)@(.+)$");
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }    
}
