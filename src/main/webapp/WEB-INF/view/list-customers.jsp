<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista klientów</title>
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/css/bgc-font.css" />
<link type="text/css" rel="stylesheet"
	href="/css/customers-list-form.css" />
<link type="text/css" rel="stylesheet" href="/css/list-customers.css" />
</head>
<body>
	<div class="header">
		<h2>Lista klientów</h2>
	</div>
	<div class="main">

		<input class="button" type="button" value="Dodaj klienta"
			onclick="window.location.href='add'; return false;" />
		<table>

			<tr>
				<th>Imię</th>
				<th>Nazwisko</th>
				<th>Telefon</th>
				<th>Płeć</th>
				<th>Wiek</th>
				<th>Wzrost</th>
				<th>Masa ciała</th>
				<th>Aktywność</th>
				<th>Cel</th>
				<th>Białko / 1 kgmc</th>
				<th>% tłuszczów</th>
				<th>Nadwyżka kcal</th>
				<th>BMR</th>
				<th>CPM</th>
				<th>Kalorie</th>
				<th>Białka</th>
				<th>Węgle</th>
				<th>Tłuszcze</th>
				<th class="manageRow">Zarządzaj</th>
			</tr>

			<c:forEach var="tempCustomer" items="${customers}">
				<c:url var="updateLink" value="/customer/update">
					<c:param name="id" value="${tempCustomer.id}" />
				</c:url>
				<c:url var="deleteLink" value="/customer/delete">
					<c:param name="id" value="${tempCustomer.id}" />
				</c:url>
				<tr>
					<td>${tempCustomer.name}</td>
					<td>${tempCustomer.surname}</td>
					<td>${tempCustomer.phoneNumber}</td>
					<td>${tempCustomer.gender}</td>
					<td><fmt:formatNumber type="number"
							value="${tempCustomer.age}" maxFractionDigits="0" /></td>
					<td>${tempCustomer.height}</td>
					<td>${tempCustomer.weight}</td>
					<td>${tempCustomer.activity}</td>
					<td>${tempCustomer.goal}</td>
					<td>${tempCustomer.proteinPerKgOfBodyMass}</td>
					<td>${tempCustomer.percOfCalsFromFats}</td>
					<td><fmt:formatNumber type="number"
							value="${tempCustomer.goalCoef}" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber type="number"
							value="${tempCustomer.bmr}" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber type="number"
							value="${tempCustomer.totalMetabolism}" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber type="number"
							value="${tempCustomer.calories}" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber type="number"
							value="${tempCustomer.protein}" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber type="number"
							value="${tempCustomer.carbs}" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber type="number"
							value="${tempCustomer.fats}" maxFractionDigits="0" /></td>
					<td class="manageRow"><a href="${updateLink}">Edytuj</a><a
						href="${deleteLink}"
						onclick="if (!(confirm('Czy na pewno chcesz usunąć tego użytkownika?'))) return false">Usuń</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:url var="menu" value="/food/menu"></c:url>
		<a class="link" href="${menu}">Do strefy dla klientów</a>
	</div>
</body>
</html>