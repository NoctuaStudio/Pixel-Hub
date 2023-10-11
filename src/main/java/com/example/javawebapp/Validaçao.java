package com.example.javawebapp;
import java.util.ArrayList;

public class Validaçao {
private ArrayList erros = new ArrayList<String>();

    public ArrayList getErros() {
    return erros;
}

    public void validarNome(String nome) {
        if (nome.isBlank() || nome.isEmpty()){
            erros.add("O nome não pode estar vazio.");
        }        
    }

    



    


    
}
