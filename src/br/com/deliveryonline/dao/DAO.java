package br.com.deliveryonline.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DAO {

	private static final String JPA_ENTITY_MANAGER = "delivery";
	private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory(JPA_ENTITY_MANAGER);
	
	public static EntityManager getEntityManager() {
		return emf.createEntityManager();
	}
}
