package controlador;

import java.io.Serializable; 

public class PageController implements Serializable {
	 
	private static final long serialVersionUID = 1L;
 
	public String processPage1(){
		try {
			new Object();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "success";
		
	}
 
	public String processPage2(){
		return "success";
	}
}