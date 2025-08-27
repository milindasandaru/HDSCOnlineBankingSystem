<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>services</title>
    <link rel="stylesheet" href="./css/services.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>

</head>

<body>

	<%@ include file="WEB-INF/views/headera.jsp" %>

    <section>
        <div class="row">
            <h2 class="section-heading">Our Services</h2>
            <p>Welcome to our Online Banking System, where convenience, security, and efficiency come together to
                provide a seamless banking experience. We offer a wide range of services designed to meet your everyday
                banking needs, whether you're managing personal finances, conducting transactions, or planning for the
                future. Explore our services below and discover how we can help you take control of your financial
                journey.</p>
        </div>
        <div class="row">
            <div class="column">
                <div class="card">
                    <div class="icon-wrap">
                        <i class="fa-solid fa-users"></i>
                    </div>
                    <h3>Account Management</h3>
                    <p>The Account Management service allows users to monitor and manage their bank accounts easily.
                        This includes viewing account balances, tracking recent transactions, checking account
                        statements, and updating personal details such as phone numbers, addresses, and email. Users can
                        also manage multiple accounts, such as savings, checking, and fixed deposit accounts, under one
                        platform.</p>
                </div>
            </div>

            <div class="column">
                <div class="card">
                    <div class="icon-wrap">
                        <i class="fa-solid fa-arrows-rotate"></i>
                    </div>
                    <h3>Fund Transfers</h3>
                    <p>With the Fund Transfers service, users can securely transfer money between their own accounts or
                        to other recipients, both within the same bank and to external banks. The system supports
                        instant transfers, scheduled transfers, and international wire transfers, making it convenient
                        for users to send money whenever needed.</p>
                </div>
            </div>

            <div class="column">
                <div class="card">
                    <div class="icon-wrap">
                        <i class="fa-regular fa-note-sticky"></i>
                    </div>
                    <h3>Bill Payments</h3>
                    <p>This service allows users to pay their bills directly through the online banking platform.
                        Whether it's utility bills, credit card payments, or other services, users can set up one-time
                        or recurring payments. This eliminates the need to visit physical locations, saving time and
                        offering a hassle-free experience.</p>
                </div>
            </div>

            <div class="column">
                <div class="card">
                    <div class="icon-wrap">
                        <i class="fa-solid fa-credit-card"></i>
                    </div>
                    <h3>Loan and Credit Services</h3>
                    <p>The OBS offers users the ability to apply for personal loans, credit cards, or mortgages online.
                        Users can view available loan offers, check eligibility, and apply without having to visit the
                        bank. Once approved, users can track loan repayment schedules and manage their credit accounts
                        through the online portal.</p>
                </div>
            </div>

            <div class="column">
                <div class="card">
                    <div class="icon-wrap">
                        <i class="fa-solid fa-phone-volume"></i>
                    </div>
                    <h3>Customer Support and Complaint Handling</h3>
                    <p>To assist users with queries or issues, the OBS offers a robust customer support system. Users
                        can submit feedback, ask questions, and file complaints via secure messaging or email. The
                        system also tracks and resolves issues efficiently, ensuring users receive timely responses and
                        support for their banking needs.</p>
                </div>
            </div>

            <div class="column">
                <div class="card">
                    <div class="icon-wrap">
                        <i class="fa-solid fa-chart-simple"></i>
                    </div>
                    <h3>Transaction History and Reporting</h3>
                    <p>Users can access detailed reports of their transaction history, which includes deposits,
                        withdrawals, transfers, and payments. The service also offers downloadable account statements
                        and real-time transaction tracking. Additionally, users can generate custom reports for a
                        specific time period, allowing them to monitor and manage their finances more effectively.</p>
                </div>
            </div>
        </div>
    </section>
    
    <section class="descript">
        <div class="des-section">
            <div class="des-img">
                <img src="./images/24_7.png" alt="24/7 Accessibility">
            </div>
            <div class="des-text">
                <h4>24/7 Accessibility</h4>
                <p>With our Online Banking System, you can manage your finances anytime, anywhere. Whether you need to check your balance, transfer funds, or pay bills, the system is available 24/7, offering unparalleled convenience. Say goodbye to long bank queues and restricted banking hours – now your bank is always open, right at your fingertips.</p>
            </div>
        </div>

        <div class="des-section">
            <div class="des-img">
                <img src="./images/secu.png" alt="Enhanced Security">
            </div>
            <div class="des-text">
                <h4>Enhanced Security</h4>
                <p>Security is our top priority. Our OBS employs the latest encryption technologies and multi-factor authentication to ensure that your personal and financial information is always protected. Every transaction is monitored and secured, giving you peace of mind while conducting your banking activities online.</p>
            </div>
        </div>

        <div class="des-section">
            <div class="des-img">
                <img src="./images/mon_time_sav1.png" alt="Time and Cost Savings">
            </div>
            <div class="des-text">
                <h4>Time and Cost Savings</h4>
                <p>Enjoy the efficiency of managing all your banking needs from one platform, eliminating the need for frequent branch visits. The OBS allows you to transfer funds, pay bills, and manage accounts digitally, saving you valuable time and cutting down on costs associated with physical banking processes.</p>
            </div>
        </div>
    </section>
    
    <div class="footer">
    <jsp:include page="WEB-INF/views/Footer.jsp" />
    </div>

</body>

</html>