<%@ page import="java.util.List" %>
<%@ page import="com.lakshay.web.jdbc.Student" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Tracker App</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>

    <div id="wrapper">
        <div id="header">
            <h2>FooBar Club</h2>
        </div>
    </div>

    <div id="container">
        <div id="content">
            <!-- Add Student Button -->
            <input type="button" value="Add Student" 
                   onclick="window.location.href='add-student-form.jsp'; return false;" 
                   class="add-student-button" />

            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>

                <% 
                    // Fetch the student list
                    List<Student> studentList = (List<Student>) request.getAttribute("STUDENT_LIST");
                    if (studentList != null) {
                        for (Student tempStudent : studentList) {
                %>
                <tr>
                    <td><%= tempStudent.getFirstName() %></td>
                    <td><%= tempStudent.getLastName() %></td>
                    <td><%= tempStudent.getEmail() %></td>
                    <td>
                        <!-- Update Link -->
                        <a href="StudentControllerServlet?command=LOAD&studentId=<%= tempStudent.getId() %>">Update</a> 
                        | 
                        <!-- Delete Link -->
                        <a href="StudentControllerServlet?command=DELETE&studentId=<%= tempStudent.getId() %>" 
                           onclick="return confirm('Are you sure you want to delete this student?');">
                            Delete
                        </a>
                    </td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="4">No students found.</td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>

</body>
</html>
