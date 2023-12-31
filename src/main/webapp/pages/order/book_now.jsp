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
    <link rel="stylesheet" href="../../asset/css/test/book_now.css">
    <link rel="stylesheet" href="/asset/css/facilities/nav.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://smtpjs.com/v3/smtp.js">
    </script>
</head>

<body>
   
   <jsp:include page="/header.jsp"></jsp:include>
    <main>
        <h1>ENTER YOUR DETAILS</h1>
        <form id="form">
            <label>Name</label>
            <input type="text" name="name" id="username" required
                title="username is cannot contain space or only minimum 3" pattern="[a-zA-Z]{3,50}">
            <label>Email</label>
            <input type="email" name="email" id="email" required
                pattern="^[a-zA-Z0-9][a-zA-Z0-9._%+-]*@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="please required formet">
            <label>Phone No</label>
            <input type="number" name="phone_number" id="number" required>
            <label>City</label>
            <input type="text" name="city" id="city" required title="city is cannot contain space or only minimum 3"
                pattern="[a-zA-Z]{3,50}">
            <label>Pincode</label>
            <input type="number" name="number" id="pincode" required>
            <label>Address</label>
            <input type="text" name="address" id="address" required title="please enter valid address"
                >
        
                <button type="submit" id="book">Book Now</button>
            </form>
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
        const url = window.location.search;
        const params = new URLSearchParams(url);
        const search_value = params.get("id");

        let active_user = JSON.parse(localStorage.getItem("active_user"))
        let user = active_user["email"];

        let book = document.getElementById("book");

        // book.addEventListener("click", e => {



        // })



        let profile = JSON.parse(localStorage.getItem('active_user'));

        document.getElementById("username").value = profile["user_name"];
        document.getElementById("email").value = profile["email"];
        document.getElementById("address").value = profile["address"];
        document.getElementById("number").value = profile["phone"];
        document.getElementById("pincode").value = profile["Pincode"];


        const submitbtn = document.getElementById("form");
        submitbtn.addEventListener("submit", (e) => {

            e.preventDefault()
            submit()
        })
        function submit() {

            const name = document.getElementById("username").value.trim();
            const user_email = document.getElementById("email").value.trim();
            const phone_number = document.getElementById("number").value.trim();
            const address = document.getElementById("address").value.trim();
            const pincode = document.getElementById("pincode").value.trim();
            let appointment = JSON.parse(localStorage.getItem("appointment")) ?? [];

            appointment.push({
                "id" : search_value,
                "username": name,
                "phone_number": phone_number,
                "email": user_email,
                "address": address,
                "Pincode": pincode,
                
               
            }) 

            localStorage.setItem("appointment",JSON.stringify(appointment))

            Email.send({
                Host: "smtp.elasticemail.com",
                Username: "jaleelasheik123@gmail.com",
                Password: "24CE35FA7F24ABF2C0EA32834DFEEFEC0BAA",
                To: user,
                From: "jaleelasheik123@gmail.com",
                Subject: "Appointment Booked",
                Body: "Your appointment successfully booked.Please keep yourself ready in the correct time.Thank You"
            }).then(
                message => alert("Your Appointment Booked")
            );

          
        }

 let specs = JSON.parse(localStorage.getItem("doctor_login"));  

    </script>
    <script src="/asset/js/index.js"> </script>


</body>

</html>