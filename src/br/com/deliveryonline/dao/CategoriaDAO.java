package br.com.deliveryonline.dao;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.deliveryonline.dmp.Categoria;

@ManagedBean(name="beanCategoria")
@ApplicationScoped
public class CategoriaDAO {

	private Categoria categoria = new Categoria();
	
	public CategoriaDAO() {
		
	}
	
	public void save() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("delivery");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(categoria);
		em.getTransaction().commit();
		em.close();
		emf.close();
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
}
