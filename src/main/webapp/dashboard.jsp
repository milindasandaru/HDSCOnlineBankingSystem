<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .submit-btn{
    font-family: 'Open Sans', sans-serif;
    font-size: 1rem;
    text-transform: uppercase;
    color: #fff;
    background: #38d39f;
    border: none;
    border-radius: 5px;
    padding: 0.7rem 1.5rem;
    cursor: pointer;
    transition: all 0.4s ease;
}
.submit-btn:hover{
    opacity: 0.8;
}
    </style>

</head>
<body>
	<h1>DashBoard</h1>
	
	<a href="viewComments.jsp" class="submit-btn" style="text-decoration: none;">Your Comments</a>
	
	<a href="BillForm.jsp" class="submit-btn" style="text-decoration: none;">bill payment</a>
	
	<a href="billHistory.jsp" class="submit-btn" style="text-decoration: none;">bill history</a>
	

	<!--<c:forEach var="users" items="userDetails">
	
	${users.clientID}
	${users.fullName}
	${users.emailAddress}
	${users.phoneNumber}
	${users.address}
	${users.dateofBirth}
	${users.accountNumber}
	${users.username}
	${users.password}
	${users.accountType}
	${users.dateJoined}
	${users.accountStatus}
	
	</c:forEach>
</body>
</html-->



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HSDC Bank Dashboard</title>
    <link rel="stylesheet" href="css/DashboardStyles.css">
    
</head>
<body>

    <!-- Header with user profile -->
    <header class="header">
        <div class="logo">
            <h1>HSDC Bank</h1>
        </div>
        <div class="user-profile">
            <img src="icons/user.png" alt="User Profile">
            <h2>Hi Milinda!</h2>
        </div>
    </header>

    <!-- Main dashboard -->
    <main class="dashboard">
        <section class="card-section">
            <div class="card-info">
                <h3>Your Account Balance</h3>
                <div class="balance-card">
                    <div class="acc-number">
                        <p>56**  ****  ****  1234</p>
                    </div>
                    <div class="balance">
                        <p>RS.120,000</p>
                        <span>Available Balance</span>
                    </div>
                </div>
            </div>
        </section>

        <!-- Actions (Send money, Transfer, etc.) -->
        <section class="actions-section">
            <div class="actions-grid">
                <div class="action-item">
                    <img src="./images/top-up.png" alt="Top-Up">
                    <p>Top-Up</p>
                </div>
                <div class="action-item">
                    <img src="./images/send-money.png" alt="Send Money">
                    <p>Send Money</p>
                </div>
                <div class="action-item">
                    <img src="./images/money-transfer.png" alt="Transfer">
                    <p>Transfer</p>
                </div>
                <div class="action-item">
                    <img src="./images/loan.png" alt="Loan apply">
                    <p>Apply for a Loan</p>
                </div>
                <div class="action-item">
                    <a href="BillForm.jsp" ><img src="images/bill-pay.png" alt="Bill Pay"></a>
                    <p>Bill Payment</p>
                </div>
                <div class="action-item">
                    <img src="./images/credit-card.png" alt="Card Payment">
                    <p>Card Payment</p>
                </div>
                <div class="action-item">
                    <a href="BillForm.jsp" ><img src="images/bill-pay.png" alt="Bill Pay"></a>
                    <p>View Comment</p>
                </div>
                <div class="action-item">
                    <a href="billHistory.jsp" ><img src="images/bill-pay.png" alt="Bill Pay"></a>
                    <p>Bill History</p>
                </div>
            </div>
        </section>

        <!-- Account details and Cards -->
        <section class="account-cards-section">
            <div class="account-card">
                <h4>Accounts</h4>
                <p>Total Account Balance: Rs.347,741.16</p>
            </div>
            <div class="account-card">
                <h4>Cards</h4>
                <p>Total Card Balance: Rs.0.00</p>
            </div>
        </section>
    </main>
    
    <!-- Footer -->
    <footer class="footer">
        <div class="footer-menu">
            <a href="#">History</a>
            <a href="#">More</a>
            <a href="#">Home</a>
        </div>
    </footer>

</body>
</html>
