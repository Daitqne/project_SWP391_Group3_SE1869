<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<<<<<<< HEAD
    <head>
        <meta charset="UTF-8">
        <title>Login Page</title>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css'>
        <link rel="stylesheet" href="../css_login/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css_login/style.css">

    </head>
    <body>
        <h2>Sign in/Sign up</h2>
        <div class="container" id="container">
            <div class="form-container sign-up-container">
                <form action="#">
                    <h1>Create Account</h1>
                    <div class="social-container">
                        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <span>or use your email for registration</span>
                    <input type="text" placeholder="Email" />
                    <input type="email" placeholder="User Name" />
                    <input type="password" placeholder="Password" />
                    <button>Sign Up</button>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="/LoginServlet" method="post">
                    <h1>Sign in</h1>
                    <div class="social-container">
                        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                        <span>or use your account</span>
                        <input type="text" placeholder="Enter the user name:" name="username"/>
                        <input type="password" placeholder="Password" name="password"/>
                    <a href="#">Forgot your password?</a>
                    <button>Sign In</button>      
                     <%
        String errorMessage = (String) request.getAttribute("errorMessageUserName");
        if (errorMessage != null) {
    %>
        <script>
            alert("<%= errorMessage %>");
        </script>
    <%
        }
    %>
    <%
        String errorMessagePassword = (String) request.getAttribute("errorMessagePassword");
        if (errorMessagePassword != null) {
    %>
        <script>
            alert("<%= errorMessagePassword %>");
        </script>
    <%
        }
    %>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>To keep connected with us please login with your personal info</p>
                        <button class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start journey with us</p>
                        <button class="ghost" id="signUp">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="./script.js"></script>
=======
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css'>
    <link rel="stylesheet" href="../css_login/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css_login/style.css">
    <script src="https://accounts.google.com/gsi/client" async defer></script>
</head>
<body>
<h2>Sign in/Sign up</h2>
<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form action="#">
            <h1>Create Account</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>or use your email for registration</span>
            <input type="text" placeholder="Email" />
            <input type="email" placeholder="User Name" />
            <input type="password" placeholder="Password" />
            <button>Sign Up</button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form action="/LoginServlet" method="post">
            <h1>Sign in</h1>

            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="loginGoogle-servlet" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>or use your account</span>
            <input type="text" placeholder="Enter the user name:" name="username"/>
            <input type="password" placeholder="Password" name="password"/>
            <div id="g_id_onload"
                 data-client_id="392410667722-jfu6g73qfmspijgmvaatitre6qre0emg.apps.googleusercontent.com"
                 data-login_uri="http://localhost:8080/LoginServlet"
                 data-auto_prompt="false">
            </div>
            <div class="g_id_signin" data-type="standard"></div>
            <a href="../requestPassWord-servlet">Forgot your password?</a>
            <button>Sign In</button>
            <%
                String errorMessage = (String) request.getAttribute("errorMessageUserName");
                if (errorMessage != null) {
            %>
            <script>
                alert("<%= errorMessage %>");
            </script>
            <%
                }
            %>
            <%
                String errorMessagePassword = (String) request.getAttribute("errorMessagePassword");
                if (errorMessagePassword != null) {
            %>
            <script>
                alert("<%= errorMessagePassword %>");
            </script>
            <%
                }
            %>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Welcome Back!</h1>
                <p>To keep connected with us please login with your personal info</p>
                <button class="ghost" id="signIn">Sign In</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Hello, Friend!</h1>
                <p>Enter your personal details and start journey with us</p>
                <button class="ghost" id="signUp">Sign Up</button>
            </div>
        </div>
    </div>
</div>
</body>
<script src="./script.js"></script>
>>>>>>> HieuNT
</html>
