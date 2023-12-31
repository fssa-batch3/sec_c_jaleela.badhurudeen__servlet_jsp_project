<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>selct your lens type</title>
    <link rel="stylesheet" href="../../asset/css/facilities/lens.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
  
  <a href="../product/catagories.jsp">
     <i class="fa-solid fa-x"></i> 
    </a> 
        <h1>Select your lens type</h1>
    <div class="single">
        
        <img src="../../asset/images/power_glasses/single_vision.png">
        <div class="details">   
                 <h3>Single vision</h3>
                 <p>For distance or near vision(Thin ,anti-glare, blue cut options)</p>
        </div>
        <input name="lens_type" id="single" type="radio" class="lens_type">
</div>
        <div class="zero_power">
        
            <img src="../../asset/images/power_glasses/zero_power.png">
            <div class="details">   
                     <h3>Zero power</h3>
                     <p>Block 98% of harmful rays(anti-glare and blue cut options)</p>
            </div>
            <input name="lens_type" id="zero_power" type="radio" class="lens_type">
</div>
            <div class="frame_only">
        
                <img src="../../asset/images/power_glasses/frame_only.png">
                <div class="details">   
                         <h3>Frame only</h3>
                         <p>Buy frame only</p>
                </div>
                <input name="lens_type" id="frame_only" type="radio" class="lens_type">

    </div>
    <button id="btn">Continue</button>
   <script>
let specs = JSON.parse(localStorage.getItem("create_specs"));

const url = window.location.search;
const params = new URLSearchParams(url);
const search_value = params.get("id");

let values;
specs.find(function (e) {
  if (e["product_id"] == search_value) {
    return (values = e);
  } else {
    return (values = 0);
  }
});



let btn = document.getElementById("btn")
// btn.addEventListener("click", function(){
//     window.location.href = "../facilities/coting_lens.html?id=" + search_value
// })


let type = document.querySelectorAll(".lens_type")
console.log(type);

const lens_btn = document.getElementById("btn")

lens_btn.addEventListener("click",function () {
    let lens_type = []
    for(let i = 0; i < type.length;i++){
            if (type[i].checked === true) {
              lens_type.push(type[i].id);
              
    
            }    
    }
    console.log(search_value);

    if (lens_type[0] === "single" ) {
        window.location.href = "../../../pages/facilities/coting_lens.html?id=" + search_value
    }
    else if(lens_type[0] === "zero_power" ){
        window.location.href = "../../../pages/facilities/coting_lens.html?id=" + search_value
    } 
    else if(lens_type[0] === "frame_only" ){
        window.location.href = "../../../pages/order/shop_now.html?id=" + search_value
    } 
    else if(lens_type[0] === undefined && lens_type[1] === undefined && lens_type[1] === undefined) {
        console.log(alert("please select anyone"))
    }
    
})
   </script>

</body>
</html>