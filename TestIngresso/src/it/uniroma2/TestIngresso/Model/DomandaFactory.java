package it.uniroma2.TestIngresso.Model;

import it.uniroma2.TestIngresso.DAO.DAOFactory;
import it.uniroma2.TestIngresso.DAO.DomandaDAO;

import java.util.ArrayList;
import java.util.List;

public class DomandaFactory {	
	
	
	public static List<Domanda> caricaDomande(int materia){
		
		List<Domanda> elenco = new ArrayList<Domanda>();
		DomandaDAO dd = DAOFactory.createDomanda();
		elenco = dd.selectByMateria(materia);
	
		return elenco;
	}
	

}
