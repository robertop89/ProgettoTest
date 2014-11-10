package it.uniroma2.TestIngresso.Model;

import it.uniroma2.TestIngresso.DAO.DAOFactory;
import it.uniroma2.TestIngresso.DAO.MateriaDAO;

import java.util.ArrayList;
import java.util.List;

public class MateriaFactory {
	
	public static List<Materia> caricaMaterie(){
		
		List<Materia> elenco = new ArrayList<Materia>();
		MateriaDAO md = DAOFactory.createMateria();
		
		elenco = md.selectAll();
		
	return elenco;
	}
}
