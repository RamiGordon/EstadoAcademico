<%--
- Autor(es)        : cristian.rodriguez
- Fecha de creacion: 24/09/2009 - 15:59:32
- Descripcion      : Redirección a detalle de errores HTTP
--%>
<%@ page	import="org.apache.commons.logging.LogFactory"%>
<%@ page	import="org.apache.commons.logging.Log"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Throwable t = (Throwable)request.getAttribute("javax.servlet.error.exception");

Log logger = LogFactory.getLog("RedirectErrorPage");
if (t != null) {
	logger.error("Error En el Servidor:", t);
} else {
	String error = "Error al ejecutar " + request.getAttribute("javax.servlet.error.request_uri").toString()
	+ " Codigo: " + request.getAttribute("javax.servlet.error.status_code").toString()
	+ " Mensaje: " + request.getAttribute("javax.servlet.error.message").toString();

	logger.error(error);
}
String ctx = request.getContextPath();
String errCode = request.getParameter("code");
response.sendRedirect(ctx + "/pages/template/includes/mensajes/error.jsp?decorator=error&code=" + errCode);
%>