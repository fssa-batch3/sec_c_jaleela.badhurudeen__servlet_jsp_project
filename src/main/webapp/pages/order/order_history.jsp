<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.fssa.specsee.modelobjects.Product"%>
<%@page import="com.fssa.specsee.daolayer.ProductDAO"%>
<%@page import="com.fssa.specsee.modelobjects.OrderProduct"%>
<%@page import="com.fssa.specsee.modelobjects.Order"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order history</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/asset/css/order_history.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>
<%
	ArrayList<Order> orderDetails = (ArrayList<Order>) request.getAttribute("orderDetails");

	System.out.print(orderDetails + "got");
	%>
    <!-- <table>
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Date of Order</th>
                <th>Amount</th>
                <th>Product</th>
                <th>Status</th>
            </tr>

        </thead>
     -->
    <!-- <tbody>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </tbody> -->
<!-- </table> -->
<table>
    
    <thead>
        
      <tr>
        
        <th>ID</th>
        <th>Product</th>
         <th>Product Details</th>
        <th>Date of order</th>
        <th>Address</th>
        <th>Product Price</th>
       
        
        <th><a href="<%=request.getContextPath() %>/index.jsp">
            <i class="fa-solid fa-x"></i>
        </a></th>
      </tr>
    </thead>
  </table>
  
  <div class="main_content">
  
			<%
			for (Order order : orderDetails) {
				for (OrderProduct product : order.getProductsList()) {
					Product product1 = ProductDAO.getProductById(product.getProductId());
			%>
     <div class="content">
      <h2><%=order.getOrderId()%></h2>
      <img src="<%=product1.getProductMainImageUrl()%>">
             <h2><%=product1.getProductName()%><br><span>Quantity:<%=product.getQuantity()%> </span><br><span></span></h2>
      <h2><%=order.getOrderedDate()%></h2>
      <h2><%=order.getAddress()%></h2>
      <h2><%=product1.getProductPrice()%></h2>
       
       <%
			if ("CANCELLED".equals(order.getStatus().toString())) {
			%>


				<button class="cancled"><%=order.getStatus()%></button>

			<%
			} else {
			%>

			<a href="CancelOrderServlet?orderId=<%=order.getOrderId()%>">

				<button class="cancel" style="padding:25px; color:white; font-weight:bold; ">Cancel</button>

			</a>



			<%
			}
			%>
    </div>
    
    
			<%
			}
			}
			%>
  </div>
    <script src="../../asset/js/order_history.js"></script>
</body>

</html>