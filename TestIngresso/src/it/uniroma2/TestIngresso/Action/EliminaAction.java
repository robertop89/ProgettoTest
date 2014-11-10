package it.uniroma2.TestIngresso.Action;

import it.uniroma2.TestIngresso.DAO.DAOFactory;
import it.uniroma2.TestIngresso.DAO.DomandaDAO;
import it.uniroma2.TestIngresso.Model.Domanda;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Elimina una domanda tra quelle che vengono proposte agli utenti
 * @author gruppo RAM
 * @version 07-12-14
 */
public class EliminaAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	/** Id della domanda da eliminare */
	private int id;
	/** Lista in cui vengono caricate le domande presenti nel DB */
	private List<Domanda> elenco = new ArrayList<Domanda>();
	/*private int materia;*/
	/**
	 * Elimina la domanda selezionata e ricarica tutte le domande
	 * @return "success" in caso di successo, "error" in caso di errore di connessione
	 */
	public String execute(){
		
		DomandaDAO dd = DAOFactory.createDomanda();
		boolean c = dd.delete(id);
		if(c == false){
			addActionError("Errore di connessione! Riprovare più tardi");
			return "error";
		}
		else{
			/*setElenco(DomandaFactory.caricaDomande(materia));*/
			addActionMessage("Eliminazione Avvenuta Con Successo");
			return "success";
		}	
	}
	public int getIdDomanda() {
		return id;
	}

	public void setIdDomanda(int idDomanda) {
		this.id = idDomanda;
	}
	public List<Domanda> getElenco() {
		return elenco;
	}
	public void setElenco(List<Domanda> elenco) {
		this.elenco = elenco;
	}
}
