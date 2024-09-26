<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ERun JRun</title>
<!-- 외부 폰트와 스타일시트, 그리고 부트스트랩을 통해 CSS 프레임워크를 불러옵니다. -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/admin.css">
</head>
<body>
	<div class="dashboard-container">
        <!-- Sidebar -->
        <aside class="sidebar">
            <div class="logo">
                <img src="logo.png" alt="Logo">
            </div>
            <nav class="menu">
                <ul>
                    <li>Dashboard</li>
                    <li>Cloud DB for MySQL</li>
                    <li>VPC</li>
                    <li>Server</li>
                    <li>Object Storage</li>
                    <li>Auto Scaling</li>
                    <li>Load Balancer</li>
                </ul>
            </nav>
        </aside>
        
        <!-- Main Dashboard -->
        <main class="dashboard">
            <header class="dashboard-header">
                <h1>Dashboard</h1>
                <button class="refresh-button">새로고침</button>
            </header>

            <section class="cards">
                <div class="card">
                    <h2>Daily Event</h2>
                    <p>유효한 이벤트: 0개</p>
                    <p>종료된 이벤트: 0개</p>
                </div>
                
                <div class="card">
                    <h2>CPU Top 5</h2>
                    <p>해당 정보가 없습니다.</p>
                </div>

                <div class="card">
                    <h2>Security Monitoring - IDS</h2>
                    <p>조회기간: 2024.09.20 ~ 2024.09.26</p>
                    <div class="chart-placeholder"></div>
                </div>

                <div class="card">
                    <h2>서비스 이용 내역</h2>
                    <p>파트너에게 문의해주세요</p>
                </div>

                <div class="card">
                    <h2>네트워크 이용 내역</h2>
                    <p>이용 내역: 0.176825 GB</p>
                    <p>이용 현황 그래프:</p>
                    <div class="chart-placeholder"></div>
                </div>

                <div class="card">
                    <h2>결제 정보</h2>
                    <p>파트너에게 문의해주세요</p>
                </div>
            </section>
        </main>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
</body>
</html>