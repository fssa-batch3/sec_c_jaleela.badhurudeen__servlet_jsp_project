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
    <link rel="stylesheet" href="../../asset/css/facilities/frame_size.css">
    <link rel="stylesheet" href="/asset/css/facilities/nav.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    <jsp:include page="/header.jsp"></jsp:include>
    <main>
        <div class="frame_head">
            <a href="../../pages/facilities/frame_size.jsp"><img src="../../asset/images/styles/face_type.png" alt=""></a>
            <a href="../../pages/facilities/priscription.jsp"><img src="../../asset/images/styles/priscription.png" alt=""></a>
            <a href="../../pages/facilities/frame_size_credit.jsp"><img src="../../asset/images/styles/credit.png" alt=""></a>
        </div>
        <div class="frame_details">
            <h2>How To Know Your Face Shape?</h2>
            <div class="face_type">
            <div class="face_observe">
                <img src="../../asset/images/styles/look.png" alt="">
                <h3>LOOK</h3>
                <p>Stand in front of a mirror. Make sure<br> you do not move your face. Tie or pull<br> your hair back for the right tracing</p>
            </div>
            <div class="face_observe">
                <img src="../../asset/images/styles/trace.png" alt="">
                <h3>TRACE</h3>
                <p>Slowly trace the outline of your reflection<br> with the dry-erase marker. Once done, you can take a transparent paper & re-trace on it.</p>
            </div>
            <div class="face_observe">
                <img src="../../asset/images/styles/observe.png" alt="">
                <h3>OBSERVE</h3>
                <p>Look closely and compare your tracing to the <br>face-shapes below. You can also take<br> help of a friend here.</p>
            </div>
            </div>
        </div>
        <div class="find_shape">
            <h2>Find Your Face Shape</h2>
            <div class="shape_img">
                <img src="../../asset/images/styles/round.png" alt="">
                <img src="../../asset/images/styles/square.png" alt="">
                <img src="../../asset/images/styles/oval.png" alt="">
                <img src="../../asset/images/styles/diamond.png" alt="">
                <img src="../../asset/images/styles/heart.png" alt="">
            </div>
        </div>
        <div class="frame">
            <h2>Suggestion Frames</h2>
             <div class="sugguestion">
                <h3>ROUND</h3>
                <img src="../../asset/images/styles/face_icon_cateye.png" alt="">
                <img src="../../asset/images/styles/face_icon_retro_sun.png" alt="">
                <img src="../../asset/images/styles/face_icon_rectangle.png" alt="">
             </div>
             <div class="sugguestion">
                <h3>SQUARE</h3>
                <img src="../../asset/images/styles/face_icon_round.png" alt="">
                <img src="../../asset/images/styles/face_icon_avaitor.png" alt="">
                <img src="../../asset/images/styles/face_icon_oval.png" alt="">
             </div>
             <div class="sugguestion">
                <h3>OVAL</h3>
                <img src="../../asset/images/styles/face_icon_retrosquare.png" alt="">
                <img src="../../asset/images/styles/face_icon_round.png" alt="">
                <img src="../../asset/images/styles/face_icon_rectangle.png" alt="">
             </div>
             <div class="sugguestion">
                <h3>DIAMOND</h3>
                <img src="../../asset/images/styles/face_icon_clubmaster.png" alt="">
                <img src="../../asset/images/styles/face_icon_round.png" alt="">
                <img src="../../asset/images/styles/face_icon_oval.png" alt="">
             </div>
             <div class="sugguestion">
                <h3>HEART</h3>
                <img src="../../asset/images/styles/face_icon_cateye.png" alt="">
                <img src="../../asset/images/styles/face_icon_retrosquare.png" alt="">
                <img src="../../asset/images/styles/face_icon_round.png" alt="">
            
             </div>
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