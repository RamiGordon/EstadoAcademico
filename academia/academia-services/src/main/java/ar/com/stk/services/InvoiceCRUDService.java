package ar.com.stk.services;

import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;

import ar.com.stk.dto.InvoiceDTO;
import ar.com.stk.dto.InvoiceFilterDTO;
import ar.com.osde.framework.services.validation.exception.ServiceCommonException;
import ar.com.osde.framework.services.crud.AbstractCRUDService;
import ar.com.osde.framework.services.crud.ResultDTO;

/**
 *
 */
@WebService
@XmlSeeAlso({InvoiceDTO.class})
public interface InvoiceCRUDService extends AbstractCRUDService<InvoiceDTO> {
	
	/**
	 * Recupera todas las entidades invoice filtrada por
	 * filter
	 */
	ResultDTO<InvoiceDTO> getAllFilter(InvoiceFilterDTO filterDTO) throws ServiceCommonException;
}
