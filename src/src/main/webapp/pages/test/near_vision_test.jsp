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
    <link rel="stylesheet" href="../../asset/css/facilities/amd.css">
    <link rel="stylesheet" href="../../asset/css/facilities/home_eye_test.css">
    <link rel="stylesheet" href="../../asset/css/test/amd_test.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    <jsp:include page="/header.jsp"></jsp:include>
    <main>
        <div class="amd">
            <div class="near_vision">            
                <img src="../../asset/images/home_eye_test/bnr-vision.svg" alt="amd" >
            </div>
            <p id="amd">TEST YOUR NEAR VISION</p>
            <p>In nearsightedness (myopia), the point of focus is in front of the retina, making distant<br> objects appear blurry. Nearsightedness (myopia) is a common vision<br> condition in which near objects appear clear, but objects farther<br> away look blurry.</p>
        </div>
        <div class="test">
            <p class="h_three">Q1. The Circles On Which Side Appear Darker To You ?</p>
            <div class="choose">
                <img src="../../asset/images/home_eye_test/vision-tests-near.svg" alt="" style="margin-top: 100px;">
                <form>
                    <input type="radio"id="red" name="color" class="vision_test">
                    <label>Red</label>
                    <input type="radio"id="green" name="color" class="vision_test">
                    <label>Green</label>
                    <input type="radio"id="none" name="color" class="vision_test">
                    <label>None</label>
                </form>
            </div>
        </div>
        <a><button id="confirm" type="submit">Result</button></a>
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
    <script>
const vision_test = document.querySelectorAll(".vision_test")
        console.log(vision_test);
        
        const btn = document.getElementById("confirm")
        
        btn.addEventListener("click",function () {
            let vision_tester = []
            for(let i = 0; i < vision_test.length;i++){
                    if (vision_test[i].checked === true) {
                        vision_tester.push(vision_test[i].id);
                      
            
                    }    
            }
            // console.log(tester); 

            if(vision_tester[0] === "red"){
                window.location.href = "../../pages/facilities/result_red.jsp"

            }else if(vision_tester[0] === "green"){
                window.location.href = "../../pages/facilities/result_yellow.jsp"

            }
            else if(vision_tester[0] === "none"){
                window.location.href = "../../pages/facilities/result.jsp"

            }
          
            else if(vision_tester[0] === undefined) {
                console.log(alert("please select anyone "))
            }
            
        })
        
        
        
            </script>





    </script>
</body>
</html>