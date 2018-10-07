package ar.com.stk.backend.services.impl;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebService;

import org.apache.log4j.Logger;

import ar.com.osde.framework.business.crud.service.impl.Assembler;
import ar.com.osde.framework.business.exception.BusinessException;
import ar.com.osde.framework.persistence.dao.filter.Page;
import ar.com.osde.framework.persistence.dao.filter.Result;
import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.osde.framework.spring.boot.BootException;
import ar.com.stk.backend.bo.LibroBO;
import ar.com.stk.common.entities.libreria.Libro;
import ar.com.stk.dto.LibroDTO;
import ar.com.stk.services.libreria.AutorAdminService;
import ar.com.stk.services.libreria.LibroAdminService;

@WebService(endpointInterface = "ar.com.stk.services.libreria.LibroAdminService",serviceName = "LibroAdminService")
public class LibroAdminServiceImpl implements LibroAdminService {
	
	private static final Logger LOG = Logger.getLogger(LibroAdminServiceImpl.class);	
	private LibroBO libroBO = null;
	private AutorAdminService autorService;
	private Assembler assembler;
	
	/**
	 * @see LibroAdminService#create(Libro)
	 */
	public void create(LibroDTO dto){
		LOG.info("LibroAdminRealServiceImpl.BEGIN.Call create().entity: "+dto);
		try {
			libroBO.save(dto);
			LOG.info("LibroAdminRealServiceImpl.END.Call create()");
		} catch (BusinessException e) {
			LOG.error("LibroAdminRealServiceImpl. Error en el proceso create() ", e);
			throw new BootException("LibroAdminRealServiceImpl. Error en el proceso create() ", e);
		}
	}

	/**
	 * @see LibroAdminService#delete(Libro)
	 */
	public void delete(LibroDTO dto){
		Libro entity = this.getAssembler().fromDTO(dto, Libro.class);
		LOG.info("LibroAdminRealServiceImpl.BEGIN.Call delete().entity: "+entity);
		try {
			libroBO.delete(entity);
			LOG.info("LibroAdminRealServiceImpl.END.Call delete()");
		} catch (BusinessException e) {
			LOG.error("LibroAdminRealServiceImpl. Error en el proceso delete() ", e);
			throw new BootException("LibroAdminRealServiceImpl. Error en el proceso delete() ", e);
		}
	}
	
	/**
	 * @see LibroAdminService#getAll()
	 */
	public List<LibroDTO> getAllByPage(PageDTO dto){
		Page page = this.getAssembler().fromDTO(dto, Page.class);
		LOG.info("LibroAdminRealServiceImpl.BEGIN.Call getAll()");
		try {
			Result<Libro> libro= libroBO.getAll(page);
			LOG.info("LibroAdminRealServiceImpl.END.Call getAll()");
			return getDTO(libro.getResult());
		} catch (BusinessException e) {
			LOG.error("LibroAdminRealServiceImpl. Error en el proceso getAll() ", e);
			throw new BootException("LibroAdminRealServiceImpl. Error en el proceso getAll() ", e);
		}
	}
	
	/**
	 * @see LibroAdminService#getAll()
	 */
	public List<LibroDTO> getAll(){
		LOG.info("LibroAdminRealServiceImpl.BEGIN.Call getAll()");
		try {
			List<Libro> libro= libroBO.getAll();
			LOG.info("LibroAdminRealServiceImpl.END.Call getAll()");
			return getDTO(libro);
		} catch (BusinessException e) {
			LOG.error("LibroAdminRealServiceImpl. Error en el proceso getAll() ", e);
			throw new BootException("LibroAdminRealServiceImpl. Error en el proceso getAll() ", e);
		}
	}
	
	/**
	 * @see LibroAdminService#getById(long)
	 */
	public LibroDTO getById(long id){
		LOG.info("LibroAdminRealServiceImpl.BEGIN.Call getById().id: "+id);
		try {
			Libro libro = libroBO.getById(id);
			LOG.info("LibroAdminRealServiceImpl.END.Call getById()");
			return this.getAssembler().getDTO(libro,LibroDTO.class);
		} catch (BusinessException e) {
			LOG.error("LibroAdminRealServiceImpl. Error en el proceso getById() ", e);
			throw new BootException("LibroAdminRealServiceImpl. Error en el proceso getById() ", e);
		}
	}
	
	/**
	 * @see LibroAdminService#update(Libro)
	 */
	public void update(LibroDTO dto){
		LOG.info("LibroAdminRealServiceImpl.BEGIN.Call update().entity: "+dto);
		try {
			libroBO.update(dto);
			LOG.info("LibroAdminRealServiceImpl.END.Call update()");
		} catch (BusinessException e) {
			LOG.error("LibroAdminRealServiceImpl. Error en el proceso update() ", e);
			throw new BootException("LibroAdminRealServiceImpl. Error en el proceso update() ", e);
		}
	}

	private List<LibroDTO> getDTO (List<Libro> list){
		List<LibroDTO> dto = new ArrayList<LibroDTO>();
		for(Libro libro : list){
			dto.add(this.getAssembler().getDTO(libro, LibroDTO.class));
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

	/**
	 * @return the autorService
	 */
	public AutorAdminService getAutorService() {
		return autorService;
	}

	/**
	 * @param autorService the autorService to set
	 */
	public void setAutorService(AutorAdminService autorService) {
		this.autorService = autorService;
	}
	
	/**
	 * @return the libroBO
	 */
	public LibroBO getLibroBO() {
		return libroBO;
	}

	/**
	 * @param libroBO the libroBO to set
	 */
	public void setLibroBO(LibroBO libroBO) {
		this.libroBO = libroBO;
	}
}