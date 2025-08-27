<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Frequently Asked Questions</title>
    <link rel="stylesheet" href="./css/FAQs.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
</head>

<body>
	
	<%@ include file="WEB-INF/views/headera.jsp" %>

    <div class="wrapper">
        <p>Your Secure and Convenient Way to Bank Anytime, Anywhere.</p>
        <h1>Frequently Asked Questions</h1>

        <div class="faq">
            <button class="ques">
                How do I register for online banking?
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            <div class="pannel">
                <p>
                    To register for online banking, visit our registration page, provide your account number, personal
                    details, and set up security credentials. You will need an active bank account to complete the
                    process.
                </p>
            </div>
        </div>

        <div class="faq">
            <button class="ques">
                What should I do if I forget my password?
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            <div class="pannel">
                <p>
                    If you forget your password, click on the "Forgot Password" link on the login page. You will be
                    prompted to verify your identity using your registered email or phone number, and you can reset your
                    password.
                </p>
            </div>
        </div>

        <div class="faq">
            <button class="ques">
                How do I transfer funds between accounts?
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            <div class="pannel">
                <p>
                    After logging into your account, navigate to the "Fund Transfer" section. You can choose the
                    accounts you want to transfer between, enter the amount, and confirm the transfer.
                </p>
            </div>
        </div>

        <div class="faq">
            <button class="ques">
                How can I check my account balance?
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            <div class="pannel">
                <p>
                    Once logged in, go to the "Accounts" section. Your current balance and transaction history for each
                    account will be displayed.
                </p>
            </div>
        </div>

        <div class="faq">
            <button class="ques">
                Is online banking secure?
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            <div class="pannel">
                <p>
                    Yes, our online banking platform uses the latest encryption technologies and security protocols to
                    protect your personal and financial information.
                </p>
            </div>
        </div>

        <div class="faq">
            <button class="ques">
                What do I do if I suspect fraudulent activity on my account?
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            <div class="pannel">
                <p>
                    Immediately contact our customer support team through the secure messaging system or by phone. We
                    will help you take steps to secure your account and investigate the issue.
                </p>
            </div>
        </div>


        <div class="faq">
            <button class="ques">
                What do I do if I suspect fraudulent activity on my account?
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            <div class="pannel">
                <p>
                    Immediately contact our customer support team through the secure messaging system or by phone. We
                    will help you take steps to secure your account and investigate the issue.
                </p>
            </div>
        </div>

        <div class="faq">
            <button class="ques">
                Can I pay my bills using the online banking system?
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            <div class="pannel">
                <p>
                    Yes, you can pay utility bills, credit cards, and other payments directly through the "Bill Payment"
                    section after logging into your account.
                </p>
            </div>
        </div>

        <div class="faq">
            <button class="ques">
                How do I update my personal details (e.g., phone number or address)?
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            <div class="pannel">
                <p>
                    You can update your personal information by navigating to the "Profile" section within your account
                    and editing your contact details.
                </p>
            </div>
        </div>

        <div class="faq">
            <button class="ques">
                How can I view my transaction history?
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            <div class="pannel">
                <p>
                    You can view your transaction history by selecting the "Transaction History" option within your
                    account. It will show a list of all recent transactions, including deposits and withdrawals.
                </p>
            </div>
        </div>

        <div class="faq">
            <button class="ques">
                How do I contact customer support for further assistance?
                <i class="fa-solid fa-chevron-down"></i>
            </button>
            <div class="pannel">
                <p>
                    You can contact our customer support team via email, phone, or the secure messaging feature within
                    your online banking account. Visit the "Contact Us" page for more details.
                </p>
            </div>
        </div>
    </div>
    <script>
        var acc = document.getElementsByClassName("ques");
        var i;

        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function () {
                this.classList.toggle("active");
                this.parentElement.classList.toggle("active");

                var pannel = this.nextElementSibling;

                if (pannel.style.display === "block") {
                    pannel.style.display = "none";
                } else {
                    pannel.style.display = "block";
                }
            });
        }
    </script>
    
    <div class="footer">
    	<jsp:include page="WEB-INF/views/Footer.jsp" />
    </div>
    
</body>

</html>