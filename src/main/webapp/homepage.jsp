<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Banking System</title>
    <link rel="stylesheet" href="css/Homepage.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
</head>
<body>

	 <%@ include file="WEB-INF/views/Header.jsp" %>

	<!-- Main section -->
    <section class="main">
        <h1>HDSC OnlineBanking</h1>
        <p>Empowering your financial journey with security, convenience, <br>and a touch of innovation.
             Experience the <br>future of banking today.</p>
        <a href="login.jsp" class="btn" id="gs">Get Started<i class='bx bx-right-arrow-alt'></i></a>
        <a href="services.jsp" class="btn" id="lm">Learn More...</a>
    </section>

    <section class="features">
        <h2>Why Choose Us?</h2>
        <div class="feature">
            <img src="./images/secure banking.png" alt="Secure Banking">
            <h3>Secure Banking</h3>
            <p>Protect your financial future with our state-of-the-art security features. We go beyond industry standards to ensure every transaction is secure, giving you peace of mind every step of the way.</p>
        </div>
        <div class="feature">
            <img src="./images/money transfer.png" alt="Easy Transfers">
            <h3>Easy Transfers</h3>
            <p>Say goodbye to complicated transfers. Our streamlined process allows you to move your money effortlessly, so you can focus on what matters most. Transferring funds has never been this easy.</p> 
        </div>
        <div class="feature">
            <img src="./images/Mobile access.png" alt="Mobile Access">
            <h3>Mobile Access</h3>
            <p>Your bank is wherever you are. With our mobile app, you have the freedom to access your accounts, make transactions, and stay informed—all from the palm of your hand, anytime, anywhere.</p>
        </div>
        <br>
        <a href="aboutus.jsp" class="btn">About Us</a>
    </section>

    <section class="user_feed">
        <div class="user_heading">
        <span>Comments</span>
        <h2>Clients Says</h2>
        </div>
        
        <div class="box_container">
            <div class="feed_box">
                <div class="box_top">
                    <div class="profile">
                        <div class="profile_img">
                            <img src="./images/5677.jpg" alt="prfile_picture">
                        </div>
                        <div class="name_user">
                            <strong>David Nguyen</strong>
                            <span>@dave_nguyweb</span>
                        </div>
                    </div>
                    <div class="reviews">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bx-star'></i>
                    </div>
                </div>
                <div class="comment">
                    <p>I've been using OnlineBank for over a year now, and the mobile app is by far the best feature. It's so convenient to access my accounts and make transactions on the go, whether I'm at home or traveling. The seamless experience across all devices makes banking a breeze.</p>
                </div>
            </div>
            <div class="feed_box">
                <div class="box_top">
                    <div class="profile">
                        <div class="profile_img">
                            <img src="./images/2148603018.jpg" alt="prfile_picture">
                        </div>
                        <div class="name_user">
                            <strong>Sarah Mitchell</strong>
                            <span>@sarahM_85web</span>
                        </div>
                    </div>
                    <div class="reviews">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star-half'></i>
                    </div>
                </div>
                <div class="comment">
                    <p>OnlineBank has completely transformed the way I handle my finances. The security features are top-notch, and I never have to worry about the safety of my transactions. The peace of mind it gives me is invaluable. Plus, the interface is so intuitive—I can navigate through all the features with ease.</p>
                </div>
            </div>
            <div class="feed_box">
                <div class="box_top">
                    <div class="profile">
                        <div class="profile_img">
                            <img src="./images/13176.jpg" alt="prfile_picture">
                        </div>
                        <div class="name_user">
                            <strong>Emily Rodriguez</strong>
                            <span>@emily_rodsweb</span>
                        </div>
                    </div>
                    <div class="reviews">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star-half'></i>
                    </div>
                </div>
                <div class="comment">
                    <p>As someone who handles multiple accounts, I was worried that online banking would be complicated. But with OnlineBank, transferring funds is incredibly straightforward. The user-friendly interface makes complex tasks feel simple, and I appreciate the level of detail and customization available.</p>
                </div>
            </div>
            <div class="feed_box">
                <div class="box_top">
                    <div class="profile">
                        <div class="profile_img">
                            <img src="./images/1116.jpg" alt="prfile_picture">
                        </div>
                        <div class="name_user">
                            <strong>James Carter</strong>
                            <span>@jcarter24web</span>
                        </div>
                    </div>
                    <div class="reviews">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bx-star'></i>
                    </div>
                </div>
                <div class="comment">
                    <p>What I love most about OnlineBank is how it combines top-level security with an easy-to-use platform. Managing my money has never been so effortless, and I feel confident knowing that my information is always protected. OnlineBank has truly set a new standard for online banking.</p>
                </div>
            </div>

        </div>  
    </section>
    
    <section class="rest"></section>
    
    <!-- include footer  -->
    <jsp:include page="WEB-INF/views/Footer.jsp" />

</body>
</html>
