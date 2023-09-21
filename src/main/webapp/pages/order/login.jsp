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
               <a href="<%=request.getContextPath() %>/index.jsp" ><img src="../../asset/images/homepage/arrow.png" alt="arrow"></a>
            </div>
            <img src="../../asset/images/homepage/user.png" alt="user" class="user">
            <div class="signup">
                <p id="sign">Login</p>
                <p id="welcome">WELCOME</p>
                <form action="<%=request.getContextPath() %>/LoginServlet" method="post">
                    <input type="text" name="name" placeholder="User Name" id="name"title="username is cannot contain space or only minimum 2"  pattern="^[a-zA-Z ]{3,50}$" required>
                    <input type="email" name="email" placeholder="Enter Your Email" id="email"  pattern="^[a-zA-Z0-9][a-zA-Z0-9._%+-]*@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="please required form" required>
                    <input type="password" name="password" placeholder="Enter Your Password"  id="password"  pattern="(?=.*)(?=.*[a-z])(?=.*[A-Z]).{8,20}" title="Password is cannot contain space or only minimum 8 maximum 20" required >
                     <button type="submit">login</button>
                </form>
                
                <a href="../order/sign_up.jsp"><p>Create an account?</p></a>
                
               
                   
              
            </div>
        </div>
    </div>
   <!--  
    <script>
    function login(){

        const name = document.getElementById("name").value
        const email = document.getElementById("email").value
        const password = document.getElementById("password").value

        let get= JSON.parse(localStorage.getItem("get"));  
        
        
        // if (!get){
        //         alert("Login Failure");
        //         return;
        //     }

            let Success;
        
            get.find(el =>{

            // for (let i = 0; i < get.length; i++) {
                if ((el.user_name === name) && (el.email === email) && (el.password === password)) {
                    
                    let active_user = el;
                    console.log(active_user)
                    localStorage.setItem("active_user",JSON.stringify(active_user))
                    return Success = 1;
                }
                else{
                    return Success = 0;
                }
            }
            )
            if (Success == 1) {
                alert("Login Success");
                window.location.href="index.jsp"
            } else {
                alert("Login Failure");
            }

        
        }
    </script>
    -->
    
</body>
</html>