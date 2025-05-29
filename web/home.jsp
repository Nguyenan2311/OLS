<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edemy - Home</title>
        <style>
            body {
                margin: 0;
                font-family: Arial, sans-serif;
            }

            /* Banner (Slider) */
            .banner {
                width: 100%;
                height: 200px;
                position: relative;
                overflow: hidden;
            }

            .banner img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

            .banner-text a {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                display: block;
                text-indent: -9999px;
            }

            /* Layout */
            .content {
                display: flex;
                padding: 20px;
                gap: 20px;
            }

            .main-content {
                flex: 3;
            }

            .sidebar {
                flex: 1;
            }

            .hot-posts,
            .featured-subjects {
                margin-bottom: 40px;
            }

            .hot-posts h3,
            .featured-subjects h3 {
                margin-bottom: 10px;
            }

            .items {
                display: flex;
                flex-wrap: wrap;
                gap: 16px;
            }

            .card {
                width: 200px;
                border: 1px solid #ccc;
                padding: 10px;
                border-radius: 8px;
                text-align: center;
                background-color: #f9f9f9;
                transition: transform 0.2s ease;
            }

            .card:hover {
                transform: scale(1.03);
            }

            .card img {
                max-width: 100%;
                height: auto;
                border-radius: 4px;
            }

            /* Sidebar */
            .sidebar-item {
                background-color: #f1f1f1;
                padding: 15px;
                border-radius: 8px;
                margin-bottom: 20px;
            }

            .sidebar-item h3 {
                margin-top: 0;
            }

            .sidebar-item.contact-links a {
                display: block;
                margin-top: 5px;
                text-decoration: none;
                color: #333;
            }

            .sidebar-item.contact-links a:hover {
                text-decoration: underline;
            }
            a {
                color: inherit;      /* Gi? nguyên màu ch? c?a ph?n t? cha (th??ng là màu ?en) */
                text-decoration: none; /* B? g?ch chân */
                font-weight: bold;
            }
            .quick-link-item {
                display: flex;
                align-items: center;
                gap: 8px; /* kho?ng cách gi?a icon và ch? */
                margin-top: 5px;
            }



        </style>
        <script src="https://kit.fontawesome.com/8807c30b90.js" crossorigin="anonymous"></script>
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
            <!-- Left side: hot post and subjects side by side -->
            <div class="main-content">
                <div class="horizontal-section">
                    <div class="hot-posts">
                        <h3>Hot post</h3>
                        <div class="items">
                            <c:forEach items="${listPost}" var="o">
                                <div class="card">
                                    <a href="https://example.com/post1">
                                        <img src="${o.thumbnail_url}" alt="" width="200px" height="200px">
                                        <p>${o.title}</p>

                                    </a>
                                    <p>${o.created_date}</p>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                    <div class="featured-subjects">
                        <h3>Subjects</h3>
                        <div class="items">
                            <c:forEach items="${listCourse}" var="o">
                                <div class="card">
                                    <a href="https://example.com/subject1">
                                        <img src="${o.thumbnailUrl}" alt="">
                                        <p>${o.title}</p>

                                    </a>
                                    <p>${o.tagline}</p>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right side: sidebar -->
            <div class="sidebar">
                <div class="sidebar-item">
                    <h3>Latest Post</h3>
                    <c:forEach items="${listLastPost}" var="o">                             
                        <p>
                            <a href="#">${o.title}</a>
                        </p>
                        <p>
                            ${o.created_date}
                        </p>
                    </c:forEach>
                </div>
                <div class="sidebar-item contact-links">
                    <h3>Quick Link</h3>
                    <div class="quick-link-item">
                        <i class="fa-solid fa-envelope"></i><a href="mailto:abcxyz@gmail.com">abcxyz@gmail.com</a>
                    </div>
                    <div class="quick-link-item">
                        <i class="fa-solid fa-phone"></i><a href="tel:0123456789">0123456789</a>
                    </div>
                    <div class="quick-link-item">
                        <i class="fa-solid fa-users"></i><a href="#">About us</a>
                    </div>

                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>

</html>