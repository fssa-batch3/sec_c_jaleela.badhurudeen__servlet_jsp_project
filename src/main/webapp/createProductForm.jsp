<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Create Form</title>
</head>
<body>

	<h1>Product Create Form</h1>
	<div class="Productform">
		<form action="AddProductServlet" method="post">
			<label for="name">Product Name:</label> <input type="text" id="name"
				name="name" required><br> <br> <label for="image">ProductMainImageURL:</label>
			<input type="text" id="image" name="image" required><br>
			<label for="price">Product price:</label> <input type="number"
				id="price" name="price" required><br> <label
				for="category">Product Category: </label> <select name="category"
				id="category">
				<option value="computer_glasses">computer_glasses</option>
				<option value="sun_glasses">sun_glasses</option>
				<option value="power_glasses">power_glasses</option>
				<option value="contact_lens">contact_lens</option>
				<option value="metalics">metalics</option>
				<option value="rectangle">rectangle</option>
				<option value="pilot">pilot</option>
			</select> <br> <label for="description">Product Description:</label> <input
				type="text" id="description" name="description" required><br>
			<label for="image1">ProductSideImageURL1:</label> <input type="text"
				id="image1" name="image1" required><br> <label
				for="image2">ProductSideImageURL2:</label> <input type="text"
				id="image2" name="image2" required><br> <label
				for="image3">ProductSideImageURL3:</label> <input type="text"
				id="image3" name="image3" required><br> <label
				for="image4">ProductSideImageURL4:</label> <input type="text"
				id="image4" name="image4" required><br> <input
				type="submit" value="Create">
		</form>
	</div>
</body>
</html>