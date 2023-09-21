<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../asset/css/login.css">
</head>

<body>
    <!--login page-->
    <div class="login">

        <div class="glass">

            <div class="arrow">
                <a href="../../index.html"><img src="../../asset/images/homepage/arrow.png"
                        alt="arrow"></a>
            </div>
            <img src="../../asset/images/homepage/user.png" alt="user" class="user">
            <div class="signup">
                <p id="sign">Sign Up</p>
                <p id="welcome">WELCOME</p>
                <p id="h_five">Create an account to continue.</p>
                <form id="form" action="<%=request.getContextPath() %>/SignUpServlet" method="post">

                    <input type="text" name="username" placeholder="User name" id="name"
                        title="username is cannot contain space or only minimum 2" pattern=([A-zÀ-ž\s]){2,} required> 
                    <input type="email" name="email" placeholder="Enter Your Email" id="email"
                        pattern="^[a-zA-Z0-9][a-zA-Z0-9._%+-]*@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="please required formet" required>
                    <input type="password" name="password" placeholder="Enter Your Password" id="password" pattern="(?=.*)(?=.*[a-z])(?=.*[A-Z]).{8,20}" title="Password is cannot contain space or only minimum 8 maximum 20" required>
                    <a href="../order/login.html">
                        <p>Already have an account?</p>
                    </a>
                    <button type="submit" id="submitbtn" >Create</button>
                    
                </form>
            </div>
        </div>
    </div>
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