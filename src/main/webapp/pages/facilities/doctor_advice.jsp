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
    <link rel="stylesheet" href="../../asset/css/facilities/docter_advice.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
   
</head>

<body>
    <jsp:include page="/header.jsp"></jsp:include>
    <main>

        <div class="book_doctors">

            <div class="doc_list">

                <!-- <div class="front"></div>
                <div class="back">
                    <div class="doc_details">
                        <h2>Anand Sebastian</h2>
                        <h2>10 yrs exp </h2>
                        <h2>ortho</h2>
                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quae consectetur illum
                             excepturi aspernatur et id natus nulla assumenda deserunt mollitia 
                             perspiciatis minus, dignissimos magnam. Molestiae, id? Iusto molestiae ut cupiditate?</p>
                    </div>
                </div> -->
                <div class="doctor">
                    <img src="../../asset/images/docter_advice/anand_sebastian.png" alt="">
                    <h3 id="user_name">Anand Sebastian</h3>
                    <a href="../order/book_now.html"><button type="submit">Book Appointment</button></a>
                </div>

                <div class="doctor">
                    <img src="../../asset/images/docter_advice/Dr.-Haripriya_PP_19-1.jpg" alt="">
                    <h3>Dr.Haripriya</h3>
                    <a href="../order/book_now.html"><button type="submit">Book Appointment</button></a>
                </div>
                <div class="doctor">
                    <img src="../../asset/images/docter_advice/Dr.-Aditya-Ghorpade.jpg" alt="">
                    <h3>Dr.Aditya</h3>
                    <a href="../order/book_now.html"><button type="submit">Book Appointment</button></a>
                </div>
            </div>
            <div class="doc_list">
                <div class="doctor">
                    <img src="../../asset/images/docter_advice/Dr.-Aarathy.png" alt="">
                    <h3>Dr.Arathy</h3>
                    <a href="../order/book_now.html"><button type="submit">Book Appointment</button></a>
                </div>

                <div class="doctor">
                    <img src="../../asset/images/docter_advice/Dr.-Sunitha.png" alt="">
                    <h3>Dr.Sunitha</h3>
                    <a href="../order/book_now.html"><button type="submit">Book Appointment</button></a>
                </div>
                <div class="doctor">
                    <img src="../../asset/images/docter_advice/Dr.-Vidhya.png" alt="">
                    <h3>Dr.Vidhya</h3>
                    <a href="../order/book_now.html"><button type="submit">Book Appointment</button></a>
                </div>
            </div>
            <div class="doc_list">
                <div class="doctor">
                    <img src="../../asset/images/docter_advice/Dr.Ananth.png" alt="">
                    <h3>Dr.Ananth</h3>
                    <a href="../order/book_now.html"><button type="submit">Book Appointment</button></a>
                </div>
                <div class="doctor">
                    <img src="../../asset/images/docter_advice/Dr.Rohith.png" alt="">
                    <h3>Dr.Rohith</h3>
                    <a href="../order/book_now.html"><button type="submit">Book Appointment</button></a>
                </div>
                <div class="doctor">
                    <img src="../../asset/images/docter_advice/raina.png" alt="">
                    <h3>Dr.Raina</h3>
                    <a href="../order/book_now.html"><button type="submit">Book Appointment</button></a>
                </div>
            </div>
            <div class="doc_list">
                <div class="doctor">
                    <img src="../../asset/images/docter_advice/meenatchi.png" alt="">
                    <h3>Dr.Meenatchi</h3>
                    <a href="../order/book_now.html"><button type="submit">Book Appointment</button></a>
                </div>
                <div class="doctor">
                    <img src="../../asset/images/docter_advice/rathinam.png" alt="">
                    <h3>Dr.Rathinam</h3>
                    <a href="../order/book_now.html"><button type="submit">Book Appointment</button></a>
                </div>
                <div class="doctor">
                    <img src="../../asset/images/docter_advice/renu.png" alt="">
                    <h3>Dr.Renu</h3>
                    <a href="../order/book_now.html"><button type="submit" id="book">Book Appointment</button></a>
                </div>
            </div>
        </div>
    </main>
    <!--footer starting-->
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
                <h3>Contact Us</h3>
                <p>Specsee<br>22,MGR road , perungudi. <br>specsee2020@gmail.com<br>9867543421</p>
            </div>
            <div class="thanks">
                <h3>Thanks to</h3>
                <p>Unsplash</p>
                <p>Freepik</p>
                <p>Pexels</p>
            </div>
        </div>
        <div class="copy">
            <p>Copyright &copy; 2022 collections. All Rights reserved</p>
        </div>
    </footer>
    <!--footer ending-->

    <script>

        // const user_name = localStorage.getItem("user_name");

        // console.log(user_name);

        // document.getElementById("user_name").innerText = user_name;

      

    </script>
</body>

</html>