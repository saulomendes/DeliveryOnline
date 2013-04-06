package br.com.deliveryonline.bean;

import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import br.com.deliveryonline.dao.CategoriaDAO;
import br.com.deliveryonline.dmp.Categoria;

@ManagedBean(name="beanCategoria")
@ViewScoped
public class CategoriaBean {

	private List<Categoria> categoriaList;
	public Categoria categoria = new Categoria();

	public CategoriaBean() {

	}
	
	public List<Categoria> getCategoriaList() {
		CategoriaDAO catDAO = new CategoriaDAO();
		categoriaList = catDAO.listAll();
		return catDAO.listAll();
	}

	public void setCategoriaList(List<Categoria> categoriaList) {
		this.categoriaList = categoriaList;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
	public void save() {
		CategoriaDAO catDAO = new CategoriaDAO();
		catDAO.save(categoria);
	}
	
}
