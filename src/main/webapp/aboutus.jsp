<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About us</title>
    <link rel="stylesheet" href="./css/aboutus.css">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
</head>

<body>

	<%@ include file="WEB-INF/views/headera.jsp" %>
	
    <section>
        <div class="container">
            <img src="./images/chicago-skyline.png" id="backgroundI">
            <section>
                <div class="sublist">
                    <div class="subtitle">
                        <h3>About <span>Us</span></h3>
                    </div>
                </div>
            </section>

            <p class="sub-paragraph">At OnlineBank, we are redefining the way people interact with their finances. In a world that is increasingly digital, we are proud to offer a comprehensive suite of online banking services designed to meet the needs of modern individuals and businesses. Our platform is built on the pillars of security, convenience, and innovation, ensuring that our users have a seamless experience when managing their financial lives. From simple transactions to complex financial planning, we offer a robust and user-friendly platform that puts you in control. With a commitment to continual improvement, we strive to lead the evolution of online banking by introducing features that are not only advanced but also easy to use, ensuring that banking is no longer a chore but an empowering experience.</p>

            <div class="about">
                <div>
                    <i class='bx bxs-book'></i>
                    <h3>Mission</h3>
                    <p>Our mission is to simplify and enhance the banking experience for all, by offering a platform that merges cutting-edge technology with personalized financial services. We aim to empower our customers with tools that make managing finances effortless, secure, and accessible. Our focus is on understanding the unique needs of every user and providing them with services that cater to those needs—whether it’s secure savings, investment management, or streamlined transactions. We are committed to providing world-class service and making online banking not just an option, but the preferred method of managing money. Through reliability, security, and innovation, we strive to offer a banking experience that our customers can trust and depend on for years to come.</p>
                </div>
                <div>
                    <i class='bx bx-world'></i>
                    <h3>Vision</h3>
                    <p>Our vision is to revolutionize the financial landscape by creating a digital-first banking platform that not only meets but exceeds customer expectations. We believe that banking should be accessible to everyone, no matter where they are in the world or what device they are using. We envision a future where online banking transcends traditional banking by offering personalized insights, smarter financial planning tools, and seamless integration with every aspect of your life. Our goal is to be at the forefront of this digital transformation, providing an online banking experience that is secure, transparent, and designed with the customer in mind. We see a future where every transaction, every financial decision, is backed by data-driven intelligence and personalized service, allowing our customers to achieve financial freedom and security.</p>
                </div>
                <div>
                    <i class='bx bxs-trophy'></i>
                    <h3>Achievement</h3>
                    <p>OnlineBank has quickly established itself as a trusted name in the financial technology sector. Our cutting-edge security measures, coupled with our commitment to user satisfaction, have earned us a reputation as one of the most secure and user-friendly banking platforms. Since our launch, we have onboarded thousands of satisfied customers who have benefited from our wide array of services—from secure online transactions to comprehensive financial management tools. We are proud of our partnerships with leading financial institutions, which have enabled us to provide faster, more reliable services across various regions. Moreover, our platform has been recognized for its innovation in the banking sector, receiving multiple awards for both customer service and technological advancements. We continue to grow and innovate, setting new benchmarks in the industry, and helping individuals and businesses achieve financial success with confidence.</p>
                </div>
            </div>
        </div>
    </section>
    
	<jsp:include page="WEB-INF/views/Footer.jsp" />

</body>
</html>