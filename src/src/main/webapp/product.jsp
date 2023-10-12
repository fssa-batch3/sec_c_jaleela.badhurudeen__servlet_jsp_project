<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.specsee.modelobjects.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/asset/css/computer.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/index.css">
	
	
    <style type="text/css">
    
    #glasses{
        display: flex;
    flex-direction: row;
    width:1400px;
    flex-wrap: wrap;
    column-gap:30px;
    justify-content: space-between;
    text-align: center;
    }
    
    
    </style>

<!-- Notify CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">

<!-- Notify Js script file -->
<script
	src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js">
	
</script>



</head>
<body>

	<%
	String success = (String) request.getAttribute("success");
	if (success != null) {
	%>
	<script>
		let success = "<%=success%>";
		Notify.success(success);
	</script>
	<%
	}
	%>
	
	<%
	String error = (String) request.getAttribute("error");
	if (error != null) {
	%>
	<script>
		let error = "<%=error%>";
		Notify.error(error);
	</script>
	<%
	}
	%>

	<header>
		<h1>Admin Dashboard</h1>
		<nav>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="ProductServlet">Products</a></li>
				<li><a href="createProductForm.jsp">Add Products</a></li>
				<li><a href="#">Profile</a></li>
				<li><a href="#">Logout</a></li>
			</ul>
		</nav>
	</header>

	<div class="computer_glasses"  id="glasses">

		<%
		List<Product> products = (List<Product>) request.getAttribute("Productlist");
		if (products != null) {
			for (Product e : products) {
		%>
		<div class="cg" display="flex">
			<a href="ProductDetailServlet?id=<%=e.getProductId()%>">
				<div class="product">
					<img src="<%=e.getProductMainImageUrl()%>" alt="" width="350px"
						height="175">
					<h3><%=e.getProductName()%><br> <br> <br>
					</h3>
					<h3><%=e.getProductDescription()%><br>
					</h3>
					<h3><%=e.getProductCatagory()%><br> <br> <br>
						<h3><%=e.getProductPrice()%></h3>
						<br> <br> <br> <a
							href="UpdateProductServlet?id=<%=e.getProductId()%>">
							<button>Edit</button>
						</a> <a href="DeleteProductServlet?id=<%=e.getProductId()%>"><button>Delete</button></a>
				</div>
			</a>
		</div>
		<%
		}
		} else {
		%>
		<p>Null</p>
		<%
		}
		%>
	</div>

</body>
</html>