<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.specsee.modelobjects.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/specsee-webapp/assets/css/product.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<form action="ProductServlet" method="get">
		<div class="input-group mb-3">
			<input type="text" class="form-control"
				placeholder="Search by category" name="productCategory">
			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="submit">Search</button>
			</div>
		</div>
	</form>

	<div class="computer_glasses">

		<%
		List<Product> products = (List<Product>) request.getAttribute("Productlist");

		for (Product e : products) {
		%>
		<div class="cg">
			<a href="ProductDetailServlet?id=<%=e.getProductId()%>">
				<div class="product">
					<img src="<%=e.getProductMainImageUrl()%>" alt="" width="350px"
						height="175">
					<h3><%=e.getProductName()%><br> <br> <br>
					</h3>
					<h3><%=e.getProductDescription()%><br>
					</h3>
					<h3><%=e.getProductCatagory()%><br> <br> <br>
						<h3><%=e.getProductPrice()%></h3><br> <br> <br>
						<a href="UpdateProductServlet?id=<%=e.getProductId()%>"><button>Edit</button></a>
			           <button>Delete</button>
						
				</div>
			</a>
		</div>
		<%
		}
		%>
	</div>

</body>
</html>