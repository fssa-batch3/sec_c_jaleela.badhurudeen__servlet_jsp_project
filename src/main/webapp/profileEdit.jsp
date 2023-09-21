<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.specsee.modelobjects.User"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="../../asset/css/style.css">
<link rel="stylesheet" href="../../asset/css/profile.css">



</head>

<body>

	<!-- <img src="../../asset/images/homepage/wave-haikei.png"> -->
	<div class="profile_side">

		<h2>Upload Your Profile</h2>
		<br> <img src="../../asset/images/homepage/girl3.jpg" alt=""
			id=""><br> <input type="file" name="file" id="file">
		<!--  
        <div class="btn_prfl">
            <a href="../order/profile_edit.html"> <button type="button">Edit</button> </a>
            <button type="button" id="logout" style="margin-left: 10px; margin-right: 10px;">Logout</button>
            <a href="/index.jsp"><button type="button">Back to Home</button></a>
        </div>
        -->
	</div>
	<div class="profile">

		<h1>profile</h1>
		<div class="profile_img">

			<img src="../../asset/images/homepage/profile.png" alt="profile_img">
			<!-- <a href="../order/profile_edit.html"> <button type="button" onclick="edit()">Edit Profile</button> </a> -->
		</div>
		<%
		User userDetails = (User) request.getSession().getAttribute("userDetails");
		%>
		<form action="<%=request.getContextPath()%>/UpdateProfileServlet" method="post">

			<div class="div_1">
				<label for="name">Name</label> <br> <input type="text"
					name="name" id="name"
					title="username is cannot contain space or only minimum 2"
					value="<%=userDetails.getUserName()%>" required> <br>
				<br> <label for="email">Email</label> <br> <input
					type="email" name="email" id="email"
					pattern="^[a-zA-Z0-9][a-zA-Z0-9._%+-]*@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
					title="please required form" required
					value="<%=userDetails.getEmailId()%>"> <br>
				<br> <label for="address">Address</label> <br> <input
					type="text" name="address" id="address"
					title="username is cannot contain space "
					placeholder="Enter your address" required> <br>
				<br> <label for="phone">Phone</label><br> <input
					type="number" name="phonenumber" id="phone"
					title="phone number is cannot contain space "
					placeholder="Enter your phone number" required><br>
				<br>

			</div>
			<!-- <div class="gender">
                <input type="radio" name="gender" id="male" value="male">
                <label>Male</label>
                <input type="radio" name="gender" id="female" value="female">
                <label>Female</label>
                <input type="radio" name="gender" id="trans" value="transgender">
                <label>Transgender</label>
            </div> -->
           
					<button type ="submit">save</button>
				
				<a href="<%=request.getContextPath()%>/LogoutServlet"><button
						type="button" id="logout">Logout</button></a> <a
					href="<%=request.getContextPath()%>/index.jsp"><div>Back
						to Home</div></a>
            </form>
			<div class="btn_prfl">
				
			</div>

		
	</div>
    <script>
    document.getElementById("save").addEventListener("click",e=>{
    	//e.preventDefault();
    	
    })
    </script>
	<!--  
    <script>
    

        let profile = JSON.parse(localStorage.getItem('get'));
        const user_logged1 = JSON.parse(localStorage.getItem("active_user"));
        console.log(profile);
        for (let i = 0; i < profile.length; i++) {

            if(user_logged1["email"]===profile[i]["email"])
{
 
            document.getElementById("name").value = profile[i]["user_name"];
            document.getElementById("email").value = profile[i]["email"];
            document.getElementById("address").value = profile[i]["address"];
            document.getElementById("phone").value = profile[i]["phone"];
            document.getElementById("Pincode").value = profile[i]["Pincode"];
            document.getElementById("Country").value = profile[i]["Country"];
            document.getElementById("gender").value = profile[i]["Gender"];
}

        }

   
        const logout1 = document.getElementById("logout")
        logout1.addEventListener("click", (e) => {
         
            let deletefalse = delete user_logged1
            localStorage.setItem("active_user", deletefalse)
            window.location.href ="../../index.html";
        })

        // function delete_profile() {
        //     let users = JSON.parse(localStorage.getItem("get"));
        //     // confirm("Are you sure want to delete your account?")
        //     for (let i = 0; i < users.length; i++) {
        //         if (document.getElementById("email").value == users[i]["email"]) {
        //             users.splice(i, 1)
        //             localStorage.setItem("get", JSON.stringify(users));
        //         }
        //     }
        // }



    </script>
    -->
</body>

</html>