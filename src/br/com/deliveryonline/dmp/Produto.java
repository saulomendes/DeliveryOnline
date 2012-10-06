package br.com.deliveryonline.dmp;

import java.util.List;

public class Produto {

	private int id;
	private String descricao;
	private double vlrUnit;
	private List<Categoria> categorias;
	private Grupo grupo;
	
	public Produto(int id, String descricao, double vlrUnit, List<Categoria> categorias, Grupo grupo) {
		super();
		this.id = id;
		this.descricao = descricao;
		this.vlrUnit = vlrUnit;
		this.categorias = categorias;
		this.setGrupo(grupo);
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

	public double getVlrUnit() {
		return vlrUnit;
	}

	public void setVlrUnit(double vlrUnit) {
		this.vlrUnit = vlrUnit;
	}

	public List<Categoria> getCategorias() {
		return categorias;
	}

	public void setCategorias(List<Categoria> categorias) {
		this.categorias = categorias;
	}

	public Grupo getGrupo() {
		return grupo;
	}

	public void setGrupo(Grupo grupo) {
		this.grupo = grupo;
	}
	
}
