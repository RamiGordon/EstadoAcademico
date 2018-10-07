package ar.com.stk.backend.bo;

import ar.com.osde.framework.business.base.BusinessObject;
import ar.com.osde.framework.business.crud.GenericCRUDBO;
import ar.com.osde.framework.business.exception.BusinessException;

import ar.com.stk.common.hospital.Socio;

import ar.com.stk.dto.SocioDTO;

public interface SocioBO  extends BusinessObject, GenericCRUDBO<Socio> {
	
void save(SocioDTO dto) throws BusinessException;
	
	void update(SocioDTO dto)  throws BusinessException;

}
