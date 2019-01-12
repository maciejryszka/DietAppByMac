<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Witaj w naszym serwisie</title>
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/css/bgc-font.css" />
<link type="text/css" rel="stylesheet" href="/css/index.css" />
</head>
<body>
	<c:url var="macroConverter" value="/food/menu/macroConverter">
	</c:url>
	<c:url var="bmiCalculator" value="/food/menu/bmiCalculator">
	</c:url>
	<c:url var="bodyFatCalculator" value="/food/menu/bodyFatCalculator">
	</c:url>
	<div class="header">
		<p class="slogan">Witaj w naszym serwisie</p>
		<p class="describe">Dbaj o swoje zdrowie stosując zbilansowaną
			dietę!</p>
	</div>
	<div class="wrap">
		<div class=first onclick="location.href='${macroConverter}';">
			<div class="title">Konwerter makroskładników</div>
			<div class="image">
				<img alt="jabłko"
					src="/img/apple.png">
			</div>
		</div>
		<div class="second" onclick="location.href='${bmiCalculator}';">
			<div class="title">Kalkulator BMI</div>
			<div class="image">
				<img alt="waga"
					src="/img/scale.png">
			</div>
		</div>
		<div class="third" onclick="location.href='${bodyFatCalculator}';">
			<div class="title">Przybliżona zawartość tk. tłuszczowej</div>
			<div class="image">
				<img alt="miarka"
					src="/img/measure-tape.png">
			</div>
		</div>
	</div>
</body>
</html>