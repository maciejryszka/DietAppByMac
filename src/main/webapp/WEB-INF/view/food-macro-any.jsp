<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link type="text/css" rel="stylesheet" href="/css/food-macro-any.css" />
</head>
<body>
	<div class="wrap">
		<p>Oblicz makroskładniki dla dowolnej ilościproduktu</p>
		<form>
			<label>Masa porcji [g]: <input type="text" id="portion"
				value="0" /></label> <label>Ilość kcal w 100g: <input type="text"
				id="calories" value="0"></label> <label>Ilość węglowodanów w
				100g: <input type="text" id="carbs" value="0" />
			</label> <label>Ilość białka w 100g: <input type="text" id="protein"
				value="0" /></label> <label>Ilość tłuszczy w 100g: <input
				type="text" id="fats" value="0" /></label> <input class="button"
				type="button" onClick="calc()" value="Oblicz" /> <input
				class="button" type="reset" value="Od nowa" />
			<p id="p1"></p>
			<p id="p2"></p>
			<p id="p3"></p>
			<p id="p4"></p>
			<p id="p5"></p>
			<c:url var="back" value="/food/menu/macroConverter"></c:url>
			<a href="${back}">Powrót</a>
		</form>

	</div>
	<script>
		function calc() {
			var portion = document.querySelector("#portion").value;
			var calories = document.querySelector("#calories").value;
			var carbs = document.querySelector("#carbs").value;
			var protein = document.querySelector("#protein").value;
			var fats = document.querySelector("#fats").value;
			var calsPP = (portion * calories / 100).toFixed(2);
			var carbsPP = (portion * carbs / 100).toFixed(2);
			var proteinPP = (portion * protein / 100).toFixed(2);
			var fatsPP = (portion * fats / 100).toFixed(2);
			document.querySelector("#p1").innerHTML = "Porcja licząca "
					+ portion + "g produktu zawiera:";
			document.querySelector("#p2").innerHTML = calsPP + "kcal";
			document.querySelector("#p3").innerHTML = carbsPP
					+ "g węglowodanów";
			document.querySelector("#p4").innerHTML = proteinPP + "g białka";
			document.querySelector("#p5").innerHTML = fatsPP + "g tłuszczów";
		}
	</script>
</body>
</html>