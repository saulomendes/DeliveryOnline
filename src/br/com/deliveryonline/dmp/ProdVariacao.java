package br.com.deliveryonline.dmp;

public class ProdVariacao {

	private int id;
	private String descricao;
	private boolean flagGrupo;
	private int flagQtdEscolher;
	private int flagQtdPorItem;
	private double vlrUnit;
	private Produto produto;
	private ProdVariacao variacaoPai;
	
	
	
	public ProdVariacao(int id, String descricao, boolean flagGrupo,
			int flagQtdEscolher, int flagQtdPorItem, double vlrUnit,
			Produto produto, ProdVariacao variacaoPai) {
		super();
		this.id = id;
		this.descricao = descricao;
		this.flagGrupo = flagGrupo;
		this.flagQtdEscolher = flagQtdEscolher;
		this.flagQtdPorItem = flagQtdPorItem;
		this.vlrUnit = vlrUnit;
		this.produto = produto;
		this.variacaoPai = variacaoPai;
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
	
	public boolean isFlagGrupo() {
		return flagGrupo;
	}
	
	public void setFlagGrupo(boolean flagGrupo) {
		this.flagGrupo = flagGrupo;
	}
	
	public int getFlagQtdEscolher() {
		return flagQtdEscolher;
	}
	
	public void setFlagQtdEscolher(int flagQtdEscolher) {
		this.flagQtdEscolher = flagQtdEscolher;
	}
	
	public int getFlagQtdPorItem() {
		return flagQtdPorItem;
	}
	
	public void setFlagQtdPorItem(int flagQtdPorItem) {
		this.flagQtdPorItem = flagQtdPorItem;
	}
	
	public double getVlrUnit() {
		return vlrUnit;
	}
	
	public void setVlrUnit(double vlrUnit) {
		this.vlrUnit = vlrUnit;
	}
	
	public Produto getProduto() {
		return produto;
	}
	
	public void setProduto(Produto produto) {
		this.produto = produto;
	}
	
	public ProdVariacao getVariacaoPai() {
		return variacaoPai;
	} 
	
	public void setVariacaoPai(ProdVariacao variacaoPai) {
		this.variacaoPai = variacaoPai;
	}
	
}
