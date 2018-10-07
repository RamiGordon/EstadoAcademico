package ar.com.stk.backend.services.impl;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebService;

import org.apache.log4j.Logger;

import ar.com.osde.framework.business.crud.GenericCRUDBO;
import ar.com.osde.framework.business.crud.service.impl.Assembler;
import ar.com.osde.framework.business.exception.BusinessException;
import ar.com.osde.framework.persistence.dao.filter.Page;
import ar.com.osde.framework.persistence.dao.filter.Result;
import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.osde.framework.spring.boot.BootException;
import ar.com.stk.common.entities.libreria.Autor;
import ar.com.stk.dto.AutorDTO;
import ar.com.stk.services.libreria.AutorAdminService;

@WebService(endpointInterface = "ar.com.stk.services.libreria.AutorAdminService",serviceName = "AutorAdminService")
public class AutorAdminServiceImpl implements AutorAdminService {
	
	private static final Logger LOGGER = Logger.getLogger(AutorAdminServiceImpl.class);	
	private GenericCRUDBO<Autor> autorBO = null;
	private Assembler assembler;
	
	/**
	 * @return the autorBO
	 */
	public GenericCRUDBO<Autor> getAutorBO() {
		return autorBO;
	}
	
	/**
	 * @param autorBO the autorBO to set
	 */
	public void setAutorBO(GenericCRUDBO<Autor> autor) {
		this.autorBO=autor;
	}
	
	/**
	 * @see AutorAdminService#create(Autor)
	 */
	public void create(AutorDTO dto){
		Autor entity = this.getAssembler().fromDTO(dto, Autor.class);
		LOGGER.info("AutorAdminRealServiceImpl.BEGIN.Call create().entity: "+entity);
		try {
			autorBO.saveNew(entity);
			LOGGER.info("AutorAdminRealServiceImpl.END.Call create()");
		} catch (BusinessException e) {
			LOGGER.error("AutorAdminRealServiceImpl. Error en el proceso create() ", e);
			throw new BootException("AutorAdminRealServiceImpl. Error en el proceso create() ", e);
		}
	}
	
	/**
	 * @see AutorAdminService#delete(Autor)
	 */
	public void delete(AutorDTO dto){
		Autor entity = this.getAssembler().fromDTO(dto, Autor.class);
		LOGGER.info("AutorAdminRealServiceImpl.BEGIN.Call delete().entity: "+entity);
		try {
			autorBO.delete(entity);
			LOGGER.info("AutorAdminRealServiceImpl.END.Call delete()");
		} catch (BusinessException e) {
			LOGGER.error("AutorAdminRealServiceImpl. Error en el proceso delete() ", e);
			throw new BootException("AutorAdminRealServiceImpl. Error en el proceso delete() ", e);
		}
	}
	
	/**
	 * @see AutorAdminService#getAll()
	 */
	public List<AutorDTO> getAllByPage(PageDTO dto){
		Page page = this.getAssembler().fromDTO(dto, Page.class);
		LOGGER.info("AutorAdminRealServiceImpl.BEGIN.Call getAll()");
		try {
			Result<Autor> a= autorBO.getAll(page);
			LOGGER.info("AutorAdminRealServiceImpl.END.Call getAll()");
			return getDTO(a.getResult());
		} catch (BusinessException e) {
			LOGGER.error("AutorAdminRealServiceImpl. Error en el proceso getAll() ", e);
			throw new BootException("AutorAdminRealServiceImpl. Error en el proceso getAll() ", e);
		}
	}	
	
	public List<AutorDTO> getAll() {
		LOGGER.info("AutorAdminRealServiceImpl.BEGIN.Call getAll()");
		try {
			List<Autor> a= autorBO.getAll();
			LOGGER.info("AutorAdminRealServiceImpl.END.Call getAll()");
			return getDTO(a);
		} catch (BusinessException e) {
			LOGGER.error("AutorAdminRealServiceImpl. Error en el proceso getAll() ", e);
			throw new BootException("AutorAdminRealServiceImpl. Error en el proceso getAll() ", e);
		}
	}
	
	/**
	 * @see AutorAdminService#getById(long)
	 */
	public AutorDTO getById(long id){
		LOGGER.info("AutorAdminRealServiceImpl.BEGIN.Call getById().id: "+id);
		try {
			Autor autor = autorBO.getById(id);
			LOGGER.info("AutorAdminRealServiceImpl.END.Call getById()");
			return this.getAssembler().getDTO(autor,AutorDTO.class);
		} catch (BusinessException e) {
			LOGGER.error("AutorAdminRealServiceImpl. Error en el proceso getById() ", e);
			throw new BootException("AutorAdminRealServiceImpl. Error en el proceso getById() ", e);
		}
	}
	
	/**
	 * @see AutorAdminService#update(Autor)
	 */
	public void update(AutorDTO dto){
		Autor entity = this.getAssembler().fromDTO(dto, Autor.class);
		LOGGER.info("AutorAdminRealServiceImpl.BEGIN.Call update().entity: "+entity);
		try {
			autorBO.saveOrUpdate(entity);
			LOGGER.info("AutorAdminRealServiceImpl.END.Call update()");
		} catch (BusinessException e) {
			LOGGER.error("AutorAdminRealServiceImpl. Error en el proceso update() ", e);
			throw new BootException("AutorAdminRealServiceImpl. Error en el proceso update() ", e);
		}
	}
	
	private List<AutorDTO> getDTO (List<Autor> list){
		List<AutorDTO> dto = new ArrayList<AutorDTO>();
		for(Autor autor : list){
			dto.add(this.getAssembler().getDTO(autor, AutorDTO.class));
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