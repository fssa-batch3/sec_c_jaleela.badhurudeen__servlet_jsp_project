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
    <link rel="stylesheet" href="../../asset/css/facilities/priscription.css">
    <link rel="stylesheet" href="../../asset/css/facilities/frame_size.css">
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
      <div class="banner">
        <img src="../../asset/images/styles/banner_pris.png" alt="">
      </div>
      <div class="read_correctly">
        <h2>WAYS TO READ YOUR EYE PRESCRIPTION CORRECTLY</h2>
        <h3>Let’s start with the basics</h3>
        <ul>
            <li>+ indicates long-sightedness or Hyperopia</li>
            <li>- indicates correct near-sightedness or Myopia</li>
            <li>RE/ O.D. stands for Oculus Dexter or Right Eye</li>
            <li>LE/ O.S. stands for Oculus Sinister or Left Eye</li>
            <li>PD is Pupillary Distance</li>
            <li>DV stands for Distance Vision</li>
            <li>NV stands for Near Vision</li>
        </ul>

      </div>
      <div class="other_terms">
        <h2>other terms in your eye prescription</h2>
        <div class="sphere">
            <div class="sphere_detail">
                <h3>Sphere (SPH)</h3>
                <ul>
                    <li>Corrects Myopia & Hyperopia</li>
                    <li>Ranges from 0.00 to +/- 20.00 D</li>
                    <li>Higher prescription means high degree myopia/hyperopia</li>
                </ul>
            </div>
            <div class="sphere_img">
                <img src="../../asset/images/styles/sphere.png" alt="">
            </div>
        </div>
        <div class="sphere">
            <div class="sphere_detail">
                <h3>Cylinder (CYL)</h3>
                <ul>
                    <li>Corrects Astigmatism</li>
                    <li>Ranges from 0.00 to +/- 4.00 D</li>
                    <li>Higher prescription means high degree astigmatism</li>
                </ul>
            </div>
            <div class="sphere_img">
                <img src="../../asset/images/styles/cylinder.png" alt="">
            </div>
        </div>
        <div class="sphere">
            <div class="sphere_detail">
                <h3>Axis</h3>
                <ul>
                    <li>Indicates degree/direction of astigmatism</li>
                    <li>Ranges from 0 to 180 Degrees</li>
                    <li>Always present along with Cylinder Value
                    </li>
                </ul>
            </div>
            <div class="sphere_img">
                <img src="../../asset/images/styles/axis.png" alt="">
            </div>
        </div>
        <div class="sphere">
            <div class="sphere_detail">
                <h3>Pupillary Distance (PD) </h3>
                <ul>
                    <li>Distance between the centers of two pupils</li>
                    <li>Ranges from 50 to 70 mm</li>
                    <li>Incorrect PD value can cause eye strain & visual distortion</li>
                </ul>
            </div>
            <div class="sphere_img">
                <img src="../../asset/images/styles/pd-dis.png" alt="">
            </div>
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