package ar.com.stk.services;

import ar.com.stk.dto.InvoiceDTO;


import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;

import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.osde.framework.services.crud.ResultDTO;
import ar.com.osde.framework.services.Service;
import ar.com.osde.framework.services.ServiceException;

/**
 * Servicio para separar el frontend del backend
 */
@WebService
@XmlSeeAlso({ InvoiceDTO.class, ResultDTO.class})
public interface InvoiceService extends Service{

	/**
	 * Recupera todos los elementos Invoice.
	 * @param page Indica el n�mero de p�gina y la cantidad de
	 * registros que se recuperan.
	 * @return
	 * @throws ServiceException 
	 */
	ResultDTO<InvoiceDTO> getAll(PageDTO page) throws ServiceException;
	
	/**
	 * Recupera un Invoice.
	 * @param id Identificador del Invoice a recuperar.
	 * @return
	 * @throws ServiceException 
	 */
	InvoiceDTO getById(Long id) throws ServiceException;
	
	/**
	 * Elimina un Invoice.
	 * @param dto Invoice a eliminar.
	 * @throws ServiceException 
	 */
	void delete(InvoiceDTO dto) throws ServiceException;
	
	/**
	 * Da de alta un nuevo Invoice.
	 * @param dto Invoice a dar de alta. 
	 * @throws ServiceException 
	 */
	void saveNew(InvoiceDTO dto) throws ServiceException;
	
	/**
	 * Actualiza un Invoice.
	 * @param dto Invoice a actualizar.
	 * @throws ServiceException 
	 */
	void saveOrUpdate(InvoiceDTO dto) throws ServiceException;
}