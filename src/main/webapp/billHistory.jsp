<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bill Payment History</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Bill Payment History</h1>

    <table border="1">
        <thead>
            <tr>
                <th>Payment ID</th>
                <th>Bill Type</th>
                <th>Bill Number</th>
                <th>Amount</th>
                <th>Payment Date</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="payment" items="${paymentHistory}">
                <tr>
                	  <td><c:out value="${payment.paymentID}"/></td>
                    <td>${payment.paymentID}</td>
                    <td>${payment.billType}</td>
                    <td>${payment.billNumber}</td>
                    <td>${payment.amount}</td>
                    <td>${payment.paymentDate}</td>
                    <td>${payment.status}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>
