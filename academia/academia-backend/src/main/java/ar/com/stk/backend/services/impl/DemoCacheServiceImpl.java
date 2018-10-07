package ar.com.stk.backend.services.impl;


import ar.com.osde.framework.business.crud.service.impl.Assembler;
import ar.com.stk.common.entities.Invoice;
import ar.com.stk.dto.InvoiceDTO;
import ar.com.stk.backend.bo.DemoCacheBO;
import ar.com.stk.services.DemoCacheService;

/**
 * Implementacion del service
 * 
 */
public class DemoCacheServiceImpl implements DemoCacheService {

	private DemoCacheBO demoCache;
	private Assembler assembler;
	
	/**
	 * @param demoCache the demoCache to set
	 */
	public void setDemoCache(DemoCacheBO demoCache) {
		this.demoCache = demoCache;
	}
	
	/**
	 * @return the demoCache
	 */
	public DemoCacheBO getDemoCache() {
		return demoCache;
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
	 * @see DemoCacheService#get(java.lang.Long)
	 */
	public InvoiceDTO get(Long id) {
		Invoice invoice = this.demoCache.get(id);
		return this.getAssembler().getDTO(invoice, InvoiceDTO.class);
	}

	/**
	 * @see DemoCacheService#put(ar.com.stk.services.InvoiceDTO)
	 */
	public void put(InvoiceDTO invoice) {
		Invoice obj = this.getAssembler().fromDTO(invoice, Invoice.class);
		this.demoCache.put(obj);
	}

	/**
	 * @see DemoCacheService#remove(java.lang.Long)
	 */
	public void remove(Long id) {
		this.demoCache.remove(id);
	}

}
