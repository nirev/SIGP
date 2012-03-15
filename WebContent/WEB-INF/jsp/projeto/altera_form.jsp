<%@ include file="/header.jsp" %> 

    <div id="side-contents" class="hidden">
    </div>
    
    <div id="contents">
        <h2 class="top">${projeto.nome}: Alterar</h2>



<form method="post" action="/SIGP/projeto/altera">
	<table>
		<tr>
			<td><fmt:message key="projeto.nome" /></td>
			<td><input type="text" name="projeto.nome" value="${projeto.nome}" style="width:435px;"/></td>
		</tr>
		<tr>
			<td><fmt:message key="projeto.descricao" /></td>
			<td><textarea name="projeto.descricao" cols="60" rows="5">${projeto.descricao}</textarea></td>
		</tr>
		<tr>
			<td><fmt:message key="projeto.site" /></td>
			<td><input type="text" name="projeto.site" value="${projeto.site}" style="width:435px;"/></td>
		</tr>		
		<tr>
			<td><fmt:message key="projeto.financiamento" /></td>
			<td><input type="text" name="projeto.financiamento"  value="${projeto.financiamento}" style="width:435px;"/></td>
		</tr>
		
		<tr>
			<td colspan="2"><input type="hidden" name="projeto.idProjeto"
				value="${projeto.idProjeto}" /> <input type="submit" value="Alterar" />
			</td>
		</tr>
	</table>
</form>

<%@ include file="/errors.jsp" %> 

<p>
	<a href="/SIGP/projeto/"><fmt:message key="voltar" /></a>
</p>

        
    </div> <!-- id=contents -->




<%@ include file="/footer.jsp" %> 
