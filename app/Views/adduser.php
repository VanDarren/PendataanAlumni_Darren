<div class="container-fluid" id="container-wrapper">
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Add User</h1>
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="./">Home</a></li>
      <li class="breadcrumb-item"><a href="user_management.php">User Management</a></li>
      <li class="breadcrumb-item active" aria-current="page">Add User</li>
    </ol>
  </div>

  <div class="row">
    <div class="col-lg-6 mb-4">
      <!-- Add User Form -->
      <div class="card">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">Add New User</h6>
        </div>
        <div class="card-body">
          <form action="aksiadduser" method="POST">
            <div class="form-group">
              <label for="username">Username</label>
              <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="form-group">
              <label for="id_level">Level</label>
              <select class="form-control" id="id_level" name="id_level" required>
                <option value="" disabled selected>Select Level</option>
                <option value="2">Kepala Sekolah</option>
                <option value="3">Kajur</option>
                <option value="4">Guru</option>
                <option value="5">Alumni</option>
              </select>
            </div>
            <button type="submit" class="btn btn-primary">Add User</button>
            <a href="user" class="btn btn-secondary">Cancel</a>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
