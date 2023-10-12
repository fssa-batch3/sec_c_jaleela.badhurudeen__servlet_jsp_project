<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../asset/css/doctor_reg.css">
</head>

<body>
    <header>
        <a href=""><img src="../../asset/images/homepage/new_specsee_logo.png" alt="logo" id="logo"></a>
        <div class="nav">
            <a href="../admin/doctor_login.html">
                <button id="login">Login</button> </p>
            </a>
            <a href="../admin/doctor_profile.html">
                <button id="profile"> Profile </button>
            </a>
        </div>
    </header>
    <main>
        <div class="main1">
            <div class="con">
                <h1>Care your <span style="color:rgb(0, 145, 255) ;">eyes</span><br> you <span
                        style="color:rgb(0, 145, 255) ;">get</span> <br>them <span
                        style="color:rgb(0, 145, 255) ;">again</span></h1>
                <a href="../admin/patient_his.html"><button>Your Appointments </button></a>
            </div>
            <div class="doc_imag">
                <img src="../../asset/images/docter_advice/doctor.jpg" alt="">
            </div>

        </div>

    </main>
    <div class="info">
        <div class="support">
<h1>Free Support</h1>
<h3>We are supporting people to help them</h3>

        </div>
        <div class="service">

<h1>Service</h1>
<h3>Our service for you people</h3>
        </div>
        <div class="care">
<h1>Online Care</h1>
<h3>We are caring for your eyes</h3>
        </div>


    </div>
    <script>
   let active = JSON.parse(localStorage.getItem('active_doctor'));
let profile = document.getElementById("profile")
   if(active === false || active == null){
    profile.style.display = "none";
   }


    </script>
</body>

</html>