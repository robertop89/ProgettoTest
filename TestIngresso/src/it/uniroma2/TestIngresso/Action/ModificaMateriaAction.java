package it.uniroma2.TestIngresso.Action;

import com.opensymphony.xwork2.ActionSupport;

import it.uniroma2.TestIngresso.DAO.DAOFactory;
import it.uniroma2.TestIngresso.DAO.MateriaDAO;
import it.uniroma2.TestIngresso.Model.Materia;

public class ModificaMateriaAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	/** Materia da modificare*/
	private Materia materia;
	/**
	 * Modifica la materia con il nome inserito dall'amministratore
	 * @return "success" in caso di successo, "error" in caso di errore di connessione
	 */
	public String execute(){
	
		MateriaDAO md = DAOFactory.createMateria();
		boolean c = md.update(materia);
		
		if(c == false){
			addActionError("Errore di connessione! Riprovare più tardi");
	    	return "error";	}
		
		else{
			addActionMessage("Modifica Avvenuta con Successo");
	        return "success";
	        }
		}
	public Materia getMateria() {
		return materia;
	}

	public void setMateria(Materia materia) {
		this.materia = materia;
	}
	
}
