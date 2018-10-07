package ar.com.stk.backend.services.impl;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebService;

import org.apache.log4j.Logger;

import ar.com.osde.framework.business.crud.GenericCRUDBO;
import ar.com.osde.framework.business.exception.BusinessException;
import ar.com.osde.framework.spring.boot.BootException;
import ar.com.osde.framework.business.crud.service.impl.Assembler;
import ar.com.stk.common.entities.libreria.Categoria;
import ar.com.stk.services.libreria.CategoriaAdminService;
import ar.com.osde.framework.persistence.dao.filter.Page;
import ar.com.osde.framework.persistence.dao.filter.Result;
import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.stk.dto.CategoriaDTO;

@WebService(endpointInterface = "ar.com.stk.services.libreria.CategoriaAdminService",serviceName = "CategoriaAdminService")
public class CategoriaAdminServiceImpl implements CategoriaAdminService {

	private static final Logger LOG = Logger.getLogger(CategoriaAdminServiceImpl.class);	
	private GenericCRUDBO<Categoria> categoriaBO = null;
	private Assembler assembler;
	
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
	 * @see CategoriaAdminService#create(Categoria)
	 */
	public void create(CategoriaDTO dto){
		Categoria entity = this.getAssembler().fromDTO(dto, Categoria.class);
		LOG.info("CategoriaAdminRealServiceImpl.BEGIN.Call create().entity: "+entity);
		try {
		
			categoriaBO.saveNew(entity);
			LOG.info("CategoriaAdminRealServiceImpl.END.Call create()");
		} catch (BusinessException e) {
			LOG.error("CategoriaAdminRealServiceImpl. Error en el proceso create() ", e);
			throw new BootException("CategoriaAdminRealServiceImpl. Error en el proceso create() ", e);
		}
	}
	
	/**
	 * @see CategoriaAdminService#delete(Categoria)
	 */
	public void delete(CategoriaDTO dto){
		Categoria entity = this.getAssembler().fromDTO(dto, Categoria.class);
		LOG.info("CategoriaAdminRealServiceImpl.BEGIN.Call delete().entity: "+entity);
		try {
			categoriaBO.delete(entity);
			LOG.info("CategoriaAdminRealServiceImpl.END.Call delete()");
		} catch (BusinessException e) {
			LOG.error("CategoriaAdminRealServiceImpl. Error en el proceso delete() ", e);
			throw new BootException("CategoriaAdminRealServiceImpl. Error en el proceso delete() ", e);
		}
	}
	
	/**
	 * @see CategoriaAdminService#getAll()
	 */
	public List<CategoriaDTO> getAllByPage(PageDTO dto){
		Page page = this.getAssembler().fromDTO(dto, Page.class);
		LOG.info("CategoriaAdminRealServiceImpl.BEGIN.Call getAll()");
		try {
			Result<Categoria> a= categoriaBO.getAll(page);
			LOG.info("CategoriaAdminRealServiceImpl.END.Call getAll()");
			return getDTO(a.getResult());
		} catch (BusinessException e) {
			LOG.error("CategoriaAdminRealServiceImpl. Error en el proceso getAll() ", e);
			throw new BootException("CategoriaAdminRealServiceImpl. Error en el proceso getAll() ", e);
		}
	}
	
	public List<CategoriaDTO> getAll() {
		LOG.info("CategoriaAdminRealServiceImpl.BEGIN.Call getAll()");
		try {
			List<Categoria> a= categoriaBO.getAll();
			LOG.info("CategoriaAdminRealServiceImpl.END.Call getAll()");
			return getDTO(a);
		} catch (BusinessException e) {
			LOG.error("CategoriaAdminRealServiceImpl. Error en el proceso getAll() ", e);
			throw new BootException("CategoriaAdminRealServiceImpl. Error en el proceso getAll() ", e);
		}
	}
	
	/**
	 * @see CategoriaAdminService#getById(long)
	 */
	public CategoriaDTO getById(long id){
		LOG.info("CategoriaAdminRealServiceImpl.BEGIN.Call getById().id: "+id);
		try {
			Categoria categoria = categoriaBO.getById(id);
			LOG.info("CategoriaAdminRealServiceImpl.END.Call getById()");
			return this.getAssembler().getDTO(categoria,CategoriaDTO.class);
		} catch (BusinessException e) {
			LOG.error("CategoriaAdminRealServiceImpl. Error en el proceso getById() ", e);
			throw new BootException("CategoriaAdminRealServiceImpl. Error en el proceso getById() ", e);
		}
	}
	
	/**
	 * @see CategoriaAdminService#update(Categoria)
	 */
	public void update(CategoriaDTO dto){
		Categoria entity = this.getAssembler().fromDTO(dto, Categoria.class);
		LOG.info("CategoriaAdminRealServiceImpl.BEGIN.Call update().entity: "+entity);
		try {
			categoriaBO.saveOrUpdate(entity);
			LOG.info("CategoriaAdminRealServiceImpl.END.Call update()");
		} catch (BusinessException e) {
			LOG.error("CategoriaAdminRealServiceImpl. Error en el proceso update() ", e);
			throw new BootException("CategoriaAdminRealServiceImpl. Error en el proceso update() ", e);
		}
	}

	private List<CategoriaDTO> getDTO (List<Categoria> list){
		List<CategoriaDTO> dto = new ArrayList<CategoriaDTO>();
		for(Categoria cat : list){
			dto.add(this.getAssembler().getDTO(cat, CategoriaDTO.class));
		}
		return dto;
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

}