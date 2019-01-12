<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj klienta</title>
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/css/bgc-font.css" />
<link type="text/css" rel="stylesheet"
	href="/css/customers-list-form.css" />
<link type="text/css" rel="stylesheet" href="/css/customer-form.css" />
</head>
<body>
	<div class="all">
		<div id="header">
			<h2>Dane klienta</h2>
		</div>
		<div class="main">
			<h3>Pamiętaj o wypełnieniu wszystkich pól.</h3>
			<form:form action="saveCustomer" modelAttribute="customer"
				method="POST">
				<form:hidden path="id" />
				<table>
					<tr>
						<td>Imię:</td>
						<td><form:input class="form" path="name" /></td>
					</tr>
					<tr>
						<td><label>Nazwisko:</label></td>
						<td><form:input path="surname" /></td>
					</tr>
					<tr>
						<td><label>Telefon:</label></td>
						<td><form:input path="phoneNumber" /></td>
					</tr>
					<tr>
						<td><label>Płeć:</label></td>
						<td><form:radiobutton path="gender" value="M" />Mężczyzna <form:radiobutton
								path="gender" value="K" />Kobieta</td>
					</tr>
					<tr>
						<td><label>Wiek:</label></td>
						<td><form:input path="age" value="0" /></td>
					</tr>
					<tr>
						<td><label>Wzrost [cm]:</label></td>
						<td><form:input path="height" /></td>
					</tr>
					<tr>
						<td><label>Masa [kg]:</label></td>
						<td><form:input path="weight" /></td>
					</tr>
					<tr>
						<td><label>Wsp. aktywnosci:</label></td>
						<td><form:select path="activity">
								<form:option value="1.2">1.2 - brak aktywności, praca siedząca</form:option>
								<form:option value="1.4">1.4 - niska aktywność (praca siedząca i 1-2 treningi w tygodniu)</form:option>
								<form:option value="1.6">1.6 - średnia aktywność (praca siedząca i 3-4 treningi w tygodniu)</form:option>
								<form:option value="1.8">1.8 - wysoka aktywność (praca fizyczna i 3-4 treningi w tygodniu)</form:option>
								<form:option value="2.0">2.0 - bardzo wysoka aktywność (zawodowi sportowcy i osoby codziennie trenujące)</form:option>
							</form:select></td>
					</tr>
					<tr>
						<td><label>Cel:</label></td>
						<td><form:select path="goal">
								<form:option value="Utrata tkanki tłuszczowej: 0,75 kg/tydz.">Utrata tkanki tłuszczowej: 0,75 kg/tydz.</form:option>
								<form:option value="Utrata tkanki tłuszczowej: 0,50 kg/tydz.">Utrata tkanki tłuszczowej: 0,50 kg/tydz.</form:option>
								<form:option value="Utrata tkanki tłuszczowej: 0,25 kg/tydz.">Utrata tkanki tłuszczowej: 0,25 kg/tydz.</form:option>
								<form:option value="Utrzymanie masy ciała">Utrzymanie masy ciała</form:option>
								<form:option value="Budowanie masy: 0,25 kg/tydz.">Budowanie masy: 0,25 kg/tydz.</form:option>
								<form:option value="Budowanie masy: 0,50 kg/tydz.">Budowanie masy: 0,50 kg/tydz.</form:option>
							</form:select></td>
					</tr>
					<tr>
						<td><label>Ilość białka na kg masy ciała:</label></td>
						<td><form:input path="proteinPerKgOfBodyMass" /></td>
					</tr>
					<tr>
						<td><label>Procent kalorii pochodzący z tłuszczów:</label></td>
						<td><form:input path="percOfCalsFromFats" /></td>
					</tr>
					<tr>
						<td class="button"><input type="submit" value="Zapisz" /></td>
					</tr>
				</table>
			</form:form>

			<p>
				<a class="link"
					href="${pageContext.request.contextPath}/customer/list">Powrót
					do listy klientów</a>
			</p>
		</div>
	</div>
</body>
</html>