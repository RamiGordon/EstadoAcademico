package ar.com.stk.backend.assembler;

import java.util.ArrayList;
import java.util.List;

import org.dozer.Mapper;

import ar.com.osde.framework.persistence.dao.filter.Result;
import ar.com.osde.framework.business.crud.service.impl.Assembler;
import ar.com.osde.framework.services.crud.PageDTO;
import ar.com.osde.framework.services.crud.ResultDTO;

/**
 * Implementa {@link Assembler} utlizando la libreria <a
 * href="http://dozer.sourceforge.net/">Dozer</a>
 * 
 * 
 */
public class DozerAssembler implements Assembler {
	private Mapper mapper;

	/**
	 * @inheritDoc
	 */
	public void setMapper(Mapper mapper) {
		this.mapper = mapper;
	}

	public Mapper getMapper() {
		return mapper;
	}

	/**
	 * Realiza el mapeo de una entidad persistente a un DTO.
	 */
	public <C, D> D getDTO(C clazz, Class<D> dto) {
		return this.getMapper().map(clazz, dto);
	}
	
	/**
	 * Realiza el mapeo de un DTO a una entidad persistente.
	 */
	public <D, C> C fromDTO(D dto, Class<C> clazz) {
		return this.getMapper().map(dto, clazz);
	}
	
	/**
	 * Realiza el mapeo de Result a ResultDTO.
	 */
	public <E, T> ResultDTO<T> getDTO(Result<E> result, Class<T> clazz) {
		ResultDTO<T> dto = new ResultDTO<T>();
		PageDTO pageDTO = this.getMapper().map(result.getPage(), PageDTO.class);
		dto.setPage(pageDTO);
		List<T> list = mapList(result.getResult(), clazz);
		dto.setResult(list);
		dto.setTotalResults(result.getTotalResults());
		return dto;
	}

	/**
	 * el metodo retorna una lista de T clazz obtenida de una lista de E
	 * 
	 * @param <T>
	 * @param <E>
	 * @param listSource
	 * @param clazz
	 * @return
	 */
	private <T, E> List<T> mapList(List<E> listSource, Class<T> clazz) {
		List<T> list = new ArrayList<T>();
		for (E element : listSource) {
			list.add((T) this.getMapper().map(element, clazz));
		}
		return list;
	}
}
