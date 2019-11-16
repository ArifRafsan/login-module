<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- bootstrap  -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Dashboard</title>
</head>
<body>
	<!-- session -->
	<%
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
		}
	%>

	<jsp:include page="/navbar.jsp"></jsp:include>

	<div class="jumbotron bg-light">
		<h1 class="display-4">Hello, Coffee Lover!</h1>
		<p class="lead">Coffee is a brewed drink prepared from roasted
			coffee beans, the seeds of berries from certain Coffea species. The
			genus Coffea is native to tropical Africa (specifically having its
			origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius,
			and Réunion in the Indian Ocean.</p>
		<hr class="my-4">
		<h4>History of Coffee</h4>
		<p>According to one legend, ancestors of today's Oromo people in a
			region of Kaffa in Ethiopia were the first to recognize the
			energizing effect of the coffee plant. However, no direct evidence
			that has been found earlier than the 15th century indicating who
			among the African populations used it as a stimulant, or where coffee
			was first cultivated.The story of Kaldi, the 9th-century
			Ethiopian goatherd who discovered coffee when he noticed how excited
			his goats became after eating the beans from a coffee plant, did not
			appear in writing until 1671 and is probably apocryphal.</p>

	</div>

	<!-- footer -->
	<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>