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
    <!-- end of header -->
    <main>
        <div class="amd">
            <img src="../../asset/images/home_eye_test/banner-amd.png" alt="amd">
            <p id="amd">AMD</p>
            <p>Age-related macular degeneration (AMD) is an eye disease that can blur your central vision.<br> It happens when aging causes damage to the macula — the part of <br>the eye that controls sharp, straight-ahead vision.</p>
        </div>
        <div class="test">
            <p class="h_three">Close Your Left Eye<br><br><br>Q. Focus your vision on the central dot in the below grid.<br> Do you see any distortion / curving of lines around the dot?</p>
            <div class="choose">
                <img src="../../asset/images/home_eye_test/amd-quiz (1).png" alt="">
                <form>
                    <input type="radio"id="Yes" name="color" class="amd_tester">
                    <label>Yes</label>
                    <input type="radio"id="No" name="color" class="amd_tester">
                    <label>No</label>
                </form>
            </div>
        </div>
        <div class="test">
            <p class="h_three">Close Your Right Eye<br><br><br>Q. Focus your vision on the central dot in the below grid.<br> Do you see any distortion / curving of lines around the dot?</p>
            <div class="choose">
                <img src="../../asset/images/home_eye_test/amd-quiz (1).png" alt="">
                <form id="form">
                    <input type="radio"id="Yes" name="color" class="amd_tester">
                    <label>Yes</label>
                    <input type="radio"id="No" name="color" class="amd_tester">
                    <label>No</label>
                </form>
            </div>
        </div>
        <a><button  id="confirm" type="submit">Result</button></a>
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
    <script type="text/javascript">
        const amd_test = document.querySelectorAll(".amd_tester")
        console.log(amd_test);
        
        const btn = document.getElementById("confirm")
        
        btn.addEventListener("click",function () {
            let amd_tester = []
            for(let i = 0; i < amd_test.length;i++){
                    if (amd_test[i].checked === true) {
                        amd_tester.push(amd_test[i].id);
                      
            
                    }    
            }
            // console.log(tester);
            if(amd_tester[0] == "Yes" && amd_tester[1] == "Yes"){
                window.location.href = "../../pages/facilities/result_red.jsp"
            } 
      		else if(amd_tester[0] == "No" && amd_tester[1] == "No"){
                window.location.href = "../../pages/facilities/result.jsp"
            } 
            else if (amd_tester[0] == "Yes" || amd_tester[1] == "Yes") {
                window.location.href = "../../pages/facilities/result_yellow.jsp"
            }
          
            
            else if(amd_tester[0] == undefined && amd_tester[1] == undefined) {
                console.log(alert("please select anyone "))
            }
            
        })
        
        
        
            </script>
</body>
</html>