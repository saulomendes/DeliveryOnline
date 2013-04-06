package br.com.deliveryonline.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.deliveryonline.dmp.Categoria;

public class CategoriaDAO extends DAO {

	public CategoriaDAO() {
		
	}
	
	public void save(Categoria cat) {
		EntityManager em = getEntityManager();
		em.getTransaction().begin();
		em.persist(cat);
		em.getTransaction().commit();
		em.close();
	}
	
	public void remove(Categoria cat) {
		EntityManager em = getEntityManager();
		em.getTransaction().begin();
		em.remove(cat);
		em.getTransaction().commit();
		em.close();
		
	}

	public void update(Categoria cat) {
		EntityManager em = getEntityManager();
		em.getTransaction().begin();
		em.merge(cat);
		em.getTransaction().commit();
		em.close();
	}
	
	public List<Categoria> listAll() {
		EntityManager em = getEntityManager();
		Query q = em.createNamedQuery(Categoria.QUERY_LISTAR_TODOS, Categoria.class);
		return q.getResultList();
	}
	
}
