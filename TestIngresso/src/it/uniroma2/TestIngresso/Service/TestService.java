package it.uniroma2.TestIngresso.Service;

import it.uniroma2.TestIngresso.Model.TestAllenamento;
import it.uniroma2.TestIngresso.Model.TestAllenamentoFactory;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

//Path: http://localhost:8080/TestIngresso/rest/TestService
@Path("/TestService")
public class TestService {
	
	@GET
	//Path: http://localhost:8080/TestIngresso/rest/TestService/Carica
	@Path("/Carica")
	@Produces(MediaType.APPLICATION_JSON)
	public TestAllenamento CaricaTest(@QueryParam("materia") int materia, @QueryParam("numero") int numero){
		TestAllenamento test = new TestAllenamento();
		test = TestAllenamentoFactory.caricaTest(materia, numero);
		return test;
	}
}
