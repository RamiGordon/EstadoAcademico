package ar.com.stk.web.action.demo;

import ar.com.stk.services.DemoCacheService;
import ar.com.stk.dto.InvoiceDTO;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Action de ejemplo que utiliza un BO que tiene configurado un cache interno
 *
 */
public class CacheAction extends ActionSupport {

	
	/**
	 * 
	 */ 
	private static final long serialVersionUID = 1L;

	private DemoCacheService demoCacheservice;
	private Long id;
	private InvoiceDTO invoice;
	
	/**
	 * Recupera un elemento de la cache
	 * @return SUCCESS
	 */
	public String get(){
		this.setInvoice(this.demoCacheservice.get(id));
		return SUCCESS;
	}

	/**
	 * Elimina una ocurrencia de la cache.
	 * @return SUCCESS
	 */
	public String remove(){
		this.demoCacheservice.remove(this.getId());
		this.setId(null);
		return SUCCESS;
	}	
	
	/**
	 * Agrega un elemento a la cache.
	 * @return SUCCESS.
	 */
	public String put(){
		this.getInvoice().setDescription("Generada autoamticamente "+this.getInvoice().getId());
		this.getInvoice().setName("Automatic "+this.getInvoice().getId());
		this.demoCacheservice.put(this.getInvoice());
		this.setInvoice(null);
		return SUCCESS;
	}
	
	/**
	 * @return the invoice
	 */
	public InvoiceDTO getInvoice() {
		return invoice;
	}

	/**
	 * @param invoice the invoice to set
	 */
	public void setInvoice(InvoiceDTO invoice) {
		this.invoice = invoice;
	}

	/**
	 * @param demoCacheservice the demoCacheservice to set
	 */
	public void setDemoCacheservice(DemoCacheService demoCacheservice) {
		this.demoCacheservice = demoCacheservice;
	}

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}
}