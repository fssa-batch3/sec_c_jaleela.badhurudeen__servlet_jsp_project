<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Specsee</title>
    <link rel="stylesheet" href="asset/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Notify CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">

<!-- Notify Js script file -->
<script
	src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js">
	
</script>
</head>
<body> 

<%
	String success = (String) request.getAttribute("success");
	if (success != null) {
	%>
	<script>
		let success = "<%=success%>";
		//Notify.success(success);
		alert(success);
	</script>
	<%
	}
	%>
   <jsp:include page="header.jsp"></jsp:include>

    <!-- start of main content -->

    <!-- start of cont with text and image -->

    <section class="text-image">

      <p>Nothing but the best for your eyes</p>

    </section>

    <!-- end of cont with text and image -->

    <!-- start of home scroll content -->


    <section class="home-scroll">

        <div class="scroll-line-left scroll-line"></div>

        <p class="scroll-title">Fashionable Choices</p>

        <div class="scroll-line-right scroll-line"></div>

    </section>

    <!-- end of home scroll content -->

    <!-- end of main content -->

<!-- end new edit -->


    <!--header starting-->
    
        <div id="slider">
            <figure>
                <img src="asset/images/homepage/srl1.jpg" alt="img_one">
                <img src="asset/images/homepage/srl2.jpg" alt="img_two">
                <img src="asset/images/homepage/srl3.jpg" alt="img_three">
                <img src="asset/images/homepage/srl6.jpg" alt="img_four">
                <img src="asset/images/homepage/srl4.jpg" alt="img_five">
                <img src="asset/images/homepage/srl5.jpg" alt="img_six">
                <img src="asset/images/homepage/srl6.jpg" alt="img_seven">
                <img src="asset/images/homepage/srl1.jpg" alt="img_eight">

            </figure>
        </div>
        <div class="collection"> 
            <p>Choices for Men</p>
            <div class="mens">
                <img src="asset/images/homepage/men1.jpg" alt="men_one">
                <img src="asset/images/homepage/men2.jpg" alt="men_two">
                <img src="asset/images/homepage/men3.jpg" alt="men_three">
                <img src="asset/images/homepage/men4.jpg" alt="men_four">
            </div>
            <p>Choices for Women</p>            
            <div class="womens">
                <img src="asset/images/homepage/girl1.jpg" alt="girl1">
                <img src="asset/images/homepage/girl2.jpg" alt="girl2">
                <img src="asset/images/homepage/girl3.jpg" alt="girl3">
                <img src="asset/images/homepage/girl4.jpg" alt="girl4">
            </div>
            <p>Choices for Kids</p>
            <div class="kids">
                <img src="asset/images/homepage/kid1.jpg" alt="kid1">
                <img src="asset/images/homepage/kid2.jpg" alt="kid2">
                <img src="asset/images/homepage/kid3.jpg" alt="kid3">
                <img src="asset/images/homepage/kid4.jpg" alt="kid4">
            </div>
            <p>Choices for Old people</p>
            <div class="olders">
                <img src="asset/images/homepage/older1.jpg" alt="older1">
                <img src="asset/images/homepage/older2.jpg" alt="older2">
                <img src="asset/images/homepage/older3.jpg" alt="older3">
                <img src="asset/images/homepage/older4.jpg" alt="older4">
            </div>
        </div>
    </main>
            <!--main ending-->
        <!--footer staring-->
        <footer>
            <div class="footlogo">
                <img src="asset/images/homepage/specsee1.png" alt="specsee">
            </div>
            <div class="foot">
                <div class="icon">
                    <img src="asset/images/homepage/facebook.png" alt="facebook">
                    <img src="asset/images/homepage/instagram.png" alt="instagram">
                    <img src="asset/images/homepage/linkedin.png" alt="linkedin">
                    <img src="asset/images/homepage/twitter.png" alt="twitter">
                    <img src="asset/images/homepage/whatsapp.png" alt="whatsapp">
                </div>
                <div class="contact" id="number">
                    <p id="contact">Contact Us</p>
                    <p>Specsee<br>22,MGR road , perungudi. <br>specsee2020@gmail.com<br>9867543421</p>
                </div>
                <div class="thanks" id="123gh">
                    <p id="thank">Thanks to</p>
                    <p>Unsplash</p>
                    <p>Freepik</p>
                    <p>Pexels</p>
                    <a href="./pages/admin/create_product.html"><p>Create Product</p></a>

                </div>
            </div>
            <div class="copy">
                <p>Copyright &copy; 2022 collections. All Rights reserved</p>
            </div>
        </footer>
        <!--footer ending-->
        <script src="./main.js" ></script>
        <script src="/main_doc.js"></script>
        <script src="./asset/js/index.js"> </script>
        
</body>

<%
    String email=(String) session.getAttribute("mail");
    %>
<script>
   const arr1 = "<%= email %>";
    console.log(arr1);
    let gethelp = document.getElementById("gethelplink");
    let sign = document.getElementById("sign");
    let beinspired = document.getElementById("inspiredlink");
    if (arr1 == null) {
      gethelp.setAttribute("href", "login.jsp");
      sign.setAttribute("href", "login.jsp");
      beinspired.setAttribute("href", "login.jsp");
    }
    else {
      gethelp.setAttribute("href", "pages/patientpages/gethelp.html");
      sign.setAttribute("href", "pages/about/profile.html");
      sign.innerText = "profile"
      beinspired.setAttribute("href", "pages/beinspired/inspire.html");
    }
  </script>
</html>