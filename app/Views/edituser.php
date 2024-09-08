<div class="container-fluid" id="container-wrapper">
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Edit User</h1>
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="./">Home</a></li>
      <li class="breadcrumb-item">User Management</li>
      <li class="breadcrumb-item active" aria-current="page">Edit User</li>
    </ol>
  </div>

  <div class="row">
    <div class="col-lg-12 mb-4">
      <!-- Edit User Form -->
      <div class="card">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">Edit User Information</h6>
        </div>
        <div class="card-body">
          <form action="<?= base_url('home/updateuser'); ?>" method="POST">
            <div class="form-group">
              <label for="username">Username</label>
              <input type="text" class="form-control" id="username" name="username" value="<?= $user->username; ?>" required>
            </div>

            <div class="form-group">
              <label for="id_level">User Level</label>
              <select class="form-control" id="id_level" name="id_level">
                <option value="1" <?= ($user->id_level == 1) ? 'selected' : ''; ?>>Admin</option>
                <option value="2" <?= ($user->id_level == 2) ? 'selected' : ''; ?>>Kepala Sekolah</option>
                <option value="3" <?= ($user->id_level == 3) ? 'selected' : ''; ?>>Kajur</option>
                <option value="4" <?= ($user->id_level == 4) ? 'selected' : ''; ?>>Guru</option>
                <option value="5" <?= ($user->id_level == 5) ? 'selected' : ''; ?>>Alumni</option>
              </select>
            </div>

            <!-- Reset Password Button -->
            <div class="form-group">
            <a href="<?= base_url('home/resetpassword/' . $user->id_user) ?>">
                        <button class="btn btn-sm btn-danger">Reset Password</button>
                      </a>
            </div>
            <input type="hidden" name="id" value="<?= $user->id_user ?>">
            <button type="submit" class="btn btn-primary">Save Changes</button>
            <a href="<?= base_url('home/user'); ?>" class="btn btn-secondary">Cancel</a>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

