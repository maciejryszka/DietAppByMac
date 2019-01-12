<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Konwerter makroskładników</title>
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/css/bgc-font.css" />
<link type="text/css" rel="stylesheet" href="/css/module.css" />
<link type="text/css" rel="stylesheet" href="/css/food-macro.css" />
</head>
<body>
	<div class="wrap">
		<div class="desc">
			<p>Oblicz makroskładniki dla jednego z wielu produktów z bazy</p>
			<p>Najpierw podaj jego masę, następnie wybierz rodzaj z listy</p>
		</div>
		<form method="get">
			<label>Masa produktu: <input name="mass" value="0" /> gramów
			</label> <label>Rodzaj produktu: <select name="type"
				onchange="this.form.submit()">
					<option>Wybierz produkt</option>
					<c:forEach var="tempProduct" items="${products}">
						<option value="${tempProduct.getId()}">${tempProduct.getName()}</option>
					</c:forEach>
			</select></label>
		</form>
		<c:url var="result" value="/food/menu/macroConverter/result">
			<c:param name="typeOfFood" value='<%=request.getParameter("type")%>'></c:param>
			<c:param name="massOfFood" value='<%=request.getParameter("mass")%>'></c:param>
		</c:url>
		<c:url var="any" value="/food/menu/macroConverter/any"></c:url>
		<a id="res" href="${result}">Oblicz</a>
		<div class="other">
			<p>Produktu, którego szukasz nie ma w bazie? Skorzystaj z
				kalkulatora proporcji i oblicz makroskładniki dla dowolnej ilości
				innego produktu.</p>
			<a id="any" href="${any}">Kalkulator</a>
		</div>
		<c:url var="back" value="/food/menu"></c:url>
		<a class="back" href="${back}">Powrót</a>
	</div>
	<script>
		var url = new URLSearchParams(window.location.href);
		console.log(url.has("type"));
		if (url.has("type")) {
			document.querySelector("#res").style.animation = "animButton .5s linear both";
		}
	</script>
</body>
</html>