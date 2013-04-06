package br.com.deliveryonline.dmp;

public class PedidoHistorico {

	private int id;
	private Pedido idPedido;
	private SituacaoPedido situacaoPedido;
	
	public PedidoHistorico() {
		
		
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public Pedido getIdPedido() {
		return idPedido;
	}
	
	public void setIdPedido(Pedido idPedido) {
		this.idPedido = idPedido;
	}
	
	public SituacaoPedido getSituacaoPedido() {
		return situacaoPedido;
	}
	
	public void setSituacaoPedido(SituacaoPedido situacaoPedido) {
		this.situacaoPedido = situacaoPedido;
	}

	
}
