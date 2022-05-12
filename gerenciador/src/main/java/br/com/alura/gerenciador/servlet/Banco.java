package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

	private static List<Empresa> lista = new ArrayList<>();
	private static Integer chaveSequencial = 1;
	
	static {
		Empresa empresa = new Empresa();
		empresa.setNome("Caelum");
		empresa.setId(chaveSequencial++);
		Empresa empresa2 = new Empresa();
		empresa2.setNome("Alura");
		empresa2.setId(chaveSequencial++);
		lista.add(empresa);
		lista.add(empresa2);
	}
	
	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.chaveSequencial++);
		lista.add(empresa);
	}

	public void remove(Integer id) {
		Iterator<Empresa> it = lista.iterator();
		
		while(it.hasNext()) {
			Empresa empresa = it.next();
			if(empresa.getId() == id){
				it.remove();
			}
		}
		
//Da erro	for(Empresa empresa: lista) {
//de exception		if(empresa.getId() == id){
//					lista.remove(empresa);
//				}
//			}
	}
	
	public List<Empresa> getEmpresas(){
		return Banco.lista;
	}

	public Empresa altera(Integer id) {
		
		for (Empresa empresa: lista) {
			if(empresa.getId() == id) {
				return empresa;
			}
		}
		return null;
	}
}
