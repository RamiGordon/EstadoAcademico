package ar.com.stk.backend.filter;

import org.hibernate.Criteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import ar.com.osde.framework.persistence.dao.filter.Filter;

/**
 * Objeto utilizado para filtrar Invoices por sus distintos campos, puede
 * filtrar por montos mayores y menores, etc
 * 
 * 
 */
public class InvoiceFilter implements Filter {

	
	private String name;
	public InvoiceFilter() {
		super();
	
	}

	public InvoiceFilter(String name) {
		super();
		this.name = name;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * ar.com.osde.framework.persistence.dao.filter.Filter#fillCriteria(org.
	 * hibernate.Criteria)
	 */
	public void fillCriteria(Criteria criteria) {
		if (this.getName() != null && !"".equals(this.getName())) {
			criteria.add(Restrictions.ilike("name", this.getName(), MatchMode.ANYWHERE));
		}
	}
	
	/*
	 * (non-Javadoc)
	 * 
	 * @see 
	 * ar.com.osde.framework.persistence.dao.filter.Filter#fillCriteriaNotPagination(
	 * org.hibernate.Criteria)
	 */
	public void fillCriteriaNotPagination(Criteria criteria) {
		// TODO Auto-generated method stub
		
	}	

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

}
