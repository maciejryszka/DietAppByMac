<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kalkulator BMI</title>
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700&amp;subset=latin-ext"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/css/bgc-font.css" />
<link type="text/css" rel="stylesheet" href="/css/module.css" />
<link type="text/css" rel="stylesheet" href="/css/bmi.css" />
</head>
<body>
	<div class="wrap">
		<form>
			<p>Oblicz swoje BMI</p>
			<label>Podaj wzrost [cm]: <input type="text" id="height"
				value="0"></label> <label>Podaj masę ciała [kg]: <input
				type="text" id="weight" value="0"></label> <input type="button"
				class="button" onClick="calc()" value="Oblicz" />
			<p id="p1"></p>
			<p id="p2"></p>
			<p id="p3"></p>
			<input type="reset" class="button" value="Od nowa" />
		</form>
		<c:url var="back" value="/food/menu"></c:url>
		<a href="${back}">Powrót</a>
		<script>
function calc(){
	var height = document.querySelector("#height").value;
	var weight = document.querySelector("#weight").value;
	if((height>0)&&(weight>0)){
		var bmi = (weight/((height/100)*(height/100))).toFixed(2);
		console.log(bmi);
		document.querySelector("#p1").innerHTML = "Twoje bmi wynosi: " + bmi;
	}
	if(bmi<16){
		document.querySelector("#p2").innerHTML = "Wygłodzenie!"
	}
	else if(bmi>=16&&bmi<17){
		document.querySelector("#p2").innerHTML = "Wychudzenie!"
	}
	else if(bmi>=17&&bmi<18.5){
		document.querySelector("#p2").innerHTML = "Niedowaga."
	}
	else if(bmi>=18.5&&bmi<25){
		document.querySelector("#p2").innerHTML = "Waga prawidłowa."
	}
	else if(bmi>=25&&bmi<30){
		document.querySelector("#p2").innerHTML = "Nadwaga."
	}
	else if(bmi>=30&&bmi<35){
		document.querySelector("#p2").innerHTML = "Otyłość I stopnia!"
	}
	else if(bmi>=35&&bmi<40){
		document.querySelector("#p2").innerHTML = "Otyłość II stopnia!"
	}
	else if(bmi>40){
		document.querySelector("#p2").innerHTML = "Otyłość III stopnia!"
	}
	else {
		alert("Wypełnij poprawnie cały formularz!")
	}
	var perfWeight = (21.75 * (height/100) * (height/100)).toFixed(1);
	document.querySelector("#p3").innerHTML = "Idealna waga dla Twojego wzrostu to: " + perfWeight + "kg.";
}

</script>
	</div>
</body>
</html>