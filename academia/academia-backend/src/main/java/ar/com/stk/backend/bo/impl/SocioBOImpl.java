package ar.com.stk.backend.bo.impl;

import ar.com.osde.framework.business.crud.GenericCRUDBO;
import ar.com.osde.framework.business.crud.GenericCRUDBOImpl;
import ar.com.osde.framework.business.crud.service.impl.Assembler;
import ar.com.osde.framework.business.exception.BusinessException;

import ar.com.stk.backend.bo.SocioBO;
import ar.com.stk.common.hospital.Socio;

import ar.com.stk.dto.SocioDTO;


public class SocioBOImpl extends GenericCRUDBOImpl<Socio> implements SocioBO{
	private Assembler assembler;

	public void save(SocioDTO dto) throws BusinessException {
		Socio entity = this.getAssembler().fromDTO(dto, Socio.class);
		super.saveNew(entity);
	}

	private Assembler getAssembler() {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(SocioDTO dto) throws BusinessException {
		Socio entity = this.getAssembler().fromDTO(dto, Socio.class);	
		super.saveOrUpdate(entity);
		
	}

	public Assembler getAssembler1() {
		return assembler;
	}

	/**
	 * @param assembler the assembler to set
	 */
	public void setAssembler(Assembler assembler) {
		this.assembler = assembler;
	}
	

}
