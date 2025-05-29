<%@ page import="java.sql.*" %>
<%@ page import="prj1.DBConnection" %>
<html>
<head><link rel="stylesheet" href="style.css"></head>
<body>
  <h2>Report Result</h2>
  <%
    String start = request.getParameter("start");
    String end = request.getParameter("end");

    try (Connection conn = DBConnection.getConnection()) {
        PreparedStatement ps = conn.prepareStatement(
            "SELECT * FROM Reservations WHERE CheckIn BETWEEN ? AND ?");
        ps.setString(1, start);
        ps.setString(2, end);
        ResultSet rs = ps.executeQuery();
  %>
  <table border="1">
    <tr><th>ID</th><th>Name</th><th>Room</th><th>Check-In</th><th>Check-Out</th><th>Amount</th></tr>
  <%
      while (rs.next()) {
  %>
    <tr>
      <td><%= rs.getInt("ReservationID") %></td>
      <td><%= rs.getString("CustomerName") %></td>
      <td><%= rs.getString("RoomNumber") %></td>
      <td><%= rs.getDate("CheckIn") %></td>
      <td><%= rs.getDate("CheckOut") %></td>
      <td><%= rs.getDouble("TotalAmount") %></td>
    </tr>
  <%
      }
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
    }
  %>
  </table>
</body>
</html>