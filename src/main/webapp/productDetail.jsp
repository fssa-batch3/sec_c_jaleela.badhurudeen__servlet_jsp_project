<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.fssa.specsee.modelobjects.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/specsee-webapp/assets/css/productDetail.css">

</head>
<body>

<main>
        <div class="container">
    <% Product product = (Product) request.getAttribute("product"); %>

    <div class="container_img">
        <div class="large_img">
            <img src="<%= product.getProductMainImageUrl() %>" alt="cg" width="600px" height="380px">
        </div>

        <% List<String> sideimage = (List<String>) request.getAttribute("image");
        for (String image : sideimage) { %>

        <div class="small_img" display="flex`````">
            <img src="<%= image %>" alt="" width="150px" height="100px" padding="10px">
             
         
        </div>
        <% } %>
    </div>
    <div class="product_detail">
        <p id="signa"><%= product.getProductName() %></p>
        <p><%= product.getProductDescription() %></p>
        <p class="h_three"><%= product.getProductCatagory() %></p> 
        <p class="h_three"><%= product.getProductPrice() %></p>
        <p class="h_three">Ratings
            <span>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
            </span>
        </p>
        <div class="btn">
            <a href="../order/add_to_cart.html"><button type="submit">Add to Cart</button></a>
            <a href="<%=request.getContextPath() %>/CheckLoginWhenShop?id=<%=product.getProductId() %>"><button type="submit">Shop Now</button></a>
        </div>
        <div class="btn_one">
            <a href="../../pages/facilities/frame_size.html"><button type="submit">Do You Know About Your Frame Size?</button></a>
        </div>
    </div>
</div>

    </main> 




</body>
</html>