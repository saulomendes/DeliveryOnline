package br.com.deliveryonline.dmp;

import java.util.Date;


public class Pedido {

	private int id;
	private Date data;
	private Endereco endereco;
	private Usuario usuario;
	private PedidoHistorico pedidoHistorico;
	
	public Pedido() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public PedidoHistorico getPedidoHistorico() {
		return pedidoHistorico;
	}

	public void setPedidoHistorico(PedidoHistorico pedidoHistorico) {
		this.pedidoHistorico = pedidoHistorico;
	}
	
	
	
	
}
