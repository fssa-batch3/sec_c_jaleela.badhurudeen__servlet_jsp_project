<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order history</title>
    <link rel="stylesheet" href="../../asset/css/order_history.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>
    <!-- <table>
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Date of Order</th>
                <th>Amount</th>
                <th>Product</th>
                <th>Status</th>
            </tr>

        </thead>
     -->
    <!-- <tbody>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </tbody> -->
<!-- </table> -->
<table>
    
    <thead>
        
      <tr>
        
        <th>Order ID</th>
        <th>Date of order</th>
        <th>Address</th>
        <th>Amount of product</th>
        <th> Odered Product </th>
        <th>Product status</th>
        <th><a href="<%=request.getContextPath() %>/index.jsp">
            <i class="fa-solid fa-x"></i>
        </a></th>
      </tr>
    </thead>
  </table>
  <div class="main_content">
    <!-- <div class="content">
      <h2>1</h2>
      <h3>23/04/2023</h3>
      <h4>2500</h4>
      <img id="flower" src="../../asset/IMG/anniversary bouquet/basket.jpg" />
    </div>
    <div class="content">
      <h2>1</h2>
      <h3>23/04/2023</h3>
      <h4>2500</h4>
      <img id="flower" src="../../asset/IMG/anniversary bouquet/basket.jpg" />
    </div> -->
  </div>
    <script src="../../asset/js/order_history.js"></script>
</body>

</html>