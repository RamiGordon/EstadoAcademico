package ar.com.stk.backend.bo;

import ar.com.osde.framework.business.base.BusinessObject;
import ar.com.osde.framework.business.crud.GenericCRUDBO;
import ar.com.osde.framework.business.exception.BusinessException;
import ar.com.stk.common.entities.libreria.Libro;
import ar.com.stk.dto.LibroDTO;

public interface LibroBO extends BusinessObject, GenericCRUDBO<Libro>{
	
	void save(LibroDTO dto) throws BusinessException;
	
	void update(LibroDTO dto)  throws BusinessException;

}
