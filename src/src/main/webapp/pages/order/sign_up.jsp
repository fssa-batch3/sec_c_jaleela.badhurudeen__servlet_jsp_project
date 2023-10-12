<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/asset/css/login.css">
    
 

    <script src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js"> </script>
</head>

<body>
<!-- Notify Alert -->
			<%
			String success = (String) request.getAttribute("success");
			String error = (String) request.getAttribute("error");
			%>


			<%
			if (error != null) {
			%>
			<script>
				    let error = "<%=error%>";
				    Notify.error(error);
				</script>
			<%
			}
			%>

			<%
			if (success != null) {
			%>
			<script>
			    	let success = "<%=success%>";
				Notify.success(success);
			</script>
			<%
			}
			%>
    <!--login page-->
    <div class="login">

        <div class="glass">

            <div class="arrow">
                <a href="../../index.html"><img src="<%=request.getContextPath() %>/asset/images/homepage/arrow.png"
                        alt="arrow"></a>
            </div>
            <img src="<%=request.getContextPath() %>/asset/images/homepage/user.png" alt="user" class="user">
            <div class="signup">
                <p id="sign">Sign Up</p>
                <p id="welcome">WELCOME</p>
                <p id="h_five">Create an account to continue.</p>
                <form id="form" action="<%=request.getContextPath() %>/SignUpServlet" method="post" onsubmit="return validateForm()">

                    <input type="text" name="username" placeholder="User name" id="name"
                        title="username is cannot contain space or only minimum 2" pattern="^[a-zA-Z]{2,15}$" required> 
                    <input type="email" name="email" placeholder="Enter Your Email" id="email"
                        pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$" title="please required formet" required>
                    <input type="password" name="password" placeholder="Enter Your Password" id="password" pattern="^.*(?=.{8,})(?=..*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$" title="Password is cannot contain space or only minimum 8 maximum 20" required>
                    <input type="password" name="conformpassword" placeholder="Confirm Your Password" id="ConfirmPwd" pattern="^.*(?=.{8,})(?=..*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$" title="Password is cannot contain space or only minimum 8 maximum 20" required>
                    <a href="../order/login.html">
                        <p>Already have an account?</p>
                    </a>
                    <button type="submit" id="submitbtn" >Create</button>
                    
                </form>
            </div>
        </div>
    </div>
    <script>
		function validateForm() {
			var password1 = document.getElementById("password").value;
			var password2 = document.getElementById("ConfirmPwd").value;
			if (password1 !== password2) {
				alert("Passwords do not match. Please check and try again.");
				return false;
			}
			return true;
		}
	</script>
    <!--  
    <script>


const submitbtn=document.getElementById("form");
submitbtn.addEventListener("submit",(e)=>{

    e.preventDefault()
    create()
})
        function create() {

           
            const name = document.getElementById("name").value.trim();
            const user_email = document.getElementById("email").value.trim();
            const password = document.getElementById("password").value.trim();

            let user_data = {
                "user_name": name,
                "password": password,
                "email": user_email,
                "status": true,
                "address": "",
                "phone": "",
                "Pincode": "",
                "Country": "",
                "Gender":""
            }

            let get = JSON.parse(localStorage.getItem("get")) ?? [];

            if ("user_name" == " " && "password" == " " && "email" == " ") {
                alert("please fill all details")
            }

            // get.push(user_data);
            // 
            // localStorage.setItem("get", JSON.stringify(get));



            let success = true;

            if (get !== null)

                for (let i = 0; i < get.length; i++) {

                    if (get[i].email == user_email) {
                        success = false;
                        break;

                    }
                }
            if (success) {
                get.push(user_data);
                localStorage.setItem("get", JSON.stringify(get));
                alert("account create successfuly");

                window.location.href = "../order/login.html"

            }
             else {
                alert(" Already you have an account")
            }

        }




    </script>
    -->
</body>

</html>