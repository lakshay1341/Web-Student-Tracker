<!DOCTYPE html>
<html lang="en">

<head>
    <title>Add Student</title>
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
        <h3 class="text-center">Add Student</h3>

        <form action="StudentControllerServlet" method="GET" class="mt-4">
            <!-- Hidden input for command -->
            <input type="hidden" name="command" value="ADD">

            <div class="mb-3">
                <label for="firstName" class="form-label">First Name:</label>
                <input type="text" name="firstName" id="firstName" class="form-control" placeholder="Enter first name">
            </div>

            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name:</label>
                <input type="text" name="lastName" id="lastName" class="form-control" placeholder="Enter last name">
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" name="email" id="email" class="form-control" placeholder="Enter email">
            </div>

            <!-- Submit Button -->
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
