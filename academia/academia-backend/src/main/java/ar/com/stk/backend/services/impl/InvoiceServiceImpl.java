package ar.com.stk.backend.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import ar.com.osde.framework.business.crud.GenericCRUDBO;
import ar.com.osde.framework.business.exception.BusinessException;
import ar.com.stk.common.entities.Invoice;
import ar.com.stk.dto.InvoiceDTO;
import ar.com.stk.services.InvoiceService;
import ar.com.osde.framework.persistence.dao.filter.Page;
import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.osde.framework.services.crud.ResultDTO;
import ar.com.osde.framework.persistence.dao.filter.Result;
import ar.com.osde.framework.services.ServiceException;
import ar.com.osde.framework.business.crud.service.impl.Assembler;

/**
 * Servicio para separar el frontend del backend
 * 
 */
public class InvoiceServiceImpl implements InvoiceService {

	private static final Logger LOGGER = Logger.getLogger(InvoiceServiceImpl.class);
	
	private Assembler assembler;
	private GenericCRUDBO<Invoice> invoiceBO;
	
	
	/**
	 * @return the invoiceBO
	 */
	public GenericCRUDBO<Invoice> getInvoiceBO() {
		return invoiceBO;
	}

	/**
	 * @param invoiceBO the invoiceBO to set
	 */
	public void setInvoiceBO(GenericCRUDBO<Invoice> invoiceBO) {
		this.invoiceBO = invoiceBO;
	}

	/**
	 * @throws ServiceException 
	 * @see InvoiceService#delete(ar.com.osde.multiproject.services.InvoiceDTO)
	 */
	public void delete(InvoiceDTO dto) throws ServiceException {
		try {
			Invoice invoice = getInvoice(dto);
			this.getInvoiceBO().delete(invoice);
		} catch (BusinessException e) {
			LOGGER.error("Error eliminado entidad Invoice",e);
			throw new ServiceException("Error eliminado entidad Invoice",e);
		}
	}

	/**
	 * @param dto
	 * @return
	 * @throws BusinessException
	 */
	private Invoice getInvoice(InvoiceDTO dto) throws BusinessException {
		Invoice invoice = this.getInvoiceBO().getById(dto.getId());
		return invoice;
	}

	/**
	 * @throws ServiceException 
	 * @see InvoiceService#getAll(ar.com.osde.multiproject.services.Page)
	 */
	public ResultDTO<InvoiceDTO> getAll(PageDTO pageDTO) throws ServiceException {
		Result<Invoice> result = null;
		ResultDTO<InvoiceDTO> resultDTO = null;
		try {
			Page page = this.getAssembler().fromDTO(pageDTO,Page.class);
			result = this.getInvoiceBO().getAll(page);
			resultDTO = this.getDTO(result);
		} catch (BusinessException e) {
			LOGGER.error("Error obteniendo entidades Invoice",e);
			throw new ServiceException("Error obteniendo entidades Invoice",e);
		}
		return resultDTO;
	}
	
	private ResultDTO<InvoiceDTO> getDTO(Result<Invoice> result) {
		ResultDTO<InvoiceDTO> resultInvoiceDTO = new  ResultDTO<InvoiceDTO>();
		List<InvoiceDTO> dtos = new ArrayList<InvoiceDTO>();
		for (Invoice invoice : result.getResult()) {
			dtos.add(this.getAssembler().getDTO(invoice, InvoiceDTO.class));
		}
		resultInvoiceDTO.setResult(dtos);
		resultInvoiceDTO.setPage(this.getAssembler().getDTO(result.getPage(),PageDTO.class));
		resultInvoiceDTO.setTotalResults(result.getTotalResults());
		return resultInvoiceDTO;
	}

	/**
	 * @throws ServiceException 
	 * @see InvoiceService#getById(java.lang.Long)
	 */
	public InvoiceDTO getById(Long id) throws ServiceException {
		InvoiceDTO dto = null;
		try {
			Invoice invoice = this.getInvoiceBO().getById(id);
			dto = this.getAssembler().getDTO(invoice, InvoiceDTO.class);
		} catch (BusinessException e) {
			LOGGER.error("Error obteniendo Invoice por id",e);
			throw new ServiceException("Error obteniendo Invoice por id",e);
		}
		return dto;
	}

	/**
	 * @throws ServiceException 
	 * @see InvoiceService#saveNew(ar.com.osde.multiproject.services.InvoiceDTO)
	 */
	public void saveNew(InvoiceDTO dto) throws ServiceException {
		Invoice invoice = this.getAssembler().fromDTO(dto, Invoice.class);
		try {
			this.getInvoiceBO().saveNew(invoice);
		} catch (BusinessException e) {
			LOGGER.error("Error guardando nuevo Invoice",e);
			throw new ServiceException("Error guardando nuevo Invoice",e);
		}
	}

	/**
	 * @throws ServiceException 
	 * @see InvoiceService#saveOrUpdate(ar.com.osde.multiproject.services.InvoiceDTO)
	 */
	public void saveOrUpdate(InvoiceDTO dto) throws ServiceException {
		Invoice invoice = this.getAssembler().fromDTO(dto, Invoice.class);
		try {
			this.getInvoiceBO().saveOrUpdate(invoice);
		} catch (BusinessException e) {
			LOGGER.error("Error actualizando Invoice",e);
			throw new ServiceException("Error actualizando Invoice",e);
		}
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