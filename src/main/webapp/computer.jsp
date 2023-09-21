<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.specsee.modelobjects.*"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Specsee</title>
    <link rel="stylesheet" href="../../asset/css/style.css">
    <link rel="stylesheet" href="../../asset/css/computer.css">
    <link rel="stylesheet" href="/asset/css/facilities/nav.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
   <jsp:include page="/header.jsp"></jsp:include>
  <!-- end of header -->
 <div class="banner">
  <img src="../../asset/images/computer_glasses/Main_Image_Banner-3.png" alt="" id="banner_imgs">
</div>
<aside>
    <ul>
      <li>
         <p class="fil_sort"><a href="#">Sort By <i class="fa fa-angle-right"></i></a></p> 
         <div class="drop_down">
           <ul>
             <li>
               <a aria-label="Categories"href="#"> Popular</a><br>
               <a aria-label="Categories"href="#">Discount</a><br>
               <a aria-label="Categories"href="#">Top Rated</a><br>
               <a aria-label="Categories"href="#">New Arrivals</a><br>
               <a aria-label="Categories"href="#">Low Price</a><br>
               <a aria-label="Categories"href="#">High Price</a><br>
             </li>
           </ul>
         </div>
      </li>
    </ul>
      <div class="filter">
          <p class="fil_sort"><a href="#">Filters<i class="fa fa-angle-right"></i></a></p>
        <div class="drop_down">
         <p>
              <a aria-label="Categories"href="#"> Gender</a><br>
              <a aria-label="Categories"href="#">Brand</a><br>
              <a aria-label="Categories"href="#">Frame Type</a><br>
              <a aria-label="Categories"href="#">Frame Shape</a><br>
              <a aria-label="Categories"href="#">FrameMaterial</a><br>
              <a aria-label="Categories"href="#">Frame Size</a><br>
              <a aria-label="Categories"href="#">Frame Color</a><br>
         </p>
        </div>
      </div>
</aside>
<main>
  <div class="computer_glasses">

		<%
		List<Product> products = (List<Product>) request.getAttribute("Productlist");
		
		
		if(products!=null){
        
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