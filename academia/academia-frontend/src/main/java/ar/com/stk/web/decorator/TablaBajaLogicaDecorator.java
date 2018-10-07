package ar.com.stk.web.decorator;

import org.displaytag.decorator.CheckboxTableDecorator;

/**
 * Esta clase combina el CheckboxTableDecorator, donde para cada lista agrega un checkbox de selección,
 * además se permite enviar como parámetro el nombre de la fila a partir de la cual queremos hacer la condición de estilo, 
 * en este caso fieldNameCondition. También se puede especificar el class y la descripcion utilizada para los elementos
 * que cumplan o no la condición.
 * 
 * Este seteo se deberá realizar en la jsp de la siguiente manera: 
 * <jsp:scriptlet>
  <![CDATA[
       ar.com.stk.web.decorator.TablaBajaLogicaDecorator decorator = new ar.com.stk.web.decorator.TablaBajaLogicaDecorator();
       decorator.setId("id");
       decorator.setFieldNameCondition("otherConditionColumn");
       
   ]]>
 </jsp:scriptlet>
 *
 * 
 */
public class TablaBajaLogicaDecorator extends CheckboxTableDecorator {
	
	
	private String fieldNameCondition="baja";
	private String classFieldNameCondition="disabled";
	private String classNotFieldNameCondition="";
	private String descripFieldNameCondition="Baja";
	private String descripNotFieldNameCondition="Alta";
	
	public TablaBajaLogicaDecorator(){
		super();
		super.setId("id");
		super.setFieldName("_chk");
		
	}
	
	public String addRowClass() {
		return ((Boolean)evaluate(getFieldNameCondition())).booleanValue() ? classFieldNameCondition : classNotFieldNameCondition;
	}
	
	public String getBaja(){
		String baja="";
		Boolean bajaBoolean=(Boolean)evaluate(fieldNameCondition);
		if(bajaBoolean.booleanValue()) {
			baja=descripFieldNameCondition;
		} else { baja=descripNotFieldNameCondition;}
		return baja;
	}

	/**
	 * @return the fieldNameCondition
	 */
	public String getFieldNameCondition() {
		return fieldNameCondition;
	}

	/**
	 * @param fieldNameCondition the fieldNameCondition to set
	 */
	public void setFieldNameCondition(String fieldNameCondition) {
		this.fieldNameCondition = fieldNameCondition;
	}

	/**
	 * @return the classFieldNameCondition
	 */
	public String getClassFieldNameCondition() {
		return classFieldNameCondition;
	}

	/**
	 * @param classFieldNameCondition the classFieldNameCondition to set
	 */
	public void setClassFieldNameCondition(String classFieldNameCondition) {
		this.classFieldNameCondition = classFieldNameCondition;
	}

	/**
	 * @return the classNotFieldNameCondition
	 */
	public String getClassNotFieldNameCondition() {
		return classNotFieldNameCondition;
	}

	/**
	 * @param classNotFieldNameCondition the classNotFieldNameCondition to set
	 */
	public void setClassNotFieldNameCondition(String classNotFieldNameCondition) {
		this.classNotFieldNameCondition = classNotFieldNameCondition;
	}

	/**
	 * @return the descripFieldNameCondition
	 */
	public String getDescripFieldNameCondition() {
		return descripFieldNameCondition;
	}

	/**
	 * @param descripFieldNameCondition the descripFieldNameCondition to set
	 */
	public void setDescripFieldNameCondition(String descripFieldNameCondition) {
		this.descripFieldNameCondition = descripFieldNameCondition;
	}

	/**
	 * @return the descripNotFieldNameCondition
	 */
	public String getDescripNotFieldNameCondition() {
		return descripNotFieldNameCondition;
	}

	/**
	 * @param descripNotFieldNameCondition the descripNotFieldNameCondition to set
	 */
	public void setDescripNotFieldNameCondition(String descripNotFieldNameCondition) {
		this.descripNotFieldNameCondition = descripNotFieldNameCondition;
	}
}
