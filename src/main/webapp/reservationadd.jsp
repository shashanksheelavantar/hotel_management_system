<%@ page import="java.sql.*" %>
<%@ page import="prj1.DBConnection" %>
<html>
<head>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <h2>Add Reservation</h2>
  <form method="post">
    Name: <input type="text" name="name"><br>
    Room Number: <input type="text" name="room"><br>
    Check-In: <input type="date" name="checkin"><br>
    Check-Out: <input type="date" name="checkout"><br>
    Amount: <input type="text" name="amount"><br>
    <input type="submit" value="Book">
  </form>

  <%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String name = request.getParameter("name");
        String room = request.getParameter("room");
        String checkin = request.getParameter("checkin");
        String checkout = request.getParameter("checkout");
        String amount = request.getParameter("amount");

        try (Connection conn = DBConnection.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(
              "INSERT INTO Reservations (CustomerName, RoomNumber, CheckIn, CheckOut, TotalAmount) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, name);
            ps.setString(2, room);
            ps.setString(3, checkin);
            ps.setString(4, checkout);
            ps.setDouble(5, Double.parseDouble(amount));
            ps.executeUpdate();
            out.println("<p style='color:green;'>Reservation added successfully!</p>");
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        }
    }
  %>
</body>
</html>
