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
    <link rel="stylesheet" href="/asset/css/facilities/nav.css">
    <link rel="stylesheet" href="../../asset/css/facilities/amd.css">
    <link rel="stylesheet" href="../../asset/css/facilities/home_eye_test.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    <jsp:include page="/header.jsp"></jsp:include>
    <!-- end of header -->
    
    <main>
        <div class="amd">
            <div class="near_vision">            
                <img src="../../asset/images/home_eye_test/bnr-vision.svg" alt="amd" >
            </div>
            <p id="amd">TEST YOUR NEAR VISION</p>
            <p>In nearsightedness (myopia), the point of focus is in front of the retina, making distant<br> objects appear blurry. Nearsightedness (myopia) is a common vision<br> condition in which near objects appear clear, but objects farther<br> away look blurry.</p>
        </div>
        <div class="steps">
            <p class="h_three">Steps To Follow Before The Test</p>
            <p>1. Keep at least 15 inches of distance between yourself & the screen.</p>
            <img src="../../asset/images/home_eye_test/astigmatism-steps1.svg" alt="">
            <p>2. If you already have Bifocal / Progressive / Reading Glasses, put them on before you take the test.</p>
            <img src="../../asset/images/home_eye_test/vision-step2.svg" alt="">
            <p>3. Make sure to see through the bottom part of the lens if you have Bifocal/Progressive Eyeglasses. </p>
            <img src="../../asset/images/home_eye_test/vision-step3.svg" alt="">
        </div>
        <a href="../test/near_vision_test.jsp"><button type="submit">Let's Start</button></a>
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
    <!--footer end-->
    <script src="/asset/js/index.js"> </script>

</body>
</html>