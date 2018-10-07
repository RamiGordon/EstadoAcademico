<%@ page import="java.util.*" %>
<%
	List apellidosBackend = new ArrayList();
	apellidosBackend.add("Bamballi");
	apellidosBackend.add("De la Vega");
	apellidosBackend.add("Iglesias");
	apellidosBackend.add("Rodriguez");

	String q = request.getParameter("q");

	//System.out.print(q + "\n");
	for (int i = 0; i < apellidosBackend.size(); i++) 
	{
		String apellido = (String) apellidosBackend.get(i);
		if (apellido.toUpperCase() .indexOf(q.toUpperCase())!= -1 ) {
			response.getWriter().write(apellido + "\n");
		}
	}
%>
