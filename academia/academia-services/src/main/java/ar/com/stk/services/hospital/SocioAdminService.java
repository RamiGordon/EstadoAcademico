package ar.com.stk.services.hospital;

import java.util.List;

import javax.jws.WebService;

import ar.com.osde.framework.services.Service;
import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.stk.dto.SocioDTO;

@WebService
public interface SocioAdminService extends Service{
	
	/**
	 * Recupera todos los Socios.
	 * @return
	 */
	List<SocioDTO> getAll();
	
	/**
	 * Recupera todos los libros.
	 * @return
	 */
	List<SocioDTO> getAllByPage(PageDTO dto);
	
	
	/**
	 * Recupera un Socio por identificador.
	 * @param id
	 * @return
	 */
	SocioDTO getById(long id);
	
	/**
	 * Crea un Socio.
	 * @param entity
	 */
	void create(SocioDTO dto);
	
	/**
	 * Actualiza un Socio.
	 * @param entity
	 */
	void update(SocioDTO dto);
	
	/**
	 * Elimina un Socio.
	 * @param entity
	 */
	void delete(SocioDTO dto);

}
