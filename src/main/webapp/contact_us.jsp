<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Contact Us</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./css/contact_us.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>

<body>
	
	<%@ include file="WEB-INF/views/headera.jsp" %>

    <section class="contact-section">
        <div class="contact-bg">
            <h3>Get in Touch with Us</h3>
            <h2>contact us</h2>
            <div class="line">
                <div></div>
                <div></div>
                <div></div>
            </div>
            <p class="text">We are here to help you with any questions, concerns, or feedback you may have about our
                online banking services. Whether you need assistance with account management, transaction issues, or
                have suggestions for improvement, feel free to reach out to us. Our dedicated customer support team is
                available to assist you via email, phone, or through our secure messaging system within your online
                banking account. We strive to provide timely and effective support to ensure your banking experience is
                smooth and hassle-free. You can also visit our FAQs section for quick answers to common queries. We look
                forward to hearing from you!</p>
        </div>


        <div class="contact-body">
            <div class="contact-info">
                <div>
                    <span><i class="fas fa-mobile-alt"></i></span>
                    <span>Phone No.</span>
                    <span class="text">1-2392-23928-2</span>
                </div>
                <div>
                    <span><i class="fas fa-envelope-open"></i></span>
                    <span>E-mail</span>
                    <span class="text">HDSCBanking@company.com</span>
                </div>
                <div>
                    <span><i class="fas fa-map-marker-alt"></i></span>
                    <span>Address</span>
                    <span class="text">9 North Promenade, Donhead St Andrew, United Kingdom</span>
                </div>
                <div>
                    <span><i class="fas fa-clock"></i></span>
                    <span>Opening Hours</span>
                    <span class="text">Monday - Friday (09:00 AM to 03:00 PM)</span>
                </div>
            </div>

            <div class="contact-form">
                <form action="UserComment" method="post">
                
                <%
                	String error = (String) request.getAttribute("errorMessage");
                    if (error != null) {
                %>
                    <p style="color:red;"><%= error %></p>
                <%
                    }
                %>
                
                <%    
                    String success = request.getParameter("successMessage");
                    if (success != null) {
                %>
                    <p style="color:green;"><%= success %></p>
                <%
                    }
                %>
                
                    <div>
                        <input type="text" class="form-control" placeholder="First Name" name="firstName" required>
                        <input type="text" class="form-control" placeholder="Last Name" name="lastName" required>
                    </div>
                    <div>
                        <input type="email" class="form-control" placeholder="E-mail" name="email" required>
                        <input type="text" class="form-control" placeholder="Phone" name="phone" required>
                    </div>
                    <textarea rows="5" placeholder="Message" class="form-control" name="message"></textarea>
                    <input type="submit" class="submit-btn" value="Send Message">
                    <!--<a href="commentshow.jsp" class="submit-btn" style="text-decoration: none;">Your Comments</a>-->
                </form>

                <div>
                    <img src="./images/cu_himg.png" alt="">
                </div>
            </div>
        </div>

        <div class="map">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10038.67082018911!2d-2.128621734568963!3d51.02228749464016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4873c84d61200e39%3A0xa10f443eb98aea0!2sDonhead%20St%20Andrew%2C%20Shaftesbury%20SP7%209EE%2C%20UK!5e0!3m2!1sen!2slk!4v1727891827486!5m2!1sen!2slk"
                width="100%" height="450" style="border:0;" aria-hidden="false"
                tabindex="0"></iframe>
        </div>
    </section>
    
    <jsp:include page="WEB-INF/views/Footer.jsp" />
    
</body>

</html>