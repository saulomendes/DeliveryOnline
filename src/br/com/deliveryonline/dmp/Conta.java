package br.com.deliveryonline.dmp;

public class Conta {
	
	private int id;
	private String nome;
	private String sobreNome;
	private String email;
	private String senha;
	
	public Conta() {
		
	}
	
	public Conta(int id, String nome, String sobreNome, String email, String senha) {
		super();
		this.id = id;
		this.nome = nome;
		this.sobreNome = sobreNome;
		this.email = email;
		this.senha = senha;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobreNome() {
		return sobreNome;
	}

	public void setSobreNome(String sobreNome) {
		this.sobreNome = sobreNome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
}
