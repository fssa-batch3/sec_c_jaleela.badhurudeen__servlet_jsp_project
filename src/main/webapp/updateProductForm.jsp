<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Create Form</title>
</head>
<body>
<!--  
	<h1>Product Create Form</h1>
	<div class="Productform">
		<form action="UpdateProductServlet" method="post">
			<label for="id">Product id:</label> <input type="text" id="id"
				name="id" required><br> <br> <label for="name">Product
				Name:</label> <input type="text" id="name" name="name" required><br>
			<br> <label for="image">ProductMainImageURL:</label> <input
				type="text" id="image" name="image" required><br> <label
				for="price">Product price:</label> <input type="number" id="price"
				name="price" required><br> <label for="category">Product
				Category: </label> <select name="category" id="category">
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
				type="submit" value="Update">
		</form>
	</div>
	-->
	  <h1>Update Product</h1>
    <form action="UpdateProductServlet" method="post">
        <input type="hidden" name="id" value="${productId}" />
        <label for="name">Product Name:</label>
        <input type="text" id="name" name="name" value="${productName}" /><br />
        <label for="image">Product Image URL:</label>
        <input type="text" id="image" name="image" value="${productImage}" /><br />
        <label for="price">Product Price:</label>
        <input type="number" id="price" name="price" value="${productPrice}" /><br />
        <label for="category">Product Category:</label>
        <select name="category" id="category">
            <option value="computer_glasses" ${productCategory eq 'computer_glasses' ? 'selected' : ''}>Computer Glasses</option>
            <option value="sun_glasses" ${productCategory eq 'sun_glasses' ? 'selected' : ''}>Sun Glasses</option>
            <option value="power_glasses" ${productCategory eq 'power_glasses' ? 'selected' : ''}>Power Glasses</option>
            <option value="contact_lens" ${productCategory eq 'contact_lens' ? 'selected' : ''}>Contact Lens</option>
            <option value="metalics" ${productCategory eq 'metalics' ? 'selected' : ''}>Metalics</option>
            <option value="rectangle" ${productCategory eq 'rectangle' ? 'selected' : ''}>Rectangle</option>
            <option value="pilot" ${productCategory eq 'pilot' ? 'selected' : ''}>Pilot</option>
        </select><br />
        <label for="description">Product Description:</label>
        <input type="text" id="description" name="description" value="${productDescription}" /><br />
        <label for="image1">Product Side Image URL 1:</label>
        
        <input type="text" id="image1" name="image1" value="" /><br />
        <label for="image2">Product Side Image URL 2:</label>
        <input type="text" id="image2" name="image2" value="${image2}" /><br />
        <label for="image3">Product Side Image URL 3:</label>
        <input type="text" id="image3" name="image3" value="${image3}" /><br />
        <label for="image4">Product Side Image URL 4:</label>
        <input type="text" id="image4" name="image4" value="${image4}" /><br />
        <button type="submit">Update</button>
    </form>

</body>
</html>