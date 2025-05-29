#  Hotel Management System

This project is a simple **Hotel Management System** built using JSP and Java.  
It is designed to handle hotel operations like room reservations, updates, cancellations, and reporting.  
The goal of the system is to streamline daily hotel tasks, ensure data accuracy, and provide a user-friendly interface for staff.  
It supports basic CRUD operations on reservations and includes a clean visual layout for managing hotel services.

---




```
## FILE_FORMAT

webapp/
├── META-INF/
├── WEB-INF/
├── index.jsp
├── report_form.jsp
├── report_result.jsp
├── reports.jsp
├── reservationadd.jsp
├── reservationdelete.jsp
├── reservationdisplay.jsp
├── reservationupdate.jsp
├── style.css


```







- [Add Reservation](https://github.com/shashanksheelavantar/hotel_management_system/blob/main/output/add_reservation.png)
- [Cancel Reservation](https://github.com/shashanksheelavantar/hotel_management_system/blob/main/output/cancel_reservation.png)
- [Current Reservation](https://github.com/shashanksheelavantar/hotel_management_system/blob/main/output/current_reservation.png)
- [Home Page](https://github.com/shashanksheelavantar/hotel_management_system/blob/main/output/home_page.png)
- [Report Result](https://github.com/shashanksheelavantar/hotel_management_system/blob/main/output/report_result.png)
- [Update Reservation](https://github.com/shashanksheelavantar/hotel_management_system/blob/main/output/update_reservation.png)

- ```
  ## Database Schema – productdb

```sql
CREATE DATABASE productdb;
USE productdb;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT
);


  ```

