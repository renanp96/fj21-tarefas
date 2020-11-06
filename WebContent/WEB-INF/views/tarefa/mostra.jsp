<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<body>
		<h3>Altera Tarefa - ${tarefa.id}</h3>
		<form action="alteraTarefa" method="post">
			
			<input type="hidden" name="id" value="${tarefa.id}"/>
			
			Descrição:<br />
			<textarea name="descricao" rows="5" cols="100">
			</textarea>
			<br />
			
			Finalizado? <input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked' : ''}/><br/>
			
			Data de Finalização: <br/>
			<input type="text" name="dataFinalizacao" value="<fmt:formatDate 
								value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>"/>
			<br/>
			
			<input type="submit" value="Alterar"/>
		</form>	
	</body>
</html>