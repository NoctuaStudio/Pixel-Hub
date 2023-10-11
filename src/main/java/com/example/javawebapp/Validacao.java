package com.example.javawebapp;
import java.util.ArrayList;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validacao {
private ArrayList<String> erros = new ArrayList<String>();
private ArrayList<Boolean> errosSenha = new ArrayList<Boolean>(); 


    public ArrayList getErros() {
    return erros;
    }

    public ArrayList getErrosSenha() {
        return errosSenha;
        }

        
    public void validarNome(String nome) {
        if (nome.isBlank() || nome.isEmpty()){
            erros.add("O nome não pode estar vazio.");
        }        
    }

    public void validarSobrenome(String sobrenome){
        if (sobrenome.isBlank() || sobrenome.isEmpty()){
            erros.add("O sobrenome não pode estar vazio.");
        }
    }

    public void validarUsername(String username){
        if (username.isBlank() || username.isEmpty()){
            erros.add("O username não pode estar vazio.");
        }
    }

    public void confirmarSenha(String senha, String confirmar){
        if(senha != confirmar){
            erros.add("As senhas devem ser iguais.");
        }
    }

    public void validarTelefone(String telefone){
        if (telefone.isBlank() || telefone.isEmpty()){
            erros.add("O telefone não pode estar vazio.");
        }
    }

    public void validarEndereco(String endereco){
        if (endereco.isBlank() || endereco.isEmpty()){
            erros.add("O endereço não pode estar vazio.");
        }
    }

    public void validarEstado(String estado){
        if (estado.isBlank() || estado.isEmpty()){
            erros.add("O Estado não pode estar vazio.");
        }
    }

    public void validarCidade(String cidade){
        if (cidade.isBlank() || cidade.isEmpty()){
            erros.add("A Cidade não pode estar vazia.");
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
        boolean verificarTamanho = false;


    
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

        if(!(senha.length() < 8 && senha.length() > 30)){
            verificarTamanho = true;
        }


        if(verificarTamanho == false|| verificarMaiuscula==false || verificarMinuscula==false || verificarEspecial==false || verificarNumero==false){
            erros.add("Senha inválida");
        }

        errosSenha.add(verificarMaiuscula);
        errosSenha.add(verificarMinuscula);
        errosSenha.add(verificarNumero);
        errosSenha.add(verificarEspecial);
        errosSenha.add(verificarTamanho); 
    }
}
