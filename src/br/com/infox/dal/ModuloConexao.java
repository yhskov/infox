/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.infox.dal;

import java.sql.*;

/**
 *
 * @author Thiago Perandré Devides
 */
public class ModuloConexao {
    //Método responsável por estabelecer conexão com o banco de dados
    public static Connection conector() {
        java.sql.Connection conexao = null;
        
        //A linha abaixo "chama" o driver
        String driver = "com.mysql.jdbc.Driver";
        
        //As linhas abaixo armazenam informações referentes ao banco de dados
        String url = "jdbc:mysql://localhost:3306/dbinfox";
        String user = "root";
        String password = "";    
        
        //As linhas abaixo estabelecem a conexão com o banco de dados
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
            //A linha abaixo serve de apoio para esclarecer o erro
            //System.out.println(e);
            
            return null;
        }
    }
}
