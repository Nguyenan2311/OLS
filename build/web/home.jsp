<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edemy - Home</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }
            .header {
                background-color: #f8f9fa;
                padding: 10px 20px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .header .logo {
                color: #28a745;
                font-size: 24px;
                font-weight: bold;
            }
            .header nav a {
                margin: 0 15px;
                text-decoration: none;
                color: #000;
            }
            .header .search-bar {
                padding: 5px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            .header .sign-up {
                background-color: #28a745;
                color: white;
                padding: 5px 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            .banner {
                position: relative;
                text-align: center;
                padding: 20px;
                background-color: #f1f1f1;
            }
            .banner img {
                width: 100%;
                max-height: 300px;
            }
            .banner-text {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                color: #000;
                font-size: 24px;
            }
            .content {
                display: flex;
                padding: 20px;
            }
            .main-content {
                flex: 3;
                padding-right: 20px;
            }
            .sidebar {
                flex: 1;
            }
            .slider, .hot-posts, .featured-subjects {
                margin-bottom: 20px;
            }
            .item {
                border: 1px solid #ccc;
                padding: 10px;
                text-align: center;
                margin: 10px 10px 10px 0; /* Thêm kho?ng cách ngang gi?a các m?c */
            }
            .item img {
                max-width: 100%;
                height: auto;
            }
            .item a {
                text-decoration: none;
                color: #000;
            }
            .hot-posts .items, .featured-subjects .items {
                display: flex;
                flex-direction: row;
                flex-wrap: wrap; /* Cho phép xu?ng dòng n?u không ?? ch? */
                justify-content: flex-start;
            }
            .sidebar-item {
                border: 1px solid #ccc;
                padding: 10px;
                margin-bottom: 10px;
            }
            .contact-links a {
                display: block;
                margin: 5px 0;
                text-decoration: none;
                color: #000;
            }
        </style>
    </head>
    <body>
        <%@include file = "header.jsp" %>
        <c:if test="${not empty listSlider}">
            <c:set var="slider" value="${listSlider[0]}" />
            <div class="banner">
                <img src="${slider.image_url}" alt="${slider.back_link_url}">
                <div class="banner-text">
                    <a href="${slider.back_link_url}"></a>
                </div>
            </div>
        </c:if>

        <div class="content">
            <div class="main-content">


                <div class="hot-posts">
                    <h3>Hot post</h3>
                    <c:forEach items="${listPost}" var="o">
                        <div class="items">
                            <div class="item">
                                <a href="https://example.com/post1">
                                    <img src="${o.thumbnail_url}" alt="">
                                    <p>${o.title}</p>
                                    <p>${o.created_date}</p>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <div class="featured-subjects">
                    <h3>Subjects</h3>
                    <div class="items">
                        <div class="item">
                            <a href="https://example.com/subject1">
                                <img src="https://via.placeholder.com/100x100" alt="Subject 1">
                                <p>Title</p>
                                <p>Detail: Learn English</p>
                            </a>
                        </div>
                        <div class="item">
                            <a href="https://example.com/subject2">
                                <img src="https://via.placeholder.com/100x100" alt="Subject 2">
                                <p>Title</p>
                                <p>Detail: Learn Python</p>
                            </a>
                        </div>
                        <div class="item">
                            <a href="https://example.com/subject3">
                                <img src="https://via.placeholder.com/100x100" alt="Subject 3">
                                <p>Title</p>
                                <p>Detail: Learn Java</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="sidebar">
                <div class="sidebar-item">
                    <h3>Latest Post</h3>
                    <p>Title: Recent Blog Post 1</p>
                    <p>Date: 2025-05-26</p>
                    <p>Title: Recent Blog Post 2</p>
                    <p>Date: 2025-05-25</p>
                    <p>Title: Recent Blog Post 3</p>
                    <p>Date: 2025-05-24</p>
                </div>
                <div class="sidebar-item contact-links">
                    <h3>Quick Link</h3>
                    <a href="mailto:abcxyz@gmail.com">? abcxyz@gmail.com</a>
                    <a href="tel:0123456789">? 0123456789</a>
                    <a href="#">? About us</a>
                </div>
            </div>
        </div>
    </body>
</html>