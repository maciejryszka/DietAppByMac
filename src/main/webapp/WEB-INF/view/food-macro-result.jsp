<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Makroskładniki produktu</title>
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/css/bgc-font.css" />
<link type="text/css" rel="stylesheet" href="/css/fm-any-result.css" />
<link type="text/css" rel="stylesheet" href="/css/food-macro-result.css" />
</head>
<body>
	<div class="wrap">
		<p>Produkt:</p>
		<p>${product.getName()}</p>
		<p>Wielkość porcji:</p>
		<p>${foodmass}g</p>
		<div class="table">
			<table>
				<tr>
					<th>kcal w porcji</th>
					<th>węglowodany w porcji</th>
					<th>białko w porcji</th>
					<th>tłuszcze w porcji</th>
				</tr>
				<tr>
					<td><fmt:formatNumber type="number"
							value="${(foodmass*product.getCaloriesPer100g())/100}"
							maxFractionDigits="0" />kcal</td>
					<td><fmt:formatNumber type="number"
							value="${(foodmass*product.getCarbsPer100g())/100}"
							maxFractionDigits="0" />g</td>
					<td><fmt:formatNumber type="number"
							value="${(foodmass*product.getProteinPer100g())/100}"
							maxFractionDigits="0" />g</td>
					<td><fmt:formatNumber type="number"
							value="${(foodmass*product.getFatsPer100g())/100}"
							maxFractionDigits="0" />g</td>
				</tr>
				<tr>
					<th>kcal / 100g</th>
					<th>węglowodany / 100g</th>
					<th>białko / 100g</th>
					<th>tłuszcze / 100g</th>
				</tr>
				<tr>
					<td>${product.getCaloriesPer100g()}kcal</td>
					<td>${product.getCarbsPer100g()}g</td>
					<td>${product.getProteinPer100g()}g</td>
					<td>${product.getFatsPer100g()}g</td>
				</tr>
			</table>
		</div>
		<c:url var="back" value="/food/menu/macroConverter"></c:url>
		<a href="${back}">Powrót</a>
	</div>
</body>
</html>