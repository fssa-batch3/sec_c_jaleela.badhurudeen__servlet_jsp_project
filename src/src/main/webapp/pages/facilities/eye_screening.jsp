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
    <link rel="stylesheet" href="../../asset/css/facilities/eye_screening.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    <jsp:include page="/header.jsp"></jsp:include>
       <div class="eye_screening">
            <p class="h_one">Eye Screening</p>
            <p class="h_three">Instructions</p>
            <div class="steps"> 
                <img src="../../asset/images/home_eye_test/glass.png.png" alt="">
                <p>In case you are using eyeglasses or contact lenses,<br> please take the test wearing your eyeglasses or contact lenses.
                </p>
            </div>
            <div class="steps">
                <img src="../../asset/images/home_eye_test/comb.svg" alt="">
                <p>Maintain a distance of 3 feet from the monitor. <br>If this distance is not maintained, we cannot derive the correct result.</p>
            </div>
            <div class="steps">
                <img src="../../asset/images/home_eye_test/monitor.png.png" alt="" id="monitor">
                <p style="margin-right: 150px;">The monitor should be parallel to your face.</p>
            </div>
            <div class="steps">
                <img src="../../asset/images/home_eye_test/chair.png" alt="">
                <p>Use an adjustable chair and maintain your eye level<br> at the same height as the monitor so that the letters are clearly visible.</p>
            </div>
            <div class="steps">
                <img src="../../asset/images/home_eye_test/arrow.png.png" alt="">
                <p>This test is best viewed on Screen Resolution of 1024 X 768.</p>
            </div>
            <a href="./eye_Screening_test.jsp"><button type="submit">Next</button></a>
        </div>
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