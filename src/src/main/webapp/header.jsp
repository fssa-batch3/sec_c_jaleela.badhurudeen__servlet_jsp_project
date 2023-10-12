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

</head>
<body> 
    <!-- new edit start -->
<!-- header old start -->
    <!-- start of header -->


    <!-- start of navbar one -->

    <nav class="nav-one" >

        <div class="logo-img">
            <a href="<%=request.getContextPath() %>/index.jsp"><img src="<%=request.getContextPath()%>/asset/images/homepage/specsee1.png" alt="logo"></a>
        </div>
            <form action="<%=request.getContextPath()%>/SearchServlet" method="get">

            <div class="nav-search">
                <input type="text" placeholder="Search for Designs" id="name" name="search">
                <i class="fa-solid fa-magnifying-glass"></i>
               
            </div>
 </form>
            <div class="nav-right-menu">                 
                <%
                String user = (String) session.getAttribute("loggedInEmail");
                boolean isLoginIn = user != null;
                if (isLoginIn != false) {
		%>
		                <a href="<%=request.getContextPath() %>/ProfileServlet"><p id="login"> Profile </p></a>
		
		<%
		}else{
		%>
		<a href="<%=request.getContextPath() %>/pages/order/login.jsp">   <p id="login"> Login </p> </a>
		
		<%
		}
		%>

		<%
		String loggedInEmail = (String) session.getAttribute("loggedInEmail");
		
		
		%>
                <a href="<%=request.getContextPath() %>/pages/admin/doctor_reg.jsp"><i class="fa-solid fa-user-doctor"></i></a>
                <a href="<%=request.getContextPath() %>/OrderHistoryServlet"><i class="fa-solid fa-truck-fast"></i></a>
                <a href="<%=request.getContextPath() %>/pages/order/add_to_cart.html"><i class="fa-solid fa-cart-shopping"></i></a>
               
                <p id= "count">0</p>
</div>


    </nav>

    <!-- end of navbar one -->

    <nav class="nav-two">

        <ul>
            <li><a href="<%=request.getContextPath() %>/pages/product/catagories.jsp">Categories</a></li>
            <li><a href="<%=request.getContextPath() %>/pages/product/style.jsp">Styles</a></li>
            <li><a href="<%=request.getContextPath() %>/pages/facilities/eye_tip.jsp">Eyetips</a></li>
            <li><a href="<%=request.getContextPath() %>/pages/facilities/home_eye_test.jsp">Home Eye Test</a></li>
            <li><a href="<%=request.getContextPath() %>/pages/facilities/doctor.jsp">Doctor Advice</a></li>
        </ul>

    </nav>


    <!-- start of navbar two -->

    <!-- end of navbar two -->


    <!-- end of header -->
