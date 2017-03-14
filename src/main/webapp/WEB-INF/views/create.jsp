<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<spring:url value="/people" var="back" />

<spring:url value="/resources/css/hello-world-spring.css" var="helloCss" />
<spring:url value="/resources/css/font-awesome.css" var="fontAwesome" />
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />

<link href="${helloCss}" rel="stylesheet" />
<link href="${fontAwesome}" rel="stylesheet" />
<link href="${bootstrapCSS}" rel="stylesheet" />

<title>Añadir coche</title>
</head>
<body>
	<div class="container">
		<div class="page-header">
			<h2>Nuevo coche</h2>
		</div>
		<div class="row">
			<form:form modelAttribute="coche" cssClass="form-horizontal">
				<div class="form-group">
					<form:label cssClass="col-sm-3 control-label" path="matricula">
							Matricula
						 <abbr class="required" title="required"> * </abbr>
					</form:label>
					<div class="col-sm-4">
						<form:input cssClass="form-control" path="matricula" />
					</div>
					
					<div class="form-group">
					<form:label cssClass="col-sm-3 control-label" path="modelo">
							Modelo
						 <abbr class="required" title="required"> * </abbr>
					</form:label>
					<div class="col-sm-4">
						<form:input cssClass="form-control" path="modelo" />
					</div>
					
					<div class="form-group">
					<form:label cssClass="col-sm-3 control-label" path="fechaMatriculacion">
							Fecha de matriculación
						 <abbr class="required" title="required"> * </abbr>
					</form:label>
					<div class="col-sm-4">
						<form:input cssClass="form-control" path="fechaMatriculacion" />
					</div>
					
					<div class="form-group">
					<form:label cssClass="col-sm-3 control-label" path="km">
							KM
						 <abbr class="required" title="required"> * </abbr>
					</form:label>
					<div class="col-sm-4">
						<form:input cssClass="form-control" path="km" />
					</div>
					
					<div class="form-group">
					<form:label cssClass="col-sm-3 control-label" path="precio">
							Precio
						 <abbr class="required" title="required"> * </abbr>
					</form:label>
					<div class="col-sm-4">
						<form:input cssClass="form-control" path="precio" />
					</div>
				
					<button type="submit">
						Añadir
					</button>
				</div>
			</form:form>
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