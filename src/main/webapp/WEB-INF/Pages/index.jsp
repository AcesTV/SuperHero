<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<html>
    <head>
    <%--    <%@ include file="Composants/headCommun.jsp" %>--%>
        <%@ include file="Composants/headCommun.jsp" %>
    </head>
    <body>
        <%@ include file="Composants/menu.jsp" %>

        <c:if test="${ !empty erreur }"><p style="color:red;" class="CenterText"><c:out value="${ erreur }" /></p></c:if>

        <div class="ImgHome">
            <img src="${pageContext.request.contextPath}/IMG/SuperHero1.jpg">
        </div>


        <h3 class="CenterText">Vous avez besoin de l'assistance d'un Super Héro ? <a href="${pageContext.request.contextPath}/CreateIncident">Cliquez Ici</a></h3>

        <h3 class="CenterText">Vous souhaitez proposer vos services en tant que Super Héro ? <a href="${pageContext.request.contextPath}/Register">Cliquez Ici</a></h3>


    </body>
</html>
