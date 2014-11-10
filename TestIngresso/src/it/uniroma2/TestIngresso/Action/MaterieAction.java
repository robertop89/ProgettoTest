package it.uniroma2.TestIngresso.Action;

import it.uniroma2.TestIngresso.Model.Materia;
import it.uniroma2.TestIngresso.Model.MateriaFactory;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Carica tutte le materie presenti nel DB per renderle
 * visualizzabili all'amministratore
 * @author gruppo RAM
 * @version 05-11-14
 */
public class MaterieAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	/** Lista in cui vengono caricate le categorie merceologiche */
	public List<Materia> elenco = new ArrayList<Materia>();
	
	/**
	 * Carica le materie presenti nel DB in una variabile lista di Materie
	 * @return "success" in caso di successo, "error" in caso di errore di connessione
	 */
	public String execute(){
		
		setElenco(MateriaFactory.caricaMaterie());
		
		if(elenco == null){
			addActionError("Errore di connessione! Riprovare più tardi");
	    	return "error";
		}
		else
			return "success";
	}

	public List<Materia> getElenco() {
		return elenco;
	}

	public void setElenco(List<Materia> elenco) {
		this.elenco = elenco;
	}
}
