<div class="container-fluid" id="container-wrapper">
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Restore Deleted Users</h1>
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="./">Home</a></li>
      <li class="breadcrumb-item">User Management</li>
      <li class="breadcrumb-item active" aria-current="page">Restore Deleted Users</li>
    </ol>
  </div>

  <div class="row">
    <div class="col-lg-12 mb-4">
      <!-- Restore User Table -->
      <div class="card">
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold text-primary">Deleted Users</h6>
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
              <?php if (!empty($deletedUsers)) : ?>
                <?php foreach ($deletedUsers as $user) : ?>
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
                      <a href="<?= base_url('home/restoreuser1/' . $user->id_user) ?>" class="btn btn-sm btn-warning">Restore</a>
                    </td>
                  </tr>
                <?php endforeach; ?>
              <?php else : ?>
                <tr>
                  <td colspan="4" class="text-center">No deleted users found.</td>
                </tr>
              <?php endif; ?>
            </tbody>
          </table>
        </div>
        <div class="card-footer"></div>
      </div>
    </div>
  </div>
</div>
