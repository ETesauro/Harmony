<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
	
<jsp:include page="../components/header.jsp" />
	
<div class="container-fluid">
		<div class=" text-center my-2">
	        <h1>Welcome in <a href="." style="text-decoration: none; color: #eda15e;"><em>Harmony!</em></a></h1>
	        <p>The biggest e-commerce site for <i class="fas fa-music"></i> music <i class="fas fa-music"></i></p>
	        <hr>		
		</div>
        
         <jsp:include page="../components/carousel.jsp"/>
         
        <h2 class="text-center py-3">Prodotti in evidenza:</h2>
        
        <div class="row">
        	<c:forEach items="${prodotti}" var="prodotto">
				<div class="col">
					<div class="card mb-5 bg-white rounded" style="width: 18rem; margin: 0 auto; float: none; margin-bottom: 10px; height: 700px;">
						<div class="card-header text-center">
							<h5><a href="Prodotto?id=<c:out value="${prodotto.ID}"/>"><c:out value="${prodotto.nome}" /></a></h5>						
						</div>
						<div class="card-body p-3">
							<a href="Prodotto?id=<c:out value="${prodotto.ID}"/>"><img class="img-fluid" style="max-height: 550px" src="assets/img/prodotti/<c:out value="${prodotto.ID}"/>.jpg"></a>
						</div>
						<div class="card-footer text-center">
							<h6>Prezzo: <c:out value="${prodotto.prezzo}" /> &euro; </h6>
						</div>
					</div>
				</div>        	
        	</c:forEach>
        </div>
       	<br>
       	
       	<div class="map-responsive text-center">
       		<h4>Vieni a trovarci in negozio!</h4>
       		<h6>Ci trovi proprio qui.</h6>	
			<iframe width="90%" height="250px" src="https://maps.google.com/maps?width=700&amp;height=440&amp;hl=en&amp;q=AGROPOLI+(Titolo)&amp;ie=UTF8&amp;t=&amp;z=16&amp;iwloc=B&amp;output=embed" style="border:0;" ></iframe></div>
		</div>
		<br>
		
		<div class="container">
			<hr>
		</div>
       	
       	<div class="text-center pb-4">
       		<h5><em>Senza musica la vita sarebbe un errore.</em> <br> <small class="text-muted">(Friedrich Nietzsche)</small></h5>
       	</div>

<%@include file="../components/footer.html" %>       	