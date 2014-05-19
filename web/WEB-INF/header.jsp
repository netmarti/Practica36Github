<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 
    Document   : header
    Created on : 6-mag-2014, 13.18.37
    Author     : confalonieri
--%>


<%
    
  /* if (request.getSession().getAttribute("usuario") == null) {
       //out.println("aqui");
       response.sendRedirect("login.jsp");    
       
          
   } 
   else {
       if (! request.getSession().getAttribute("usuario").equals("admin") ) {
           response.sendRedirect("/VisualizaDatosServlet");
           
       }
   }*/
   
%>

<c:choose>
    <c:when test="${usuario == null}">
        <jsp:forward page="login.jsp"/>
    </c:when>
    <%--c:when test="${usuario != 'admin'}">
        <jsp:forward page="VisualizaDatosServlet"/>
        
    </c:when--%>
</c:choose>

<a href="logout">Logout</a>



