package it.uniroma2.TestIngresso.Action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Verifica credenziali amministratore
 * @author gruppo RAM
 * @version 02-11-14
 */
public class LoginAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	/** Credenziali inserite dall'utente nel form */
	private String username,password;
	
	public String execute(){

		if(username == null || password == null){
			addActionError("Inserire credenziali amministratore");
			return "error";
		}
		
		
		else if(getUsername().equals("admin") && getPassword().equals("admin")){
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("logined","true");
			return "success";
		}
		else
			return "error";

	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
