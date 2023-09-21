<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Specsee</title>
<link rel="stylesheet" href="../../asset/css/catagories.css">
<link rel="stylesheet" href="../../asset/css/style.css">
<link rel="stylesheet" href="/asset/css/facilities/nav.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>

	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<!--categories-->
		<div class="computer">
			<p>Computer Glasses</p>
			<a
				href="<%=request.getContextPath()%>/ProductServletUser?type=computer_glasses"><img
				src="../../asset/images/computer_glasses/cg_main.png" alt="cg"
				id="com_gls"></a>
		</div>
		<div class="sunpower">
			<div class="sun">
				<p>Sun Glasses</p>
				<a href="/specsee-webapp/ProductServletUser?type=sun_glasses"><img
					src="../../asset/images/sun_glasses/sunglas.jpg" alt="sg"
					id="sun_gls"></a>
			</div>
			<div class="power">
				<p>Power Glasses</p>
				<a href="/specsee-webapp/ProductServletUser?type=power_glasses"><img
					src="../../asset/images/power_glasses/sample1.jpg" alt="pg"
					id="pow_gls"></a>
			</div>
		</div>
		<div class="lens">
			<p>Contact Lense</p>
			<a href="/specsee-webapp/ProductServletUser?type=contact_lens"><img
				src="../../asset/images/contact_lenses/Stay-relaxed.jpg" alt="cl"
				id="cont_lens"></a>
		</div>
	</main>
	<!--footer start-->
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
				<p>
					Specsee<br>22,MGR road , perungudi. <br>specsee2020@gmail.com<br>9867543421
				</p>
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
	<!--footer end-->
	<script src="/asset/js/index.js">
		
	</script>

</body>
</html>