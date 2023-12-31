<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.fssa.specsee.modelobjects.Product"%>
<%@page import="com.fssa.specsee.daolayer.ProductDAO"%>
<%@page import="com.fssa.specsee.modelobjects.User"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/asset/css/shop_now.css">
</head>

<body>
 <jsp:include page="header.jsp"></jsp:include>
    <main>
    <%
	User user = (User) session.getAttribute("user");
	System.out.print(user);
	int productId =Integer.parseInt(request.getParameter("id"));
	Product product = ProductDAO.getProductById(productId);
	
	String userName = "";
	String email = "";
	String address = "";
	String phoneNumber = "";
	if (user != null) {
		userName = user.getUserName();
		email = user.getEmailId();
		address = user.getUserAddress();
		phoneNumber = user.getPhoneNumber();
	}
	%>
        <form id="form" action="ShopNowServlet?id=<%=productId%>" method="post">
            <div class="container">
                <!--shipping address-->
                <h1>Shipping Address</h1>
                <div class="label">
                    <div class="input">
                        <label for="name">Name</label>
                        <input type="text" name="name" id="username" required
                            title="username is cannot contain space or only minimum 2"  value="<%=userName%>" pattern="^[a-zA-Z]{2,15}$">
                    </div>
                    <div class="input">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email"
                            pattern="^[a-zA-Z0-9][a-zA-Z0-9._%+-]*@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                            title="please required email formet use '@'" required  value="<%=email%>">
                    </div>
                    <div class="input">
                        <label for="address">Address</label>
                        <input type="text" name="address" id="address" value="<%=address%>" required pattern="^[^ .]+( [^ .]+)*$" title="please avoid spaces and dots ,use '/' and ','">
                    </div>
                    <div class="input">
                        <label for="phone">Phone</label>
                        <input type="tel" name="phone" id="phone" required
                        pattern="[0-9]{10}" value="<%=phoneNumber%>" title="PLease enter 10 digit number"
                           >
                    </div>


                </div>
                <!--shipping address end-->
                <!--payment start-->
                <div class="payment">
                    <h2>Payment</h2>
                    <div class="payment_img">
               
                        <input type="radio" name="payment" id="cash_on_delivery" class="payment_option"
                            value="cash_delivery" required>
                        <label for="cash">Cash On Delivery</label>

                    </div>
                    <!--payment end-->
                </div>

            </div>
            <button type="submit" id="btn">Place Order</button>
        </form>
    </main>
    <!--  
    <script>

        // let btn = document.getElementById("btn")
        // btn.addEventListener("click", function(){
        //     window.location.href = "../order/placeorder.html?id=" + search_value
        // })

        let profile = JSON.parse(localStorage.getItem('get'));
        let active_user = JSON.parse(localStorage.getItem('active_user'));
        // console.log(profile);
        for (let i = 0; i < profile.length; i++) {
            document.getElementById("username").value = profile[i]["user_name"];
            document.getElementById("email").value = profile[i]["email"];
            document.getElementById("address").value = profile[i]["address"];
            document.getElementById("phone").value = profile[i]["phone"];
            document.getElementById("country_name").value = profile[i]["Country"];
            document.getElementById("pincode").value = profile[i]["Pincode"];

        }

        let newdate;
        let dateObj = new Date();
        let month = dateObj.getUTCMonth() + 1; //months from 1-12
        let day = dateObj.getUTCDate();
        let year = dateObj.getUTCFullYear();
        newdate = day + "/" + month + "/" + year;
        // console.log(newdate);
        // orders id code
        let order_id = Date.now();
        // console.log(order_id);
        let specs = JSON.parse(localStorage.getItem("create_specs"));


        const url = window.location.search;
        // console.log(url);
        const params = new URLSearchParams(url);
        // console.log(params);
        const search_value = params.get("id");
        // console.log(search_value);
        let result;
        let product;

        let specs_find = specs.find(function (e) {
            if (e["product_id"] == search_value) {
                product = e;
                return (result = e);
            } else {
                return (result = 0);
            }
        });

        // console.log(product);



         let card_details = document.getElementById("card_details");
                let card_num = document.getElementById("card_num");
        let exp1 = document.getElementById("exp");
        let cvc1 = document.getElementById("cvc");

        console.log(card_details);
        let pay_details = document.querySelectorAll(".payment_option");
        let radio_btn = document.querySelectorAll("input")

        pay_details[0].addEventListener("click", function () {
            if (pay_details[0].checked === true) {
                card_details.style.display = "block";
                
                card_num.required = true;
                exp1.required = true;
                cvc1.required = true;
                

            }
        })
        pay_details[1].addEventListener("click", function () {
            if (pay_details[1].checked === true) {
                card_details.style.display = "none";

                
                card_num.required = false;
                exp1.required = false;
                cvc1.required = false;
             }
        })

      let twocheck=  document.querySelector(".payment_option");
      if(!twocheck.checked){
     twocheck.required=true
      }

        let form = document.getElementById("form");
        form.addEventListener("submit", function (e) {
            e.preventDefault();
            let payment_option = document.querySelector(".payment_option:checked").value;


            let user = JSON.parse(localStorage.getItem("active_user"));
            let pro = JSON.parse(localStorage.getItem('get'));
            let address = document.getElementById("address");
            let card_no = document.getElementById("card_num");
            let exp = document.getElementById("exp");
            let cvc = document.getElementById("cvc");
            let order = JSON.parse(localStorage.getItem("order")) ?? [];
            if (search_value == Number(search_value)) {

                let obj = {};


                obj["image"] = product["image"];
                obj["rupees"] = product["rupees"];
                obj["desc"] = product["desc"];
                obj["product_id"] = product["product_id"];
                obj["title"] = product["title"];
                obj["order_id"] = order_id;
                obj["order_date"] = newdate;
                obj["payment_option"] = payment_option;
                obj["email"] = user["email"];
                obj["address"] = address.value;
                obj["card_no"] = card_no.value;
                obj["exp"] = exp.value;
                obj["cvc"] = cvc.value;

                order.push(obj);
                localStorage.setItem("order", JSON.stringify(order));
                window.location.href = "../../pages/order/placeorder.html";
            }
            else {
                let cartsample = JSON.parse(localStorage.getItem("Cart"));
                let user = JSON.parse(localStorage.getItem("active_user"));

                cartsample.find((e) => {
                    if (e.email == user.email) {

                        const obj = {}

                        obj["image"] = e["image"];
                        obj["rupees"] = e["rupees"];
                        obj["desc"] = e["desc"];
                        obj["product_id"] = e["product_id"];
                        obj["title"] = e["title"];
                        obj["order_id"] = order_id;
                        obj["order_date"] = newdate;
                        obj["payment_option"] = payment_option;
                        obj["email"] = user["email"];
                        obj["address"] = address.value;
                        obj["card_no"] = card_no.value;
                        obj["exp"] = exp.value;
                        obj["cvc"] = cvc.value;

                        order.push(obj);
                        localStorage.setItem("order", JSON.stringify(order));
                        window.location.href = "../../pages/order/placeorder.html";
                    }
                })
                const Cartitem = JSON.parse(localStorage.getItem("Cart"));
                const useract = JSON.parse(localStorage.getItem("active_user"));
                //this filter for delete the cart which buy by user
                let cart_obj = Cartitem.filter(function (obj) {
                    if (obj["email"] === useract["email"]) {
                        return false;
                    } else {
                        return true;
                    }
                });
                localStorage.setItem("Cart", JSON.stringify(cart_obj));




            }
        });

        // let card_details = document.getElementById("card_details");
        //         let card_num = document.getElementById("card_num");
        // let exp1 = document.getElementById("exp");
        // let cvc1 = document.getElementById("cvc");

        // console.log(card_details);
        // let pay_details = document.querySelectorAll(".payment_option");
        // let radio_btn = document.querySelectorAll("input")

        // pay_details[0].addEventListener("click", function () {
        //     if (pay_details[0].checked === true) {
        //         card_details.style.display = "block";
                
        //         card_num.required = true;
        //         exp1.required = true;
        //         cvc1.required = true;
                

        //     }
        // })
        // pay_details[1].addEventListener("click", function () {
        //     if (pay_details[1].checked === true) {
        //         card_details.style.display = "none";
 
        //         card_num.required = false;
        //         exp1.required = false;
        //         cvc1.required = false;
        //                     }
        // })



-->

    </script>
</body>

</html>