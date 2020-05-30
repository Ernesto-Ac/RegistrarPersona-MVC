package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class PersonaDAO implements CRUD{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p = new Persona();
    
    @Override
    public List listar() {
        ArrayList<Persona>list=new ArrayList<>();
        String sql="select * from persona";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Persona per = new Persona();
                per.setDui(rs.getString("dui"));
                per.setNombres(rs.getString("nombres"));
                per.setApellidos(rs.getString("apellidos"));
                list.add(per);
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return list;
    }

    @Override
    public Persona list(String dui) {
        String sql="select * from persona where dui="+dui;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                p.setDui(rs.getString("dui"));
                p.setNombres(rs.getString("nombres"));
                p.setApellidos(rs.getString("apellidos"));
                
            }
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return p;
    }

    @Override
    public boolean add(Persona per) {
        String sql = "insert into persona(dui, nombres, apellidos)values('"+per.getDui()+"','"+per.getNombres()+"','"+per.getApellidos()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            ex.getMessage();
        }
        return false;
    }

    @Override
    public boolean edit(Persona per) {
         String sql = "update persona set dui ='"+per.getDui()+"',nombres='"+per.getNombres()+"',apellidos='"+per.getApellidos()+"' where dui=)"+per.getDui();
         try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            ex.getMessage();
        }
         return false;
    }

    @Override
    public boolean eliminar(String dui) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
