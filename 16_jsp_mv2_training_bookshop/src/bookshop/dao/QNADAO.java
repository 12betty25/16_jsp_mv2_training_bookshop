package bookshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import bookshop.dto.QNADTO;

public class QNADAO {

	private QNADAO() {}
	private static QNADAO instance = new QNADAO();
	public static QNADAO getInstance() {
		return instance;	
				
	}
	
	private Connection conn         = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs            = null;

	public void getConnection() {
		
		try {
			
			Context initctx = new InitialContext();
			Context envctx = (Context) initctx.lookup("java:comp/env");       
			DataSource ds = (DataSource) envctx.lookup("jdbc/bookshop"); 		  
			conn = ds.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	public void getClose() {
    	if (rs != null)    {try {rs.close();}   catch (SQLException e) {}}
    	if (pstmt != null) {try {pstmt.close();} catch (SQLException e) {}}
        if (conn != null)  {try {conn.close();}  catch (SQLException e) {}}
    }
	
	
	public ArrayList<QNADTO> getQNAList(){
		
		ArrayList<QNADTO> qnaList = new ArrayList<QNADTO>();
		
		try {
			getConnection();
			
			QNADTO qnaDTO = new QNADTO();
			pstmt = conn.prepareStatement("SELECT * FROM LIST");
			
		} catch (Exception e) {
			e.printStackTrace();	
		} finally {
			getClose();
		}
		
		return qnaList;
	}
	
}
