<%@ page import="java.util.List" %>
<%@ page import="com.lakshay.web.jdbc.Student" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Student Tracker App</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        /* Header Styling */
        #header {
            background-color: #0056b3; /* Deep Blue */
            color: white;
            text-align: center;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        #header h2 {
            margin: 0;
            font-size: 36px;
            font-weight: 400;
        }

        /* Button Styling */
        .add-student-button {
            background-color: #007bff; /* Medium Blue */
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .add-student-button:hover {
            background-color: #0056b3; /* Darker Blue */
            transform: translateY(-2px);
        }

        /* Table Styling */
        .table {
            background-color: #f9f9f9; /* Light Gray Background */
            border: 1px solid #dee2e6; /* Light Border */
            border-radius: 5px;
        }

        .table th {
            background-color: #007bff; /* Medium Blue */
            color: white;
            font-weight: bold;
            text-align: left;
        }

        .table tbody tr:nth-child(odd) {
            background-color: #f1f1f1; /* Slightly Darker Gray for Alternating Rows */
        }

        .table tbody tr:hover {
            background-color: #e6f7ff; /* Light Blue Hover Effect */
        }

        /* Action Buttons */
        .btn-warning {
            background-color: #ffc107; /* Warm Yellow */
            color: white;
            border: none;
        }

        .btn-warning:hover {
            background-color: #e0a800; /* Slightly Darker Yellow */
        }

        .btn-danger {
            background-color: #dc3545; /* Soft Red */
            color: white;
            border: none;
        }

        .btn-danger:hover {
            background-color: #bd2130; /* Slightly Darker Red */
        }
    </style>
</head>
<body>

    <div id="wrapper">
        <div id="header">
            <h2>StudentHub</h2>
        </div>
    </div>

    <div id="container" class="container">
        <div id="content" class="mt-4">
            <!-- Add Student Button -->
            <div class="mb-3">
                <input type="button" value="Add Student" 
                       onclick="window.location.href='add-student-form.jsp'; return false;" 
                       class="add-student-button" />
            </div>

            <!-- Student Table -->
            <table class="table table-bordered table-hover shadow-sm">
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
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
                            <a href="StudentControllerServlet?command=LOAD&studentId=<%= tempStudent.getId() %>" 
                               class="btn btn-sm btn-warning">Update</a>
                            <!-- Delete Link -->
                            <a href="StudentControllerServlet?command=DELETE&studentId=<%= tempStudent.getId() %>" 
                               class="btn btn-sm btn-danger" 
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
                        <td colspan="4" class="text-center">No students found.</td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
