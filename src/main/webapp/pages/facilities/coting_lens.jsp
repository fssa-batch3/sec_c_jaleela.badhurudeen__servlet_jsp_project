<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../asset/css/facilities/lens_coting.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Lens features</title>
</head>
<body>
    <a href="../facilities/lens.jsp">
        <i class="fa-solid fa-x"></i> 
       </a> 
    <h1>SELECT YOUR LENSES</h1>
    <div class="lens_coting">
        <div class="lens_feature">
            <img src="../../asset/images/power_glasses/anti-scratch-coating.svg">
            <h3>Anti Scratch Coating</h3>
            <input id="scratch" name="feat_lens" type="checkbox" checked>
        </div>
        <div class="lens_feature">
            <img src="../../asset/images/power_glasses/both-side-anti-glare-coating.svg">
            <h3>Both Side Anti Glare Coating</h3>
            <input id="glare" name="feat_lens" type="checkbox" checked>
        </div>
        <div class="lens_feature">
            <img src="../../asset/images/power_glasses/uv-protection.svg">
            <h3>UV Protection</h3>
            <input id="uv-protection" name="feat_lens" type="checkbox" checked>
        </div>
        <div class="lens_feature">
            <img src="../../asset/images/power_glasses/both-side-anti-reflective-coating.svg">
            <h3>Both Side Anti Reflective Coating</h3>
            <input id="reflextion" name="feat_lens" type="checkbox">
        </div>
        
        <div class="lens_feature">
            <img src="../../asset/images/power_glasses/water--dust-repellent.svg">
            <h3>Water & Dust Repellent</h3>
            <input id="Dust" name="feat_lens" type="checkbox">
        </div>
        <h4>if you select more than 3 features, you will pay Rs.1000/- extra.</h4>
      <button id="btn">Continue</button> 
    </div>
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
btn.addEventListener("click", function(){
    window.location.href = "../facilities/eye_power.html?id=" + search_value
})
           </script>
</body>
</html>