<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/hello-world-spring.css" var="helloCss" />
<spring:url value="/resources/css/font-awesome.css" var="fontAwesome" />
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />

<link href="${helloCss}" rel="stylesheet" />
<link href="${fontAwesome}" rel="stylesheet" />
<link href="${bootstrapCSS}" rel="stylesheet" />

<title>Lista de coches</title>
</head>
<body>
	<div class="container-fluid">
		<div class="page-header">
			<h2>Coches</h2>
		</div>
		<div class="row">
			<div class="col-md-9">
				<table class="table table-striped table-hover table-bordered">
					<tr>
						<th>MATRÍCULA</th>
						<th>MODELO</th>
						<th>FECHA DE MATRICULACIÓN</th>
						<th>KM</th>
						<th>PRECIO</th>
						<th>EDITAR</th>
					</tr>
					<c:forEach items="${cocheList}" var="coche">
					<spring:url value="/editar/${coche.matricula}" var="cocheURL" />
						<tr>
							<td><c:out value="${coche.matricula}"></c:out>
							<td><c:out value="${coche.modelo}"></c:out>
							<td><c:out value="${coche.fechaMatriculacion}"></c:out>
							<td><c:out value="${coche.km}"></c:out>
							<td><c:out value="${coche.precio}"></c:out>
							<td><a href="${cocheURL}">EDITAR</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
<spring:url value="/resources/js/hello-world-spring.js" var="helloJS" />
<spring:url value="/resources/js/jquery.min.js" var="helloJQuery" />
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
<script src="${helloJQuery}"></script>
<script src="${bootstrapJS}"></script>
<script src="${helloJS}"></script>
</html>