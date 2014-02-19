package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


@ManagedBean(name="usuario")
@SessionScoped

public class UsuarioManaged {
	
	
	
	@Resource(name="jdbc/FBD")
	private DataSource ds;
	@PostConstruct	
    private void init(){
		
		try {
			Context xt = new InitialContext();
			ds = (DataSource) xt.lookup("java:comp/env/jdbc/FBD");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public List<Usuario> getUsuarioList() throws SQLException{
		
		 
		if(ds==null)
			throw new SQLException("Can't get data source");
 
		//get database connection
		Connection con = ds.getConnection();
 
		if(con==null)
			throw new SQLException("Can't get database connection");
 
		PreparedStatement ps 
			= con.prepareStatement(
			   "select * from usuario"); 
 
		//get Usuario data from database
		ResultSet result =  ps.executeQuery();
 
		List<Usuario> list = new ArrayList<Usuario>();
 
		while(result.next()){
			Usuario cust = new Usuario();
 
			cust.setNombre(result.getString("nom"));
			cust.setDNI(result.getString("dni"));
			cust.setColor(result.getString("color"));
			//store all data into a List 
			list.add(cust);
		}
 
		return list;
	}

}
