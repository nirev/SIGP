<%@ include file="/header.jsp" %> 

    <div id="side-contents" class="hidden">
    </div>
    
    <div id="contents">
        <h2 class="top"><fmt:message key="header.publicacoes" /></h2>

<ul>
	<c:forEach items="${publicacoes}" var="publicacao">
		<li>
		    <strong>"<a href="/SIGP/publicacao/ver/${publicacao.idPublicacao}">${publicacao.titulo}</a>"</strong>
	    </li>
<%-- 			<td>${publicacao.data}</td> --%>
<%-- 			<td>${publicacao.veiculo}</td> --%>
	</c:forEach>
</ul>


<p>
	<a href="novo"><fmt:message key="novo" /></a>
</p>

<hr />
<p><a href="/SIGP/"><fmt:message key="voltar_a_home" /></a></p>
        
    </div> <!-- id=contents -->




<%@ include file="/footer.jsp" %> 
