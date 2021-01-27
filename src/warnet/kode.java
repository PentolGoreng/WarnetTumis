/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package warnet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ALEX
 */
public class kode {
    private Connection conn = new koneksi().connect();
    int kode;
    public kode(){
       
        String str = "select * from plg where no=(select max(no))";
        try{
        PreparedStatement st = conn.prepareStatement(str);
            
            ResultSet rs = st.executeQuery(str);
    while (rs.next()) {
 kode=rs.getInt(1)+1;}
} catch (Exception e) {
}     
}
    public int getkode(){
        return kode;
    }
}
