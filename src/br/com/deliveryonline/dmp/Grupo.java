package br.com.deliveryonline.dmp;

public class Grupo {

	private int id;
	private String descricao;
	
	public Grupo(int id, String descricao) {
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
