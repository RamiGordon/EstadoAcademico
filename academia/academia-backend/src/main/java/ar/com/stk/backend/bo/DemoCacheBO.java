package ar.com.stk.backend.bo;

import ar.com.osde.framework.business.base.BusinessObject;
import ar.com.stk.common.entities.Invoice;

/**
 * Interface de un BO de ejemplo que maneja un cache de Invoice, tiene
 * operaciones basicas, solo para demostrar como se usan el cache de spring.
 * 
 */
public interface DemoCacheBO extends BusinessObject{

	/**
	 * Agrega a la cache a invoice
	 * @param invoice
	 */
	public void put(Invoice invoice);
	
	/**
	 * Recupera de la cache el elemento con el identificador id
	 * @param id
	 * @return Invoice
	 */
	public Invoice get(Long id);
	
	/**
	 * Elimina de la cache el elemento con identificador id.
	 * @param id
	 */
	public void remove(Long id);
	
}