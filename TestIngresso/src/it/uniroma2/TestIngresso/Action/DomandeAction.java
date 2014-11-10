package it.uniroma2.TestIngresso.Action;

import it.uniroma2.TestIngresso.Model.Domanda;
import it.uniroma2.TestIngresso.Model.DomandaFactory;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
/**
 * Carica tutte le domande presenti nel DB
 * @author gruppo RAM
 * @version 05-11-14
 */
public class DomandeAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	/** Lista in cui vengono caricate tutte le domande presenti nel DB */
	private List<Domanda> elenco = new ArrayList<Domanda>();
	private int materia;
	
	/**
	 * Richiama il metodo CaricaDomande()
	 * 
	 */
	public String execute(){
		
		setElenco(DomandaFactory.caricaDomande(materia));
		if(elenco == null){
			addActionError("Errore di connessione! Riprovare più tardi");
	    	return "error";
		}
		
		else
			return "success";	
	}

	public List<Domanda> getElenco() {
		return elenco;
	}

	public void setMateria(int materia) {
		this.materia = materia;
	}
	public int getMateria() {
		return materia;
	}

	public void setElenco(List<Domanda> elenco) {
		this.elenco = elenco;
	}

}
