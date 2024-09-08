<div class="container-fluid" id="container-wrapper">
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">User Management</h1>
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="./">Home</a></li>
      <li class="breadcrumb-item">User Management</li>
      <li class="breadcrumb-item active" aria-current="page">User Table</li>
    </ol>
  </div>

  <div class="row">
    <div class="col-lg-12 mb-4">
      <!-- User Table -->
      <div class="card">
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold text-primary">User Table</h6>
          <?php if(session()->get('id_level') == '1' ){ ?>
            <!-- Group Add User and Restore User buttons in a div to keep them side by side -->
            <div>
              <a href="adduser" class="btn btn-sm btn-success">Add User</a>
              <a href="restoreuser" class="btn btn-sm btn-warning">Restore User</a> 
              <a href="redituser" class="btn btn-sm btn-primary">Restore Edit User</a>
            </div>
          <?php } ?>
        </div>
        <div class="table-responsive">
          <table class="table align-items-center table-flush">
            <thead class="thead-light">
              <tr>
                <th>Username</th>
                <th>Level</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($darren as $user) : ?>
                <?php
                // Show all users for admins, otherwise hide admins from non-admins
                if ($user->id_level != 1 || ($level == 1 && $user->id_level == 1)) : 
                ?>
                  <tr>
                    <td><?= $user->username ?></td>

                    <td>
                      <?php
                      switch ($user->id_level) {
                        case 1:
                          echo "Admin";
                          break;
                        case 2:
                          echo "Kepala Sekolah";
                          break;
                        case 3:
                          echo "Kajur";
                          break;
                        case 4:
                          echo "Guru";
                          break;
                        case 5:
                          echo "Alumni";
                          break;
                      }
                      ?>
                    </td>
                    <td>
                    <a href="<?= base_url('home/edituser/' . $user->id_user) ?>">
                        <button class="btn btn-sm btn-primary">Edit</button>
                      </a>
                      <a href="<?= base_url('home/deleteuser/' . $user->id_user) ?>">
                        <button class="btn btn-sm btn-danger">Delete</button>
                      </a>
                    </td>
                  </tr>
                <?php endif; ?>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
        <div class="card-footer"></div>
      </div>
    </div>
  </div>
</div>
