package ar.com.stk.backend.bo.impl;

import java.util.List;

import org.apache.log4j.Logger;

import ar.com.osde.framework.business.crud.GenericCRUDBO;
import ar.com.osde.framework.business.exception.BusinessException;
import ar.com.osde.framework.spring.boot.BootException;
import ar.com.osde.framework.spring.boot.Bootable;
import ar.com.osde.framework.spring.cache.Cache;
import ar.com.stk.backend.bo.DemoCacheBO;
import ar.com.stk.common.entities.Invoice;

/**
 * Implementacion del BO de ejemplo para manejo de caches
 * 
 * 
 */
public class DemoCacheBOImpl implements DemoCacheBO, Bootable {

	/**
	 * Cache para guardar los invoices de ejemplo
	 */
	private static final Logger LOGGER = Logger.getLogger(DemoCacheBOImpl.class);
	private Cache cache;
	private GenericCRUDBO<Invoice> exampleBO;

	/*
	 * (non-Javadoc)
	 * 
	 * @see DemoCacheBO#get(java.lang.Long)
	 */
	public Invoice get(Long id) {

		return (Invoice) this.getCache().get(id);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * DemoCacheBO#put(ar.com.stk
	 * .common.model.Invoice)
	 */
	public void put(Invoice invoice) {
		this.getCache().put(invoice.getId(), invoice);

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see DemoCacheBO#remove(java.lang.Long)
	 */
	public void remove(Long id) {
		this.getCache().remove(id);

	}

	/**
	 * @return the cache
	 */
	public Cache getCache() {
		return cache;
	}

	/**
	 * @param cache
	 *            the cache to set
	 */
	public void setCache(Cache cache) {
		this.cache = cache;
	}

	/**
	 * @return the exampleBO
	 */
	public GenericCRUDBO<Invoice> getExampleBO() {
		return exampleBO;
	}

	/**
	 * @param exampleBO
	 *            the exampleBO to set
	 */
	public void setExampleBO(GenericCRUDBO<Invoice> exampleBO) {
		this.exampleBO = exampleBO;
	}

	public void boot() throws BootException {
		List<Invoice> invoices;
		try {
			LOGGER.info("Iniciando proceso de boot");
			invoices = this.getExampleBO().getAll();
			for (Invoice invoice : invoices)
				this.getCache().put(invoice.getId(), invoice);

		} catch (BusinessException e) {
			LOGGER.error("error en el proceso de boot ", e);
			throw new BootException("error en el proceso de boot ", e);
		}

	}

}
