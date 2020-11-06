<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<html>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<body>
		
		<a href="novaTarefa"/>
		
		<br/><br/>
		
		<table>
			<tr>
				<th>Id</th>
				<th>Descrição</th>
				<th>Finalizado?</th>
				<th>Data de Finalização</th>
			</tr>
			<c:forEach items="${tarefas}" var="tarefa">
				<tr>
					<td>${tarefa.id}</td>
					<td>${tarefa.descricao}</td>
					<c:if test="${tarefa.finalizado eq false}">
						<td>Não finalizado</td>
					</c:if>
					<c:if test="${tarefa.finalizado eq true}">
						<td>Finalizado</td>
					</c:if>
					<td>
						<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>
					</td>
					<td><a href="removeTarefa?id=${tarefa.id}"/>Remover</td>
					<td><a href="mostraTarefa?id=${tarefa.id}"/>Alterar</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>