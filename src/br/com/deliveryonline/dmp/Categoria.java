package br.com.deliveryonline.dmp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Transient;

@Entity
@NamedQuery(name=Categoria.QUERY_LISTAR_TODOS, query="select c from Categoria c")
public class Categoria {

	@Transient
	public static final String QUERY_LISTAR_TODOS = "listarTodos";
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String descricao;
	
	public Categoria() {
		
	}
	
	public Categoria(int id, String descricao) {
		super();
		this.id = id;
		this.descricao = descricao;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
}
