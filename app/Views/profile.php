<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#showPassword").click(function(){
                var passwordField = $("#password");
                var type = passwordField.attr("type") === "password" ? "text" : "password";
                passwordField.attr("type", type);
                $(this).text(type === "password" ? "Show Password" : "Hide Password");
            });
        });
    </script>
</head>

<body>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card mt-5">
                    <div class="card-header">
                        <h3 class="text-center">User Profile</h3>
                    </div>
                    <div class="card-body">
                        <form action="<?= base_url('home/updateprofile/' . $user->id_user) ?>" method="post">
                            <!-- Username Field -->
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" name="username" value="<?= htmlspecialchars($user->username) ?>" required>
                            </div>

                            <!-- Password Field -->
                            <div class="form-group">
                                <label for="password">New Password</label>
                                <div class="input-group">
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter new password">
                                    <div class="input-group-append">
                                        <button type="button" class="btn btn-outline-secondary" id="showPassword">Show Password</button>
                                    </div>
                                </div>
                            </div>

                            <!-- ID Level (Role) Field -->
                            <div class="form-group">
                                <label for="id_level">Level</label>
                                <input type="text" class="form-control" id="id_level" 
                                       value="<?php
                                            switch ($user->id_level) {
                                                case 1: echo "Admin"; break;
                                                case 2: echo "Kepala Sekolah"; break;
                                                case 3: echo "Kajur"; break;
                                                case 4: echo "Guru"; break;
                                                case 5: echo "Alumni"; break;
                                                default: echo "Unknown"; break;
                                            }
                                       ?>" 
                                       readonly>
                            </div>

                            <!-- Submit Button -->
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Update Profile</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
