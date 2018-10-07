package ar.com.stk.services.libreria;

import java.util.List;

import javax.jws.WebService;

import ar.com.osde.framework.services.Service;
import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.stk.dto.LibroDTO;

/**
 * Servicio utilizado para Libro.
 *
 */
@WebService
public interface LibroAdminService extends Service {
	
	/**
	 * Recupera todos los libros.
	 * @return
	 */
	List<LibroDTO> getAll();
	
	/**
	 * Recupera todos los libros.
	 * @return
	 */
	List<LibroDTO> getAllByPage(PageDTO dto);
	
	
	/**
	 * Recupera un Libro por identificador.
	 * @param id
	 * @return
	 */
	LibroDTO getById(long id);
	
	/**
	 * Crea un Libro.
	 * @param entity
	 */
	void create(LibroDTO dto);
	
	/**
	 * Actualiza un Libro.
	 * @param entity
	 */
	void update(LibroDTO dto);
	
	/**
	 * Elimina un Libro.
	 * @param entity
	 */
	void delete(LibroDTO dto);
}