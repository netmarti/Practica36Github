


<%@page errorPage="error.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pàgina de resultados</title>
    </head>
    <body>
        <h1>Lista de Categoria y sus vehiculos</h1>
        <!-- vamos a usar algunas funcionalidades de la libreria JSTL -->

        <!-- 1. controlamos que la categoriaList no es ni null ni == a 0-->
        <c:choose>

            <%-- //codigo Java
               /*ArrayList<Categoria> categoriaList = 
              (ArrayList<Categoria>)request.getSession().getAttribute("categoriaList"); %-->
            <%-- controlamos si la lista es null -->
            
            <%-- //codigo Java
               if (categoriaList==null) { --%>
            <%--p>FATAL ERROR </p--%>
            <%-- } --%>

            <c:when test="${categoriaList == null}">
                <p>FATAL error</p>
            </c:when>

            <%-- controlamos si el numero de elementos de la lista es 0 --%>

            <%-- //codigo Java
               else if (categoriaList.size()==0) { --%>
            <%--p>El database no tiene ninguna categoria</p--%>
            <%-- } --%>



            <%-- 2. acceder a la lista de categorias, categoriaList --%>
            <c:otherwise>

                <c:forEach var="categoria" items="${categoriaList}">

                    <%-- imprimo el tipo de categoria --%>
                    <h2>${categoria.tipo}</h2>
                    <%-- imprimo la descripcion --%>
                    <p>${categoria.descripcion}</p>

                    <%-- 3. acceder a la lista de vehiculos, asociados a una categoria --%>
                    <c:forEach var="vehiculo" items="${categoria.listaVehiculos}"> 
                        
                        <c:if test="${vehiculo.nrDeRuedas==2}">
                             <p>Vehiculo: Moto</p>
                        </c:if>
                        <c:if test="${vehiculo.nrDeRuedas==4}">
                             <p>Vehiculo: Coche </p>
                        </c:if>
                        <p>Matricula: ${vehiculo.matricula} </p>
                        <p>Fabricante: ${vehiculo.fabricante} </p>
                        <p>Color: ${vehiculo.color} </p>
                        <p>VelocidadMax: ${vehiculo.velocidadMax} </p>
                       
                        <p>Motor Potencia: ${vehiculo.motor.potencia} </p>
                        <p>Motor Cilindros: ${vehiculo.motor.cilindros} </p>
                    </c:forEach>

                </c:forEach>

            </c:otherwise>
        </c:choose>




    </body>
</html>
