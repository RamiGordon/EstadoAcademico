package ar.com.stk.web.action.invoice;

import org.apache.log4j.Logger;

import ar.com.osde.framework.business.exception.BusinessException;
import ar.com.stk.dto.InvoiceDTO;
import ar.com.stk.services.InvoiceService;
import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.osde.framework.services.crud.ResultDTO;
import ar.com.osde.framework.services.ServiceException;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

/**
 * Action de struts2 de ejemplo, este action implementa acciones crud con una
 * entidad basica Invoice, esta integrado con spring y tiene inyectado un BO
 * para realizar operaciones crud contra una BD sobre la entidad Invoice
 * 
 */
public class InvoiceAction extends ActionSupport implements Preparable {

	private static final long serialVersionUID = 1L;
	
	private static final Logger LOGGER = Logger.getLogger(InvoiceAction.class);
	
	
	private InvoiceService invoiceService;
	private Long id;
	private InvoiceDTO currentInvoice = null;
	private String nextMethod = "save";
	private ResultDTO<InvoiceDTO> result = null;
	private PageDTO page = new PageDTO(1, 5);
	
	/**
	 * Retorna el listado de Invoice.
	 * @return SUCCESS
	 * @throws BusinessException
	 */
	public String list() throws BusinessException {
		ResultDTO<InvoiceDTO> result = null;
		try {
			result = this.invoiceService.getAll(this.getPage());
		} catch (ServiceException e) {
			if(LOGGER.isDebugEnabled()){
				LOGGER.debug(e);
			}	
		}
		this.setResult(result);
		return SUCCESS;
	}
	
	/**
	 * @see Preparable#prepare()
	 */
	public void prepare() throws BusinessException {
		if (this.getId()== null){
			this.setCurrentInvoice(null);
		}else{	
    		try {
				this.setCurrentInvoice(this.invoiceService.getById(this.getId()));
			} catch (ServiceException e) {
				if(LOGGER.isDebugEnabled()){
					LOGGER.debug(e);
				}	
			}
    	}
    }
	
	/**
	 * Si el id es null crea un elemento nuevo. En caso contrario recupera el Invoice con el
	 * id.
	 * @return SUCCESS
	 * @throws BusinessException
	 */
	public String edit() throws BusinessException{
		if (this.getId()== null){
			this.setCurrentInvoice(new InvoiceDTO());
    		this.setNextMethod("save");
		}else {
    		this.setNextMethod("update");
    		try {
				this.setCurrentInvoice(this.invoiceService.getById(this.getId()));
			} catch (ServiceException e) {
				if(LOGGER.isDebugEnabled()){
					LOGGER.debug(e);
				}	
			}
    	}
		return SUCCESS;
	}
	
	/**
	 * Elimina un Invoice.
	 * @return SUCCESS
	 * @throws BusinessException
	 */
	public String delete() throws BusinessException{
		InvoiceDTO inv;
		try {
			inv = this.invoiceService.getById(this.getId());
			this.invoiceService.delete(inv);
		} catch (ServiceException e) {
			if(LOGGER.isDebugEnabled()){
				LOGGER.debug(e);
			}	
		}
		return SUCCESS;
	}	
	
	/**
	 * Registra un Invoice.
	 * @return SUCCESS
	 * @throws BusinessException
	 */
	public String save() throws BusinessException {
		try {
			this.invoiceService.saveNew(this.getCurrentInvoice());
		} catch (ServiceException e) {
			if(LOGGER.isDebugEnabled()){
				LOGGER.debug(e);
			}	
		}
		return SUCCESS;
	}
	
	/**
	 * Actualiza un Invoice.
	 * @return SUCCESS.
	 * @throws BusinessException
	 */
	public String update() throws BusinessException{
		try {
			this.invoiceService.saveOrUpdate(this.getCurrentInvoice());
		} catch (ServiceException e) {
			if(LOGGER.isDebugEnabled()){
				LOGGER.debug(e);
			}	
		}
		return SUCCESS;
	}
	
	/**
	 * @param invoiceService the invoiceService to set
	 */
	public void setInvoiceService(InvoiceService invoiceService) {
		this.invoiceService = invoiceService;
	}
	
	/**
	 * @return the invoiceService
	 */
	public InvoiceService getInvoiceService() {
		return invoiceService;
	}

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the currentInvoice
	 */
	public InvoiceDTO getCurrentInvoice() {
		return currentInvoice;
	}

	/**
	 * @param currentInvoice the currentInvoice to set
	 */
	public void setCurrentInvoice(InvoiceDTO currentInvoice) {
		this.currentInvoice = currentInvoice;
	}

	/**
	 * @return the nextMethod
	 */
	public String getNextMethod() {
		return nextMethod;
	}

	/**
	 * @param nextMethod the nextMethod to set
	 */
	public void setNextMethod(String nextMethod) {
		this.nextMethod = nextMethod;
	}

	/**
	 * @return the result
	 */
	public ResultDTO<InvoiceDTO> getResult() {
		return result;
	}

	/**
	 * @param result the result to set
	 */
	public void setResult(ResultDTO<InvoiceDTO> result) {
		this.result = result;
	}

	/**
	 * @return the page
	 */
	public PageDTO getPage() {
		return page;
	}

	/**
	 * @param page the page to set
	 */
	public void setPage(PageDTO page) {
		this.page = page;
	}
}
