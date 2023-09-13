<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.specsee.modelobjects.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Update Form</title>
<link rel="stylesheet"
	href="/specsee-webapp/assets/css/productCreationForm.css">
<body>
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

	<%
	Product product = (Product) request.getAttribute("product");
	System.out.print(product.getProductSideImageURLs());
	%>
	<main>
		<section id="user-management">
			<h1>Update Product</h1>
			<!-- User management options and forms go here -->
			<form action="UpdateProductServlet" method="POST">


				<label for="name">Product Name:</label> <input type="text" id="name"
					value="<%=product.getProductName()%>" name="name" required><br>
				<br> <label for="image">ProductMainImageURL:</label> <input
					type="text" id="image"
					value="<%=product.getProductMainImageUrl()%>" name="image"
					required><br> <label for="price">Product
					price:</label> <input type="number" id="price"
					value="<%=product.getProductPrice()%>" name="price" required><br>

				<label for="description">Product Description:</label> <input
					type="text" id="description"
					value="<%=product.getProductDescription()%>" name="description"
					required><br> <label for="image1">ProductSideImageURL1:</label>
				<input type="text" id="image1" name="image1"
					value=<%=product.getProductSideImageURLs().get(0)%> required><br>
				<label for="image2">ProductSideImageURL2:</label> <input type="text"
					id="image2" name="image2"
					value=<%=product.getProductSideImageURLs().get(1)%> required><br>
				<label for="image3">ProductSideImageURL3:</label> <input type="text"
					id="image3" name="image3"
					value="<%=product.getProductSideImageURLs().get(2)%>" required><br>
				<label for="image4">ProductSideImageURL4:</label> <input type="text"
					id="image4" name="image4"
					value="<%=product.getProductSideImageURLs().get(3)%>" required><br>
				<label for="category">Product Category: </label> <select
					name="category" id="category"
					value="<%=product.getProductCatagory()%>">
					<option value="computer_glasses">computer_glasses</option>
					<option value="sun_glasses">sun_glasses</option>
					<option value="power_glasses">power_glasses</option>
					<option value="contact_lens">contact_lens</option>
					<option value="metalics">metalics</option>
					<option value="rectangle">rectangle</option>
					<option value="pilot">pilot</option>
				</select> <br> <input type="submit" value="Update" id="btn">
			</form>
		</section>

		<!-- Other sections and forms go here -->
	</main>

	<footer>
		<p>&copy; 2023 Your Company</p>
	</footer>
</body>
</html>
