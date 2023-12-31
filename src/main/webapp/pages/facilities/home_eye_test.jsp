<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../asset/css/style.css">
    <link rel="stylesheet" href="../../asset/css/facilities/home_eye_test.css">
    <link rel="stylesheet" href="/asset/css/facilities/nav.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    <jsp:include page="/header.jsp"></jsp:include>
   <main>
        <div class="take_test">
            <img src="../../asset/images/home_eye_test/home_eye_test.png" alt="home_eye_test">
            <p>Do you know about <br>your <span>eye vision</span><br><br>Lets take a <span>vision test</span></p>
        </div>
        <div class="eye_screening">
            <p>Eye Screening</p>
            <a href="../facilities/eye_screening.jsp"><button type="submit">Let's Start</button></a> 
        </div>
        <div class="amd">
            <img src="../../asset/images/home_eye_test/banner-amd.png" alt="amd">
            <p id="amd">AMD</p>
            <p>Age-related macular degeneration (AMD) is an eye disease that can blur your central vision.<br> It happens when aging causes damage to the macula — the part of <br>the eye that controls sharp, straight-ahead vision.</p>
            <a href="../facilities/amd.jsp"><button type="submit" id="btn">Let's Start</button></a>
        </div>
        <div class="amd">
           <div class="banner"><img src="../../asset/images/home_eye_test/banner-astigmatism.svg" alt="amd"></div> 
            <p id="amd">ASTIGMATISM TEST</p>
            <p>Astigmatism is an imperfection in the curvature of your eye's cornea or lens.<br> With astigmatism your vision is blurry at all distances.</p>
           <a href="../facilities/astigmatism.jsp"><button type="submit" id="btn">Let's Start</button></a>
        </div>
        <div class="amd">
            <div class="near_vision">            
                <img src="../../asset/images/home_eye_test/bnr-vision.svg" alt="amd" >
            </div>
            <p id="amd">TEST YOUR NEAR VISION</p>
            <p>In nearsightedness (myopia), the point of focus is in front of the retina, making distant<br> objects appear blurry. Nearsightedness (myopia) is a common vision<br> condition in which near objects appear clear, but objects farther<br> away look blurry.</p>
            <a href="../facilities/near_vision.jsp"><button type="submit" id="btn">Let's Start</button></a>
        </div>
        <div class="amd">
            <div class="book_now">            
                <img src="../../asset/images/home_eye_test/Home-eye-test_1.png" alt="amd" >
                <a href="../order/book_now.jsp"><button type="submit" id="btn">Book Now</button></a>
            </div>
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
    <script src="/asset/js/index.js"> </script>

</body>
</html>