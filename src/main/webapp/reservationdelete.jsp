<%@ page import="java.sql.*" %>
<%@ page import="prj1.DBConnection" %>
<html>
<head><link rel="stylesheet" href="style.css"></head>
<body>
  <h2>Cancel Reservation</h2>
  <form method="post">
    Reservation ID: <input type="text" name="id"><br>
    <input type="submit" value="Cancel">
  </form>

  <%
    if (request.getMethod().equalsIgnoreCase("post")) {
        try (Connection conn = DBConnection.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(
              "DELETE FROM Reservations WHERE ReservationID=?");
            ps.setInt(1, Integer.parseInt(request.getParameter("id")));
            int deleted = ps.executeUpdate();
            out.println("<p style='color:green;'>" + deleted + " reservation(s) deleted.</p>");
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        }
    }
  %>
</body>
</html>