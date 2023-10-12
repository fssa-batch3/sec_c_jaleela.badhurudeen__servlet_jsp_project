 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.specsee.modelobjects.*"%>
<%@ page import="java.util.*"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Specsee</title>
    <link rel="stylesheet" href= "%request.getContextPath() %>/asset/css/style.css">
        <link rel="stylesheet" href= "%request.getContextPath() %>/asset/css/computer.css">
    
    
    <link rel="stylesheet" href="%=request.getContextPath() %>/asset/css/facilities/nav.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
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
</head>
<body>
   <jsp:include page="/header.jsp"></jsp:include>
  <!-- end of header -->
 <div class="banner">
  <img src="%=request.getContextPath() %>/asset/images/computer_glasses/Main_Image_Banner-3.png" alt="" id="banner_imgs">
</div>

<main>
  <div class="computer_glasses" id="glasses">

		<%
		List<Product> products = (List<Product>) request.getAttribute("Productlist");
		
		
		if(products!=null){
        
		for (Product e : products) {
		%> 
		<div class="cg">
			<a href="ProductDetailServlet?id=<%=e.getProductId()%>">
				<div class="product">
					<img src=<%=e.getProductMainImageUrl()%> alt="" width="350px"
						height="175">
					<h3><%=e.getProductName()%><br> <br> <br>
					</h3>
					<h3><%=e.getProductDescription()%><br>
					</h3>
					<h3><%=e.getProductCatagory()%><br> <br> <br>
						<h3><%=e.getProductPrice()%></h3>
						<br> <br> <br> 
				</div>
			</a>
		</div>
		 <%
		}
		}
		%> 
	</div>
  
</main>
    
<footer>
      <div class="footlogo">
          <img src="../../asset/images/homepage/specsee1.png" alt="specsee">
      </div>
      <div class="foot">
          <div class="icon">
              <img src="../../asset/images/homepage/facebook.png" alt="facebook">
              <img src="../../asset/images/homepage/instagram.png" alt="instagram">
              <img src="../../asset/images/homepage/linkedin.png" alt="linkedin">
              <img src="../../asset/images/homepage/twitter.png" alt="twitter">
              <img src="../../asset/images/homepage/whatsapp.png" alt="whatsapp">
          </div>
          <div class="contact">
              <p>Contact Us</p>
              <p>Specsee<br>22,MGR road , perungudi. <br>specsee2020@gmail.com<br>9867543421</p>
          </div>
          <div class="thanks">
              <p>Thanks to</p>
              <p>Unsplash</p>
              <p>Freepik</p>
              <p>Pexels</p>
          </div>
      </div>
      <div class="copy">
          <p>Copyright &copy; 2022 collections. All Rights reserved</p>
      </div>
</footer>
<script src="../../asset/js/computer_glass.js"></script>
<script src="/asset/js/index.js"> </script>

</body>
</html> 