package ar.com.stk.backend.bo.impl;

import java.util.ArrayList;
import java.util.List;

import ar.com.osde.framework.business.crud.GenericCRUDBO;
import ar.com.osde.framework.business.crud.GenericCRUDBOImpl;
import ar.com.osde.framework.business.crud.service.impl.Assembler;
import ar.com.osde.framework.business.exception.BusinessException;
import ar.com.stk.backend.bo.LibroBO;
import ar.com.stk.common.entities.libreria.Autor;
import ar.com.stk.common.entities.libreria.Categoria;
import ar.com.stk.common.entities.libreria.Libro;
import ar.com.stk.dto.LibroDTO;

public class LibroBOImpl extends GenericCRUDBOImpl<Libro> implements LibroBO{

	private GenericCRUDBO<Categoria> categoriaBO;
	private GenericCRUDBO<Autor> autorBO;
	
	private Assembler assembler;
	
	
	public void save(LibroDTO dto) throws BusinessException {
		Libro entity = this.getAssembler().fromDTO(dto, Libro.class);
		setCategoriaAndAutores(entity);	
		super.saveNew(entity);
	}

	public void update(LibroDTO dto) throws BusinessException {
		Libro entity = this.getAssembler().fromDTO(dto, Libro.class);
		setCategoriaAndAutores(entity);	
		super.saveOrUpdate(entity);
		
	}

	private void setCategoriaAndAutores(Libro entity) throws BusinessException {
		entity.setCategoria(categoriaBO.getById(entity.getCategoria().getId()));
		List<Autor> autors = new ArrayList<Autor>();
		for(Autor autor : entity.getAutores()){
			Autor fullAutor = autorBO.getById(autor.getId());
			autors.add(fullAutor);
		}
		entity.setAutores(autors);
	}

	/**
	 * @return the assembler
	 */
	public Assembler getAssembler() {
		return assembler;
	}

	/**
	 * @param assembler the assembler to set
	 */
	public void setAssembler(Assembler assembler) {
		this.assembler = assembler;
	}
	
	
	/**
	 * @return the categoriaBO
	 */
	public GenericCRUDBO<Categoria> getCategoriaBO() {
		return categoriaBO;
	}

	/**
	 * @param categoriaBO the categoriaBO to set
	 */
	public void setCategoriaBO(GenericCRUDBO<Categoria> categoriaBO) {
		this.categoriaBO = categoriaBO;
	}

	/**
	 * @return the autorBO
	 */
	public GenericCRUDBO<Autor> getAutorBO() {
		return autorBO;
	}

	/**
	 * @param autorBO the autorBO to set
	 */
	public void setAutorBO(GenericCRUDBO<Autor> autorBO) {
		this.autorBO = autorBO;
	}
}
