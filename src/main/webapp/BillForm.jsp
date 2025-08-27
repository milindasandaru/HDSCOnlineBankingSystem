<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BillPayment Form</title>
    <link rel="stylesheet" href="./css/BillForm.css">
</head>

<body>
    <section class="container">
        <header>Bill Payment Form</header>
        
        		<%
                	String error = (String) request.getAttribute("errorMessage");
                    if (error != null) {
                %>
                    <p style="color:red;"><%= error %></p>
                <%
                    }
                %>
        
        <form class="form" action="BillForm" method="post">
            <div class="input-box">
                <label>Bill Type :</label>
                <input type="text" placeholder="E.g., 'Electricity', 'Water', 'Internet', etc..." name="billType" required>
            </div>

            <div class="input-box">
                <label>Bill Number :</label>
                <input type="text" placeholder="identification number of the bill..." name="billNumber" required>
            </div>

            <div class="column">
                <div class="input-box">
                    <label>Payment Amount :</label>
                    <input type="text" placeholder=" Enter bill amount..." name="paymentAmount" required>
                </div>

                <div class="input-box">
                    <label>Payment Date</label>
                    <input type="date" placeholder="#" name="paymentDate" required>
                </div>
            </div>

            <button>Submit</button>
        </form>
    </section>
</body>

</html>