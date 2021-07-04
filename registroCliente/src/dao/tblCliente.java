/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.sun.jdi.connect.spi.Connection;
import java.awt.List;
import java.lang.System.Logger;
import java.lang.System.Logger.Level;
import java.util.ArrayList;

/**
 *
 * @author Junior de la Rocha
 */
public class tblCliente {
    
    private Conexion conex;
    private Connection conn;
    private PreparedStatement mostrarClientes;
    
    
    private List<Cliente> Libreros = new ArrayList();
    
    public TblCliente (List<Cliente>lista){
        
        this.Libreros = lista;
        conn = conex.obtenerConexion();
        
        try{
            
            mostrarClientes = conn.prepareStatement("select * from Librero");
        }
        catch (SQLException ex){
            
            
            Logger.getLogger(TblCliente.class.getName()).log(Level.SEVERE,null,ex)
            
        }
        
        
        
        
    }
    
    
    
}
