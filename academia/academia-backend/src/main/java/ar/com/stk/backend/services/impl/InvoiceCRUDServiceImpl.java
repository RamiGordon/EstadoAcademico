package ar.com.stk.backend.services.impl;

import org.apache.log4j.Logger;

import ar.com.stk.common.entities.Invoice;
import ar.com.stk.backend.filter.InvoiceFilter;
import ar.com.stk.dto.InvoiceFilterDTO;
import ar.com.stk.services.InvoiceCRUDService;
import ar.com.stk.dto.InvoiceDTO;
import ar.com.osde.framework.business.exception.BusinessException;
import ar.com.osde.framework.services.validation.exception.ServiceCommonException;
import ar.com.osde.framework.persistence.dao.filter.Page;
import ar.com.osde.framework.persistence.dao.filter.Result;
import ar.com.osde.framework.business.crud.service.impl.AbstractCRUDServiceImpl;
import ar.com.osde.framework.services.crud.ResultDTO;

/**
 * Servicio CRUD para Invoice.
 *
 */
public class InvoiceCRUDServiceImpl extends AbstractCRUDServiceImpl<Invoice,InvoiceDTO> implements InvoiceCRUDService {
	
	private static final Logger LOGGER = Logger.getLogger(InvoiceCRUDServiceImpl.class);
	
	/**
	 * Recupera Invoice aplicando los filtros.
	 */
	public ResultDTO<InvoiceDTO> getAllFilter(InvoiceFilterDTO filterDTO) throws ServiceCommonException {
		LOGGER.info("AbstractCRUDServiceImpl.BEGIN.Call getAllFilter()");
		try {
			InvoiceFilter invoiceFilter = this.getAssembler().fromDTO(filterDTO, InvoiceFilter.class);
			Result<Invoice> result = this.getGenericBO().getAll(invoiceFilter, new Page(1, Integer.MAX_VALUE));
			return this.getAssembler().getDTO(result, InvoiceDTO.class);
		} catch (BusinessException e) {
			LOGGER.error("InvoiceCRUDServiceImpl. Error en el proceso create() ", e);
			throw new ServiceCommonException("InvoiceCRUDServiceImpl. Error en el proceso getAllFilter() ", e);
		}
	}
}
