package ar.com.stk.services.libreria;

import java.util.List;

import javax.jws.WebService;

import ar.com.osde.framework.services.Service;
import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.stk.dto.CategoriaDTO;

/**
 * Servicio utilizado para Categoria.
 *
 */
@WebService
public interface CategoriaAdminService extends Service {

	/**
	 * Recupera todas las categorias de acuerdo al paginado.
	 * @return
	 */
	List<CategoriaDTO> getAllByPage(PageDTO dto);
	
	/**
	 * Recupera todas las categorias.
	 * @return
	 */
	List<CategoriaDTO> getAll();
	
	/**
	 * Recupera una categoria por identificador.
	 * @param id identificador de la categoria.
	 * @return una Categoria.
	 */
	CategoriaDTO getById(long id);
	
	/**
	 * Crea una Categoria.
	 * @param entity
	 */
	void create(CategoriaDTO dto);
	
	/**
	 * Actualiza una categoria.
	 * @param entity
	 */	
	void update(CategoriaDTO dto);
	
	/**
	 * Elimina una Categoria.
	 * @param entity
	 */
	void delete(CategoriaDTO dto);
}