<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Zawartośći tkanki tłusczowej</title>
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/css/bgc-font.css" />
<link type="text/css" rel="stylesheet" href="/css/module.css" />
<link type="text/css" rel="stylesheet" href="/css/bf.css" />

</head>
<body>
	<form>
		<p>Oblicz przybliżoną zawartość tkanki tłuszczowej</p>
		<label>Podaj masę ciała [kg]: <input type="text" id="weight"
			value="0"></label> <label>Podaj obwód w pasie [cm]: <input
			type="text" id="waist" value="0"></label> <label>Płeć: <label><input
				type="radio" name="gender" id="man" />Mężczyzna </label> <label><input
				type="radio" name="gender" id="woman" />Kobieta</label>
		</label> <input type="button" onClick="calc()" value="Oblicz" />
		<p id="p1"></p>
		<input type="reset" value="Od nowa" />
	</form>
	<c:url var="back" value="/food/menu"></c:url>
	<a href="${back}">Powrót</a>
	<script>
	function calc(){
		var weight = document.querySelector("#weight").value;
		var waist = document.querySelector("#waist").value;
		var bf = 0;
		if(document.querySelector("#man").checked){
			bf = (((((4.15*waist)/2.54)-(0.082*weight*2.2)-98.42)/(weight*2.2))*100).toFixed(2);
			if(weight==0 || waist==0 || bf <0){
				bf=0;
			}
			document.querySelector("#p1").innerHTML = "Przybliżona zawartość tkanki tłuszczowej: " + bf + "%.";
		}
		if(document.querySelector("#woman").checked){
			bf = (((((4.15*waist)/2.54)-(0.082*weight*2.2)-76.76)/(weight*2.2))*100).toFixed(2);
			if(weight==0 || waist==0 || bf <0){
				bf=0;
			}
			document.querySelector("#p1").innerHTML = "Przybliżona zawartość tkanki tłuszczowej: " + bf + "%.";
		}
	}
	</script>
</body>
</html>
