<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>entur your eye power</title>
    <link rel="stylesheet" href="../../asset/css/facilities/eye_power.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>

    <a href="../facilities/coting_lens.html">
        <i class="fa-solid fa-x"></i>
    </a>
    <h1>Enter your eye power</h1>
    <form id="btn_form">

    <div class="left_eye">
        <h3>Put your left eye power</h3>
            <div class="dv">

                <label>D.V</label>
                <input type="tel" id="sph_lft" placeholder="D.V - SPH" pattern="[0-9]{1,6}"
                    title="PLease enter correct power" required>
                <input type="tel" id="cyl_lft" placeholder="D.V - CYL" pattern="[0-9]{1,6}"
                    title="PLease enter correct power" required>
                <input type="tel" id="axs_lft" placeholder="D.V - AXIS" pattern="[0-9]{1,6}"
                    title="PLease enter correct power" required>
                <input type="tel" id="vsn_lft" placeholder="D.V - VISION" pattern="[0-9]{1,6}"
                    title="PLease enter correct power" required>
            </div>
            <div class="add">
                <label>ADD</label>
                <input type="tel" id="add_lft" placeholder="ADD - SPH" >
                <input type="tel" id="add_lft" placeholder="ADD - CYL" >
                <input type="tel" id="add_lft" placeholder="ADD - AXIS" >
                <input type="tel" id="add_lft" placeholder="ADD - VISION" >
            </div>
    </div>
    <div class="right_eye">
        <h3>Put your right eye power</h3>
        <div class="dv">
            <label>D.V</label>
            <input type="tel" id="sph_rgt" placeholder="D.V - SPH" pattern="[0-9]{1,6}"
                title="PLease enter correct power" required>
            <input type="tel" id="cyl_rgt" placeholder="D.V - CYL" pattern="[0-9]{1,6}"
                title="PLease enter correct power" required>
            <input type="tel" id="axs_rgt" placeholder="D.V - AXIS" pattern="[0-9]{1,6}"
                title="PLease enter correct power" required>
            <input type="tel" id="vsn_rgt" placeholder="D.V - VISION" pattern="[0-9]{1,6}"
                title="PLease enter correct power" required>
        </div>
        <div class="add">
            <label>ADD</label>
            <input type="tel" id="add_lft" placeholder="ADD - SPH" >
            <input type="tel" id="add_lft" placeholder="ADD - CYL" >
            <input type="tel" id="add_lft" placeholder="ADD - AXIS" >
            <input type="tel" id="add_lft" placeholder="ADD - VISION">
        </div>
    </div>
    <button type="submit" id="btn_1">continue</button>
    </form>

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

        let btn = document.getElementById("btn_form")
        btn.addEventListener("submit", (v)=> {
            v.preventDefault();

            window.location.href = "../order/shop_now.html?id=" + search_value
        })
        
    </script>
</body>

</html>