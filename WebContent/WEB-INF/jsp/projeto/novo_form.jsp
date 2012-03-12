<%@ include file="/header.jsp" %> 

    <div id="side-contents" class="hidden">
    </div>
    
    <div id="contents">
        <h2 class="top">Projetos: Inserir novo</h2>



<form method="post" action="/SIGP/projeto/cria">
	<table>
		<tr>
			<td><fmt:message key="projeto.nome" /></td>
			<td><input type="text" name="projeto.nome" /></td>
		</tr>
		<tr>
			<td><fmt:message key="projeto.financiamento" /></td>
			<td><input type="text" name="projeto.financiamento" /></td>
		</tr>
		<tr>
			<td><fmt:message key="projeto.descricao" /></td>
			<td><textarea name="projeto.descricao"></textarea></td>
		</tr>
			
		<tr>
			<td colspan="2"><input type="submit" value="Criar" /></td>
		</tr>
	</table>
</form>

<%@ include file="/errors.jsp" %> 

<p>
	<a href="/SIGP/projeto/"><fmt:message key="voltar" /></a>
</p>

        
    </div> <!-- id=contents -->




<%@ include file="/footer.jsp" %> 
