<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="#">Navbar</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse justify-content-between"
		id="navbarNavDropdown">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link"
				href="http://localhost:8080">Home <span class="sr-only">(current)</span></a>
			</li>
		
			 <c:if test = "${adminLogin}">
				<li class="nav-item"><a class="nav-link"
					href="http://localhost:8080/admin/listaClientes">clientes</a></li>
				<li class="nav-item"><a class="nav-link"
					href="http://localhost:8080/admin/listaHoteles">hoteles</a></li>
					
					
										
				
			 </c:if>
		</ul>
		<ul class="navbar-nav">
		<c:if test = "${!adminLogin}">
			<c:set var="login" value="${clienteLogin}" />
			<c:choose>
				<c:when test="${login.nombreCompleto != null}">
	
					<div class="dropdown">
					<span class="navbar-text dropdown-toggle" id="navbarDropdown"
						role="button" data-toggle="dropdown"><c:out
							value="${login.nombreCompleto}" /></span>
	
					<div class="dropdown-menu dropdown-menu-sm-right" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="http://localhost:8080/clientes/logout">Cerrar sesi�n</a>
					</div>
				</div>
	
				</c:when>
				<c:otherwise>
				
				<div class="dropdown">
						<span class="navbar-text dropdown-toggle" id="navbarDropdown"
							role="button" data-toggle="dropdown">Login/Registrar</span>
	
						<div class="dropdown-menu dropdown-menu-sm-right"
							aria-labelledby="navbarDropdown">
							<a class="dropdown-item"
								href="http://localhost:8080/login">Iniciar sesion</a> <a
								class="dropdown-item"
								href="http://localhost:8080/registrar">Registrar</a>
						</div>
					</div>
					
				</c:otherwise>
			</c:choose>
		</c:if>
		<c:if test = "${adminLogin}">
		<div class="dropdown">
					<span class="navbar-text dropdown-toggle" id="navbarDropdown"
						role="button" data-toggle="dropdown"><c:out
							value="admin" /></span>
	
					<div class="dropdown-menu dropdown-menu-sm-right" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="http://localhost:8080/clientes/logout">Cerrar sesi�n</a>
					</div>
				</div>
		</c:if>
	  </ul>	
	</div>
</nav>
