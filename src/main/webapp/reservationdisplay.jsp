<%@ page import="java.sql.*" %>
<%@ page import="prj1.DBConnection" %>
<html>
<head>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <h2>Current Reservations</h2>
  <table border="1">
    <tr>
      <th>ID</th><th>Name</th><th>Room</th><th>Check-In</th><th>Check-Out</th><th>Amount</th>
    </tr>
    <%
      try (Connection conn = DBConnection.getConnection()) {
          Statement stmt = conn.createStatement();
          ResultSet rs = stmt.executeQuery("SELECT * FROM Reservations");
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
          out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
      }
    %>
  </table>
</body>
</html>