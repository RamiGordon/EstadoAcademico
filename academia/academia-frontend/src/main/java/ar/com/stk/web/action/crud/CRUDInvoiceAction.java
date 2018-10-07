package ar.com.stk.web.action.crud;

import org.apache.log4j.Logger;
import ar.com.stk.dto.InvoiceFilterDTO;
import ar.com.stk.services.InvoiceCRUDService;
import ar.com.stk.dto.InvoiceDTO;
import ar.com.osde.framework.services.crud.ResultDTO;
import ar.com.osde.framework.web.common.action.CRUDServiceAction;

/**
 * CRUD Invoice action.
 *
 */
public class CRUDInvoiceAction extends CRUDServiceAction<InvoiceDTO>{
	
	private static final long serialVersionUID = -2562411257298661236L;
	private static final Logger LOG = Logger.getLogger(CRUDInvoiceAction.class);
	private InvoiceFilterDTO filter;
	private String operation;
	
	
	/**
	 * @return the filter
	 */
	public InvoiceFilterDTO getFilter() {
		return filter;
	}

	/**
	 * @param filter the filter to set
	 */
	public void setFilter(InvoiceFilterDTO filter) {
		this.filter = filter;
	}
	
	/**
	 * @return the operation
	 */
	public String getOperation() {
		return operation;
	}

	/**
	 * @param operation the operation to set
	 */
	public void setOperation(String operation) {
		this.operation = operation;
	}

	@Override
	public InvoiceDTO createEmptyModel() {
		this.setOperation("Crear Invoice");
		LOG.info("Crea un Invoice");
		return new InvoiceDTO();
	}
	
	/**
	 * Listar los Invoice por medio de filtros.
	 * @return
	 */
	public String listFilter(){
		try {
			this.setOperation("Listar");
			InvoiceCRUDService invoiceService = (InvoiceCRUDService)this.getCrudService();
			ResultDTO<InvoiceDTO> result = invoiceService.getAllFilter(this.getFilter());
			this.setPaginatedModelList(this.createPaginatedModelListDTO(result));
			LOG.info("Lista los Invoices");
		} catch (Exception e) {
			this.manageException(e);
		}
		return LIST;
	}
}