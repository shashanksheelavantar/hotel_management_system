<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Hotel Management System</title>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Orbitron', sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            max-width: 800px;
            width: 90%;
            padding: 40px;
            background: rgba(255, 255, 255, 0.05);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border-radius: 16px;
            border: 1px solid rgba(255, 255, 255, 0.18);
            text-align: center;
        }

        .welcome-title {
            font-size: 32px;
            margin-bottom: 10px;
            color: #00f7ff;
            text-shadow: 0 0 10px #00f7ff;
        }

        .subtitle {
            font-size: 16px;
            color: #b2bec3;
            margin-bottom: 30px;
        }

        .nav-links {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 20px;
        }

        .nav-links a {
            text-decoration: none;
            background: linear-gradient(135deg, #12c2e9, #c471ed, #f64f59);
            padding: 15px;
            border-radius: 12px;
            color: white;
            font-weight: bold;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 0 10px rgba(255,255,255,0.2);
        }

        .nav-links a:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px rgba(255,255,255,0.4);
        }
    </style>
</head>
<body>
<div class="container">
    <div class="welcome-title">🏨 Welcome to the Hotel Management System</div>
    <div class="subtitle">Manage reservations, check availability, and view reports</div>

    <div class="nav-links">
        <a href="reservationadd.jsp">➕ Add Reservation</a>
        <a href="reservationupdate.jsp">✏️ Update Reservation</a>
        <a href="reservationdelete.jsp">❌ Cancel Reservation</a>
        <a href="reservationdisplay.jsp">📋 View Reservations</a>
        <a href="report_form.jsp">📊 Generate Reports</a>
    </div>
</div>
</body>
</html>
