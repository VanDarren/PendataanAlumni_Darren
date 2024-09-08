<div class="container-fluid" id="container-wrapper">
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Restore Alumni</h1>
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="Dashboard">Home</a></li>
      <li class="breadcrumb-item active" aria-current="page">Restore Alumni</li>
    </ol>
  </div>

  <div class="container mt-5">
    <div class="row">
      <div class="col-lg-12 mb-4">
        <div class="card">
          <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Deleted Alumni</h6>
          </div>
          <div class="table-responsive">
            <table class="table align-items-center table-flush">
              <thead class="thead-light">
                <tr>
                  <th>Nama Alumni</th>
                  <th>Jurusan</th>
                  <th>NIS</th>
                  <th>Tahun Lulus</th>
                  <th>Pekerjaan</th>
                  <th>Perusahaan</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                <?php foreach($deletedAlumni as $alumni): ?>
                  <tr>
                    <td><?= $alumni->nama_alumni; ?></td>
                    <td><?= $alumni->jurusan; ?></td>
                    <td><?= $alumni->NIS; ?></td>
                    <td><?= $alumni->tahun_lulus; ?></td>
                    <td><?= $alumni->pekerjaan; ?></td>
                    <td><?= $alumni->perusahaan; ?></td>
                    <td>
                      <div class="btn-group" role="group">
                        <!-- Restore Button -->
                        <a href="restorealumni1/<?= $alumni->id_alumni ?>" class="btn btn-sm btn-success" onclick="return confirm('Are you sure you want to restore this alumni?');">Restore</a>
                      </div>
                    </td>
                  </tr>
                <?php endforeach; ?>
              </tbody>
            </table>
          </div>
          <div class="card-footer"></div>
        </div>
      </div>
    </div>
  </div>
</div>
