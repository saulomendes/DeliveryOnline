package br.com.deliveryonline.dmp;

import java.util.List;

public class Usuario extends Conta {

	private String cpf;
	private String telefone;
	private List<Endereco> enderecos;
	
	public Usuario() {
			
	}
	
	public Usuario(String cpf, String telefone, List<Endereco> enderecos) {
		super();
		this.cpf = cpf;
		this.telefone = telefone;
		this.enderecos = enderecos;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public List<Endereco> getEnderecos() {
		return enderecos;
	}

	public void setEnderecos(List<Endereco> enderecos) {
		this.enderecos = enderecos;
	}
	
}
