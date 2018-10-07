/*
 * Flux IT Argentina
 * La Plata - Buenos Aires - Argentina
 * http://www.fluxit.com.ar
 * Author: Francisco Andrade
 * Date:  12/07/2012 - 10:09:40
 */
package ar.com.stk.test.bo;

import static junit.framework.Assert.assertNotNull;
import static junit.framework.Assert.assertTrue;
import static org.junit.Assert.assertFalse;

import java.util.List;

import org.junit.Test;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import ar.com.osde.framework.business.intranet.IntranetOrganizationBO;
import ar.com.osde.framework.entities.organization.Empresa;

/**
 * 
 * @author Francisco Andrade
 *
 */
@ContextConfiguration(locations = "classpath:spring/test/application-root-spring.xml")
@ActiveProfiles(profiles = "intra")
public class TestPrototypeIntranetOrganizationBO extends AbstractJUnit4SpringContextTests {

	@Test
	public void testObtenerEmpresas() {
		try {
			IntranetOrganizationBO business = (IntranetOrganizationBO) this.applicationContext.getBean("intranet.organization.bo");
			List<Empresa> empresas = business.getEmpresas();
			assertNotNull("empresas recuperadas null", empresas);
			assertFalse("lista de emrpesas vacia", empresas.isEmpty());
			empresas = business.getEmpresas();
			assertNotNull("empresas recuperadas null", empresas);
		} catch (Exception e) {
			assertTrue("error en la creacion del bo", false);
		}
	}
	
	@Test
	public void testObtenerEmpresaByCode() {
		try {
			IntranetOrganizationBO business = (IntranetOrganizationBO) this.applicationContext.getBean("intranet.organization.bo");
			Empresa empresa = business.getEmpresa("1");
			assertNotNull("Empresa no recuperada", empresa);
			empresa = business.getEmpresa("1");
			assertNotNull("Empresa no recuperada", empresa);
		} catch (Exception e) {
			assertTrue("error en la creacion del bo", false);
		}
	}	
}
