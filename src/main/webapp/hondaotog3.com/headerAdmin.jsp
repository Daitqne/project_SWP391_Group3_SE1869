<%-- 
    Document   : header.jsp
    Created on : Jun 25, 2023, 11:37:39 PM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            /* Navbar customization */
            .navbar {
                margin-bottom: 20px;
                border-radius: 5px;
                color: #4a4a4a;
            }
            .navbar-nav a{
                display: flex;
            }

            .navbar-brand {
                font-weight: bold;
            }

            .navbar-nav .nav-item .nav-link {
                color: white;

            }

            .navbar-nav .nav-item .nav-link:hover {
                color: rgba(255, 255, 255, 0.7);
            }

            .navbar-nav .nav-item .nav-link i {
                margin-right: 5px;
            }
        </style>

    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark" style=" margin-bottom: 20px; background: #dc3545 ">
            <div class="container">
                <a class="navbar-brand" href="#">Car Shop</a>
                <ul class="navbar-nav">
                        <li class="nav-item" >
                            <a class="nav-link" href="../productList-servlet">Quản lí sản phẩm</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../accountList-servlet">Quản lí tài khoản</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../orderList-servlet">Quản lí đơn hàng</a>
                        </li>
                        <li class="nav-item">
                                                    <a class="nav-link" href="../employList-servlet">Quản lý Nhân viên</a>
                                                </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="bi bi-person-fill"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/logout">
                            <i class="bi bi-box-arrow-right"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>