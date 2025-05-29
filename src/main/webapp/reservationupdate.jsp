<%@ page import="java.sql.*" %>
<%@ page import="prj1.DBConnection" %>
<html>
<head><link rel="stylesheet" href="style.css"></head>
<body>
  <h2>Update Reservation</h2>
  <form method="post">
    Reservation ID: <input type="text" name="id"><br>
    New Check-In Date: <input type="date" name="checkin"><br>
    New Check-Out Date: <input type="date" name="checkout"><br>
    <input type="submit" value="Update">
  </form>

  <%
    if (request.getMethod().equalsIgnoreCase("post")) {
        try (Connection conn = DBConnection.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(
              "UPDATE Reservations SET CheckIn=?, CheckOut=? WHERE ReservationID=?");
            ps.setString(1, request.getParameter("checkin"));
            ps.setString(2, request.getParameter("checkout"));
            ps.setInt(3, Integer.parseInt(request.getParameter("id")));
            int updated = ps.executeUpdate();
            out.println("<p style='color:green;'>" + updated + " reservation(s) updated.</p>");
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        }
    }
  %>
</body>
</html>