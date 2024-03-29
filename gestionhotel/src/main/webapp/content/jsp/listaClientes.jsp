<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado de clientes</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>

	<jsp:include page="nav.jsp" />

	<h1>Clientes</h1>

	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">DNI</th>
				<th scope="col">Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cliente" items="${listaClientes}">
				<tr>
					<td><c:out value="${cliente.cli_nombre}" /></td>
					<td><a class="btn btn-primary"
						href="/admin/deleteClientes/${cliente.cli_dni}" role="button">Borrar</a> <a
						class="btn btn-primary" href="/updateClientes/${cliente.cli_dni}"
						role="button">Actualizar</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<div>
		<a class="btn btn-primary" href="/addClientes"
			role="button">A�adir</a>
	</div>

</body>
</html>