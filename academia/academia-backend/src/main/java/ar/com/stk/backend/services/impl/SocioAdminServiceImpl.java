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

import ar.com.stk.common.entities.libreria.Libro;
import ar.com.stk.common.hospital.Socio;


import ar.com.stk.dto.SocioDTO;
import ar.com.stk.services.hospital.SocioAdminService;





@WebService(endpointInterface = "ar.com.stk.services.hospital.SocioAdminService",serviceName = "SocioAdminService")
public class SocioAdminServiceImpl implements SocioAdminService {
   
	private static final Logger LOGGER = Logger.getLogger(SocioAdminServiceImpl.class);	
	private GenericCRUDBO<Socio> socioBO = null;
	private Assembler assembler;
	
	public List<SocioDTO> getAll() {
		LOGGER.info("SocioAdminServiceImpl.BEGIN.Call getAll()");
		try {
			List<Socio> socio= socioBO.getAll();
			LOGGER.info("LibroAdminRealServiceImpl.END.Call getAll()");
			return getDTO(socio);
		} catch (BusinessException e) {
			LOGGER.error("LibroAdminRealServiceImpl. Error en el proceso getAll() ", e);
			throw new BootException("LibroAdminRealServiceImpl. Error en el proceso getAll() ", e);
		}
	}
	public List<SocioDTO> getAllByPage(PageDTO dto) {
		Page page = this.getAssembler().fromDTO(dto, Page.class);
		LOGGER.info("SocioAdminServiceImpl.BEGIN.Call getAll()");
		try {
			Result<Socio> a= socioBO.getAll(page);
			LOGGER.info("SocioAdminServiceImpl.END.Call getAll()");
			return getDTO(a.getResult());
		} catch (BusinessException e) {
			LOGGER.error("SocioAdminServiceImpl. Error en el proceso getAll() ", e);
			throw new BootException("SocioAdminServiceImpl. Error en el proceso getAll() ", e);
		}
	}
	private List<SocioDTO> getDTO(List<Socio> list) {
		List<SocioDTO> dto = new ArrayList<SocioDTO>();
		for(Socio socio: list){
			dto.add(this.getAssembler().getDTO(socio, SocioDTO.class));
		}
		return dto;
	}
	public SocioDTO getById(long id) {
		LOGGER.info("SocioAdminServiceImpl.BEGIN.Call getById().id: "+id);
		try {
			Socio socio = socioBO.getById(id);
			LOGGER.info("SocioAdminServiceImpl.END.Call getById()");
			return this.getAssembler().getDTO(socio,SocioDTO.class);
		} catch (BusinessException e) {
			LOGGER.error("AutorAdminRealServiceImpl. Error en el proceso getById() ", e);
			throw new BootException("AutorAdminRealServiceImpl. Error en el proceso getById() ", e);
		}
	}
	public void create(SocioDTO dto) {
		Socio entity = this.getAssembler().fromDTO(dto, Socio.class);
		LOGGER.info("SocioAdminServiceImpl.BEGIN.Call create().entity: "+entity);
		try {
			socioBO.saveNew(entity);
			LOGGER.info("AutorAdminRealServiceImpl.END.Call create()");
		} catch (BusinessException e) {
			LOGGER.error("AutorAdminRealServiceImpl. Error en el proceso create() ", e);
			throw new BootException("SocioAdminServiceImpl. Error en el proceso create() ", e);
		}
	}
	private Assembler getAssembler() {
		// TODO Auto-generated method stub
		return assembler;
	}
	public void update(SocioDTO dto) {
		Socio entity = this.getAssembler().fromDTO(dto, Socio.class);
		LOGGER.info("SocioAdminServiceImpl.BEGIN.Call update().entity: "+entity);
		try {
			socioBO.saveOrUpdate(entity);
			LOGGER.info("SocioAdminServiceImpl.END.Call update()");
		} catch (BusinessException e) {
			LOGGER.error("SocioAdminServiceImpl. Error en el proceso update() ", e);
			throw new BootException("SocioAdminServiceImpl. Error en el proceso update() ", e);
		}
		
	}
	public void delete(SocioDTO dto) {
		Socio entity = this.getAssembler().fromDTO(dto, Socio.class);
		LOGGER.info("SocioAdminServiceImpl.BEGIN.Call delete().entity: "+entity);
		try {
			socioBO.delete(entity);
			LOGGER.info("SocioAdminServiceImpl.END.Call delete()");
		} catch (BusinessException e) {
			LOGGER.error("SocioAdminServiceImpl. Error en el proceso delete() ", e);
			throw new BootException("AutorAdminRealServiceImpl. Error en el proceso delete() ", e);
		}
	}
	public GenericCRUDBO<Socio> getSocioBO() {
		return socioBO;
	}
	public void setSocioBO(GenericCRUDBO<Socio> socioBO) {
		this.socioBO = socioBO;
	}
	public static Logger getLogger() {
		return LOGGER;
	}
	public void setAssembler(Assembler assembler) {
		this.assembler = assembler;
	}
	
	
	
	
	
	
}
