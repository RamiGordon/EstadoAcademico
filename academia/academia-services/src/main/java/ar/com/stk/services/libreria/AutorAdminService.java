package ar.com.stk.services.libreria;

import java.util.List;

import javax.jws.WebService;

import ar.com.osde.framework.services.Service;
import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.stk.dto.AutorDTO;

/**
 * Servicio utilizado para Autor.
 * 
 */
@WebService
public interface AutorAdminService extends Service {

	/**
	 * Recupera todos los autores de acuerdo al paginado.
	 * @return
	 */
	List<AutorDTO> getAllByPage(PageDTO dto);
	
	/**
	 * Recupera todos los autores.
	 * @return
	 */
	List<AutorDTO> getAll();

	/**
	 * Recupera un Autor
	 * @param id identificador del Autor a recuperar.
	 * @return
	 */
	AutorDTO getById(long id);

	/**
	 * Crea un nuevo Autor.
	 * @param entity
	 */
	void create(AutorDTO dto);
	
	/**
	 * Actualiza un Autor.	
	 * @param entity Autor a actualizar.
	 */
	void update(AutorDTO dto);

	/**
	 * Elimina un Autor.
	 * @param entity Autor a eliminar.
	 */
	void delete(AutorDTO dto);
	
}