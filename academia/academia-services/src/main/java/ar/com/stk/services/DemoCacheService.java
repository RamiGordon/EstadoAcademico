package ar.com.stk.services;

import ar.com.stk.dto.InvoiceDTO;

import ar.com.osde.framework.services.Service;

/**
 * Servicio para separar el frontend del backend
 * 
 */
public interface DemoCacheService extends Service{

	/**
	 * Realiza un put en la cache.
	 * @param invoice
	 */
	void put(InvoiceDTO invoice);
	
	/**
	 * Recupera un elemento de la cache.
	 * @param id
	 * @return
	 */
	InvoiceDTO get(Long id);
	
	/**
	 * Elimina un elemento de la cache.
	 * @param id
	 */
	void remove(Long id);
}
