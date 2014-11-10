package it.uniroma2.TestIngresso.Action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Elimina la variabile di sessione "logined", non consentendo più l'accesso alla parte
 * amministratore se non dopo essersi nuovamente loggati
 * @author gruppo RAM
 * @version 07-11-14
 */
public class LogoutAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	
	/**
	 * Rimuove la variabile di sessione "logined"
	 * @return "success"
	 */
	public String execute() throws Exception{
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.remove("logined");
		session.remove("context");
		return "success";
	}
}
