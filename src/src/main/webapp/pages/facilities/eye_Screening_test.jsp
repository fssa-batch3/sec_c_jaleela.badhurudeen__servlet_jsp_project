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
    <link rel="stylesheet" href="../../asset/css/facilities/eye_screening_test.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
   <jsp:include page="/header.jsp"></jsp:include>
   <div class="left_eye">
        <p class="h_three">Cover your Left Eye</p>
        <p>Please take this test in a dark room</p>
        <div class="choose">
            <img src="../../asset/images/home_eye_test/test.png" alt="">
            <form>
                <input type="radio"id="red" class="tester" name="color" required>
                <label>Red</label>
                <input type="radio"id="green" class="tester" name="color" required>
                <label>Green</label>
                <input type="radio"id="both"  class="tester" name="color" required> 
                <label>Both</label>
            </form>
        </div>
    </div>
    <div class="left_eye">
        <p class="h_three">Cover your Right Eye</p>
        <p>Please take this test in a dark room</p>
        <div class="choose">
            <img src="../../asset/images/home_eye_test/test.png" alt="">
            <form>
                <input type="radio" id="red" class="tester" name="color" required>
                <label>Red</label>
                <input type="radio" id="green" class="tester" name="color" required>
                <label>Green</label>
                <input type="radio" id="both" class="tester" name="color" required>
                <label>Both</label>
            </form>
        </div>
    </div>
    <a><button id="confirm" type="submit">Confirm</button></a>
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
    <script>
    const test = document.querySelectorAll(".tester")
    console.log(test);

    const btn = document.getElementById("confirm")

    btn.addEventListener("click",function () {
        let tester = []
        for(let i = 0; i < test.length;i++){
                if (test[i].checked === true) {
                   tester.push(test[i].id);
                  
        
                }    
        }
        // console.log(tester);

        if (tester[0] === "red" || tester[1] === "red" || tester[0] === "green" || tester[1] === "green") {
            window.location.href = "../../pages/facilities/your_vision.jsp"
        }
        else if(tester[0] === "both" && tester[1] === "both"){
            window.location.href = "../../pages/facilities/your_vision_2.jsp"
        } 
        else if(tester[0] === undefined && tester[1] === undefined) {
            console.log(alert("please select anyone"))
        }
        
    })</script>
    
    
    <script src="../../asset/js/test.js" ></script>
    <script src="/asset/js/index.js"> </script>

</body>
</html>