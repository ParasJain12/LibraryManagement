<!DOCTYPE html>
<html>
    <head>
        <title>Student Registration</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <style>
            input:-webkit-autofill {
                transition: background-color 5000s ease-in-out 0s;
                box-shadow: 0 0 0px 1000px white inset !important;
            }
        </style>
    </head>
    <body>
        <div class="container" style="max-width: 600px; margin-top: 40px;">
            <h2 class="text-center mb-4">Student Registration</h2>
            <form action="RegisterServlet" method="post" autocomplete="off" onsubmit="return validateForm();">
                <div class="mb-3">
                    <label for="name" class="form-label">Name:</label>
                    <input type="text" id="name" name="name" class="form-control" pattern="[A-Za-z\s]+" 
                           title="Only alphabets and spaces allowed" required readonly onfocus="this.removeAttribute('readonly');">
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" id="email" name="email" class="form-control" required readonly onfocus="this.removeAttribute('readonly');">
                </div>

                <div class="mb-3">
                    <label for="role" class="form-label">Role:</label>
                    <input type="text" id="role" name="role" class="form-control" value="student" readonly>
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Password:</label>
                    <input type="password" id="password" name="password" class="form-control"
                           pattern=".{8}"
                           title="Must contain at least 8 characters" required>
                    <button class="btn btn-outline-secondary" type="button" onclick="togglePasswordVisibility()">
                        Show Password
                    </button>
                </div>

                <button type="submit" class="btn btn-primary w-100">Register</button>
            </form>
        </div>

        <script>
            function validateForm() {
                const password = document.getElementById("password").value;
                if (password.length < 8) {
                    alert("Password must be at least 8 characters long.");
                    return false;
                }
                return true;
            }
            function togglePasswordVisibility() {
                const passwordInput = document.getElementById("password");
                const type = passwordInput.getAttribute("type");
                passwordInput.setAttribute("type", type === "password" ? "text" : "password");
            }

        </script>
    </body>
</html>
