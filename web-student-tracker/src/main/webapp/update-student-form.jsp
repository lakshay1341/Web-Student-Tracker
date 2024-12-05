<!DOCTYPE html>
<html lang="en">

<head>
    <title>Update Student</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom Styles -->
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/add-student-style.css">
</head>

<body>
    <div id="wrapper">
        <div id="header">
            <h2>StudentHub</h2>
        </div>
    </div>

    <div id="container" class="container">
        <h3 class="text-center">Update Student</h3>

        <form action="StudentControllerServlet" method="GET" class="mt-4">
            <!-- Hidden inputs for command and student ID -->
            <input type="hidden" name="command" value="UPDATE">
            <input type="hidden" name="studentId" value="${THE_STUDENT.id}">

            <div class="mb-3">
                <label for="firstName" class="form-label">First Name:</label>
                <input type="text" name="firstName" id="firstName" 
                       class="form-control" value="${THE_STUDENT.firstName}" 
                       placeholder="Enter first name">
            </div>

            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name:</label>
                <input type="text" name="lastName" id="lastName" 
                       class="form-control" value="${THE_STUDENT.lastName}" 
                       placeholder="Enter last name">
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" name="email" id="email" 
                       class="form-control" value="${THE_STUDENT.email}" 
                       placeholder="Enter email">
            </div>

            <!-- Save Button -->
            <div class="d-grid">
                <button type="submit" class="btn save">Save</button>
            </div>
        </form>

        <!-- Back to List -->
        <div class="mt-3">
            <a href="StudentControllerServlet" class="btn btn-link">Back to List</a>
        </div>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
