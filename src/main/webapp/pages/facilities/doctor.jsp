<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../asset/css/facilities/doctor.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../../asset/css/style.css">

</head>

<body>
   


     <jsp:include page="/header.jsp"></jsp:include>
    <!-- flip code start -->


    <div class="content">

        <!-- <a class="card" >
            <div class="front" > 
                <img src="../../asset/images/docter_advice/raina.png">             
            </div>
            <div class="back">
                <div>
                    <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
                    <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
                    <button class="button">Book Appointment</button>
                </div>
            </div>
        </a>
          -->
    </div>

    <!-- footer -->
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
    <script>


        let doc_details = JSON.parse(localStorage.getItem("doctor_login"));


        for (let i = 0; i < doc_details.length; i++) {



            let a = document.createElement("a");
            a.setAttribute("class", "card search_box");
            document.querySelector(".content").append(a);

            let front_div = document.createElement("div");
            front_div.setAttribute("class", "front");
            a.append(front_div);


            let img = document.createElement("img");
            img.setAttribute("class", "doc_img");
            img.setAttribute("src", doc_details[i]["img_url"]);
            front_div.append(img);

            let back_div = document.createElement("div");
            back_div.setAttribute("class", "back");
            a.append(back_div);

            let div = document.createElement("div");
            back_div.append(div);


            let name = document.createElement("h2");
            name.setAttribute("class", "name");
            name.innerText = "Dr." + doc_details[i]["user_name"];
            div.append(name);

            let spl = document.createElement("p");
            spl.setAttribute("class", "spl");
            spl.innerText = "Speciality :  " + doc_details[i]["Speciality"];
            div.append(spl);

            let qual = document.createElement("p");
            qual.setAttribute("class", "qual");
            qual.innerText = "Qualifications : " + doc_details[i]["Qualifications"];
            div.append(qual);

            let exp = document.createElement("p");
            exp.setAttribute("class", "exp");
            exp.innerText = "Experience : " + doc_details[i]["Experience"];
            div.append(exp);
            let email = document.createElement("p");
            email.setAttribute("class", "email");
            email.innerText = doc_details[i]["email"];
            div.append(email);

            let address = document.createElement("p");
            address.setAttribute("class", "address");
            address.innerText = "Clinic address :  " + doc_details[i]["address"];
            div.append(address);

            let StartTime = document.createElement("p");
            StartTime.setAttribute("class", "StartTime");
            StartTime.innerText = "Visiting Time : From - " + doc_details[i]["StartTime"];
            div.append(StartTime);

            let EndTime = document.createElement("p");
            EndTime.setAttribute("class", "EndTime");
            EndTime.innerText = "To - " + doc_details[i]["EndTime"];
            div.append(EndTime);

            let cont = document.createElement("p");
            cont.setAttribute("class", "cont");
            cont.innerText = doc_details[i]["Contact"];
            div.append(cont);

            let ab = document.createElement("a");
            ab.setAttribute("href", "/pages/order/book_now.html?id=" + doc_details[i]["id"])
            div.append(ab);

            let btn = document.createElement("button");
            btn.setAttribute("class", "button");
            btn.setAttribute("onclick", "toggle()")
            btn.innerText = "Book Appointment";
            ab.append(btn);


        }


    </script>
    <script src="/main_doc.js"></script>
</body>

</html>