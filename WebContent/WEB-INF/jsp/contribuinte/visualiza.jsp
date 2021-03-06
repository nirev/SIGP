<%@ include file="/header.jsp" %> 

	<c:choose>
		<c:when test="${userIsLogged}">
    		<div id="side-contents">
    			<fmt:message key="misc.acoes"></fmt:message>
    			<hr />
				<a href="/SIGP/contribuinte/alterar/${contribuinte.idContribuinte}"><fmt:message key="alterar" /></a><br />
				<a href="/SIGP/contribuinte/apagar/${contribuinte.idContribuinte}"><fmt:message key="apagar" /></a>
    		</div>
   		</c:when>
   		<c:otherwise>
   			<div id="side-contents" class="hidden"></div>
   		</c:otherwise>
	</c:choose>
    
    <div id="contents">
        <h2 class="top">${contribuinte.nome}</h2>

	<img class="membro" src="<c:url value="/contribuinte/foto/${contribuinte.idContribuinte}"></c:url>" />
	<br />
	<br />

	<!-- Projetos -->
	<div>
		<b><fmt:message key="contribuinte.projetoscoordenador" /></b><br />
		<ul>
		<c:forEach items="${contribuinte.projetosCoordenador}" var="p">
			<li><a href="/SIGP/projeto/ver/${p.idProjeto}">${p.nome}</a></li>
		</c:forEach>
		</ul>
		<br />
	</div>
	<div>
        <b><fmt:message key="contribuinte.projetosmembro" /></b><br />
        <ul>
        <c:forEach items="${contribuinte.projetosMembro}" var="p">
            <li><a href="/SIGP/projeto/ver/${p.idProjeto}">${p.nome}</a></li>
        </c:forEach>
        </ul>
        <br />
    </div>
	
	<!-- Publicacao -->
	<div>
		<b><fmt:message key="contribuinte.publicacoesfeitas" /></b><br /><br />
		<ul>
		<c:forEach items="${contribuinte.publicacoes}" var="publicacao">
			<li><a href="/SIGP/publicacoes/ver/${publicacao.idPublicacao}">${publicacao.titulo}</a></li>
		</c:forEach>
		</ul>
	</div>
	
	<%-- Filiacoes --%>
	<%-- 
	<div>
		<b><fmt:message key="contribuinte.gruposfiliado" /></b><br /><br />
		<ul>
		<c:forEach items="${contribuinte.filiacoes}" var="filiacao">
			<li><a href="/SIGP/grupo/ver/${filiacao.grupo.idGrupo}">${filiacao.grupo.nome}</a></li>
		</c:forEach>
		</ul>
	</div>
	--%>
	
	<!-- LinhaPesquisa -->
	<div>
		<b><fmt:message key="contribuinte.linhaspesquisou" /></b><br /><br />
		<ul>
		<c:forEach items="${contribuinte.relacoes}" var="relacao">
			<li><a href="/SIGP/linhadepesquisa/ver/${relacao.linha.idPesquisa}">${relacao.linha.nome}</a></li>
		</c:forEach>
		</ul>
	</div>
	
    </div> <!-- id=contents -->

<%@ include file="/footer.jsp" %> 
