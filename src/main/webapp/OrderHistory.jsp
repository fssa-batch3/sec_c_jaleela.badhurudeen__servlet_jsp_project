<%@page import="com.fssa.specsee.modelobjects.Product"%>
<%@page import="com.fssa.specsee.daolayer.ProductDAO"%>
<%@page import="com.fssa.specsee.modelobjects.OrderProduct"%>
<%@page import="com.fssa.specsee.modelobjects.Order"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./assets/css/order.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Carter+One&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet" />
<title>Document</title>
</head>
<body>
	<%
	ArrayList<Order> orderDetails = (ArrayList<Order>) request.getAttribute("orderDetails");

	System.out.print(orderDetails + "got");
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<h1 class="heading">Order History</h1>
	<h3 class="all_orders">All Orders</h3>

		<table style="margin-top:20px">


			<tr class="titles">
				<td class="id" style="width: 15px">ID</td>
				<td class="product"style="width: 120px">Product</td>
				<td class="price" style="width: 20px">Price</td>
				<td class="quantity" style="width: 15px">Quantity</td>
				<td class="totalprice" style="width: 30px">Total Price</td>
				<td class="delivery_address">Delivery address</td>
				<td class="ordered_date" style="width: 100px">Ordered date</td>
				<td class="expected_date" style="width: 100px">Expected Delivery
					Date</td>
				<td class="delivered_date" style="width: 100px">Delivered Date</td>
				<td class="status" style="width: 20px">Status</td>
			</tr>


			<%
			for (Order order : orderDetails) {
				for (OrderProduct product : order.getProductsList()) {
					Product plant = ProductDAO.getProductById(product.getProductId());
			%>

			<tr class="details">
				<td class="id" style="width: 15px"><%=order.getOrderId()%></td>
				<td class="product"style="width: 120px"><%=plant.getProductName()%></td>
				<td class="price" style="width: 20px"><%=plant.getProductPrice()%></td>
				<td class="quantity" style="width: 15px"><%=product.getQuantity()%></td>
				<td class="totalprice" style="width: 30px"><%=product.getTotalAmount()%></td>
				<td class="delivery_address" style="width: 50px"><%=order.getAddress()%></td>
				<td class="ordered_date" style="width: 40px"><%=order.getOrderedDate()%></td>
				<td class="expected_date" style="width: 40px">--</td>
				<td class="delivered_date" style="width: 40px">--</td>
				
				<td class="status" style="width: 20px"><%=order.getStatus()%></td>
			</tr>


			<%
			}
			}
			%>
		</table>


</body>
</html>


  