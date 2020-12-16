package warnet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class koneksi {
    private Connection koneksi;
    public Connection connect(){
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("Berhasil Koneksi");
    }   catch (ClassNotFoundException ex) {
            System.out.println("Gagal koneksi"+ex);
        }
    String url="jdbc:mysql://localhost/javawarnet";
    try {
        koneksi = DriverManager.getConnection(url,"root","");
        System.out.println("Koneksi Database");
    }   catch (SQLException ex) {
            System.out.println("Gagal Koneksi Database"+ex);
        }
    return koneksi;
        }
}