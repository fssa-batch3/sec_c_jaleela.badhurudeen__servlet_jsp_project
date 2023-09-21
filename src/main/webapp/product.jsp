<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.specsee.modelobjects.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/specsee-webapp/assets/css/product.css">

<style>
.computer_glasses{
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    text-align: center;
}
.cg{
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    margin-top: 250px;
}
</style>
</head>
<body>
	
	<div class="computer_glasses" display="flex">

		<%
		List<Product> products = (List<Product>) request.getAttribute("Productlist");
		if(products != null){
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
		}else{
		%>
		<p>Null</p>
		<%} %>
	</div>

</body>
</html>