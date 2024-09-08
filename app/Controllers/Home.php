<?php

namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\darrenmodel;
date_default_timezone_set('Asia/Jakarta');

class Home extends BaseController
{

	public function setting()
	{
		$id_level = session()->get('id_level');	
		if (!$id_level) {
			return redirect()->to('home/login');
		} elseif ($id_level != 1) {
			return redirect()->to('home/error404'); 
		} else {
			$model = new darrenmodel();
			$where = array('id_setting' => 1);
			$data['darren2'] = $model->getwhere('setting', $where);

			$id_user = session()->get('id');
    $activityLog = [
        'id_user' => $id_user,
        'activity' => 'Masuk Menu Setting',
        'time' => date('Y-m-d H:i:s')
    ];
    $model->logActivity($activityLog);

			echo view('header', $data);
			echo view('menu', $data);
			echo view('setting', $data);
			echo view('footer');
		}
	}
	

	public function editsetting()
{
    $model = new darrenmodel();
    $a = $this->request->getPost('namaweb');
    $tab = $this->request->getFile('tab');
    $menu = $this->request->getFile('menu');
    $login = $this->request->getFile('login');

    // Simpan nama website
    $data = ['namawebsite' => $a];

    // Proses upload untuk tab icon
    if ($tab && $tab->isValid() && !$tab->hasMoved()) {
        $tab->move(ROOTPATH . 'public/img/', $tab->getName());
        $data['icontab'] = $tab->getName(); // Simpan nama file tab icon ke $data
    }

    // Proses upload untuk menu icon
    if ($menu && $menu->isValid() && !$menu->hasMoved()) {
        $menu->move(ROOTPATH . 'public/img/', $menu->getName());
        $data['iconmenu'] = $menu->getName(); // Simpan nama file menu icon ke $data
    }

    // Proses upload untuk login icon
    if ($login && $login->isValid() && !$login->hasMoved()) {
        $login->move(ROOTPATH . 'public/img/', $login->getName());
        $data['iconlogin'] = $login->getName(); // Simpan nama file login icon ke $data
    }

    // Update data ke database
    $where = ['id_setting' => 1];
    $model->edit('setting', $data, $where); 

    // Redirect ke halaman setting
    return redirect()->to('home/setting');
}


	public function error404()
	{
			$model = new darrenmodel();
			$where = array('id_setting' => 1);
			$data['darren2'] = $model->getwhere('setting', $where);
			echo view('header', $data);
			echo view('404', $data);
	}

    public function dashboard()
    {
        
		$id_level = session()->get('id_level');	
		if (!$id_level) {
			return redirect()->to('home/login');
		} else {
        $model = new darrenmodel();

        // Ambil data pengguna yang sedang login
        $userId = session()->get('id_user'); // Asumsikan Anda menyimpan id_user di session
        $username = session()->get('username');

        // Ambil data statistik
        $totalAlumni = $model->getTotalAlumni(); // Menggunakan model tanpa konstruktor
        $alumniByJurusan = $model->getAlumniCountByJurusan(); // Menggunakan model tanpa konstruktor
        $alumniList = $model->getAlumniList(); // Menggunakan model tanpa konstruktor

        $data = [
            'username' => $username,
            'totalAlumni' => $totalAlumni,
            'alumniByJurusan' => $alumniByJurusan,
            'alumniList' => $alumniList,
        ];
		$where = array('id_setting' => 1);
		$data['darren2'] = $model->getwhere('setting', $where);

		$id_user = session()->get('id');
		$activityLog = [
			'id_user' => $id_user,
			'activity' => 'Masuk Menu Dashboard',
			'time' => date('Y-m-d H:i:s')
		];
		$model->logActivity($activityLog);
        echo view('header',$data);
        echo view('menu',$data);
        echo view('dashboard', $data);
        echo view('footer');
	}
    }


	public function alumni()
	{
		$id_level = session()->get('id_level');	
		if (!$id_level) {
			return redirect()->to('home/login');
		} else {
		$model = new darrenmodel();
		$data['darren'] = $model->tampil('alumni');

		$where = array('id_setting' => 1);
			$data['darren2'] = $model->getwhere('setting', $where);

			$id_user = session()->get('id');
    $activityLog = [
        'id_user' => $id_user,
        'activity' => 'Masuk Menu Alumni',
        'time' => date('Y-m-d H:i:s')
    ];
    $model->logActivity($activityLog);
		echo view('header',$data);
		echo view('menu',$data);
		echo view('alumni',$data);
		echo view('footer');
		}
	}

	public function alumnidata()
	{
		$id_level = session()->get('id_level');	
		if (!$id_level) {
			return redirect()->to('home/login');
		} else {
		$model = new darrenmodel();
		$data['darren'] = $model->tampil2('alumni');

		$where = array('id_setting' => 1);
			$data['darren2'] = $model->getwhere('setting', $where);

			$id_user = session()->get('id');
    $activityLog = [
        'id_user' => $id_user,
        'activity' => 'Masuk Menu Data Alumni',
        'time' => date('Y-m-d H:i:s')
    ];
    $model->logActivity($activityLog);
		echo view('header',$data);
		echo view('menu',$data);
		echo view('alumnidata',$data);
		echo view('footer');
		}
	}

	public function login()
	{
		$model = new darrenmodel();
		$where = array('id_setting' => 1);
		$data['darren2'] = $model->getwhere('setting', $where);
		echo view('header',$data);
		echo view('login',$data);
	}

	public function addalumni()
	{
		$id_level = session()->get('id_level');	
		if (!$id_level) {
			return redirect()->to('home/login');
		} elseif ($id_level != 1) {
			return redirect()->to('home/error404'); 
		} else {
		$model = new darrenmodel();
		$where = array('id_setting' => 1);
		$data['darren2'] = $model->getwhere('setting', $where);
		echo view('header',$data);
		echo view('menu',$data);
		echo view('addalumni');
		echo view('footer');
		}
	}


	
	public function aksiaddalumni()
	{
		$model = new darrenmodel;
		$nama = $this->request->getPost('nama');
		$jurusan = $this->request->getPost('jurusan');
		$nis = $this->request->getPost('nis');
		$tahun = $this->request->getPost('tahun');
		$pekerjaan = $this->request->getPost('pekerjaan');
		$perusahaan = $this->request->getPost('perusahaan');
		$ltd = $this->request->getPost('latitude');
		$lng = $this->request->getPost('longitude');
        $id_user = session()->get('id');
		$tabel = array(
			'nama_alumni' => $nama,
			'jurusan' => $jurusan,
			'NIS' => $nis,
			'tahun_lulus' => $tahun,
			'pekerjaan' => $pekerjaan,
			'perusahaan' => $perusahaan,
			'latitude' => $ltd,
			'longitude' => $lng,
			'id_user' => $id_user,
            'created_at' => date('Y-m-d H:i:s'), 
            'created_by' => $id_user
		);
     
		
		$model->tambah('alumni', $tabel);
		
		$id_user = session()->get('id');
    $activityLog = [
        'id_user' => $id_user,
        'activity' => 'Menambahkan Data Alumni',
        'time' => date('Y-m-d H:i:s')
    ];
    $model->logActivity($activityLog);
		return redirect()->to('home/dashboard');
	}

	public function aksi_login()
{
    $name = $this->request->getPost('username');
    $pw = $this->request->getPost('password');
    $captchaResponse = $this->request->getPost('g-recaptcha-response');
    $backupCaptcha = $this->request->getPost('backup_captcha');

    $secretKey = '6LdFhCAqAAAAAM1ktawzN-e2ebDnMnUQgne7cy53'; // Replace with your actual secret key
    $recaptchaSuccess = false;

    $captchaModel = new darrenmodel();

    if ($this->isInternetAvailable()) {
        // Verify reCAPTCHA
        $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$secretKey&response=$captchaResponse");
        $responseKeys = json_decode($response, true);
        $recaptchaSuccess = $responseKeys["success"];
    }
    
    if ($recaptchaSuccess) {
        // Hash the password using md5
        $hashedPassword = md5($pw);

        $where = [
            'username' => $name,
            'password' => $hashedPassword,
        ];

        $model = new darrenmodel();
        $check = $model->getWhere('user', $where);

        if ($check) {
            session()->set('username', $check->username);
            session()->set('id', $check->id_user);
            session()->set('id_level', $check->id_level);

            $id_user = session()->get('id');
            $activityLog = [
                'id_user' => $id_user,
                'activity' => 'Login',
                'time' => date('Y-m-d H:i:s')
            ];
            $model->logActivity($activityLog);
            return redirect()->to('home/dashboard');
        } else {
            return redirect()->to('home/login')->with('error', 'Invalid username or password.');
        }
    } else {
        // Offline CAPTCHA validation
        $storedCaptcha = session()->get('captcha_code'); // Retrieve stored CAPTCHA from session
        
        // Debugging: Display stored and user-inputted CAPTCHA values
        error_log('Stored CAPTCHA: ' . $storedCaptcha);
        error_log('User Input CAPTCHA: ' . $backupCaptcha);

        if ($storedCaptcha !== null) {
            if ($storedCaptcha === $backupCaptcha) {
                // CAPTCHA valid
                // Hash the password using md5
                $hashedPassword = md5($pw);

                $where = [
                    'username' => $name,
                    'password' => $hashedPassword,
                ];

                $model = new darrenmodel();
                $check = $model->getWhere('user', $where);

                if ($check) {
                    session()->set('username', $check->username);
                    session()->set('id', $check->id_user);
                    session()->set('level', $check->level);

                    $id_user = session()->get('id');
                    $activityLog = [
                        'id_user' => $id_user,
                        'activity' => 'Login',
                        'time' => date('Y-m-d H:i:s')
                    ];
                    $model->logActivity($activityLog);
                    return redirect()->to('home/dashboard');
                } else {
                    return redirect()->to('home/login')->with('error', 'Invalid username or password.');
                }
            } else {
                // Invalid CAPTCHA
                return redirect()->to('home/login')->with('error', 'Invalid CAPTCHA.');
            }
        } else {
            return redirect()->to('home/login')->with('error', 'CAPTCHA session is not set.');
        }
    }
}



private function isInternetAvailable()
{
	$connected = @fsockopen("www.google.com", 80); 
	if ($connected){
		fclose($connected);
		return true;
	}
	return false;
}

public function generateCaptcha()
{
	$code = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 6);

	// Store the CAPTCHA code in the session
	session()->set('captcha_code', $code);

	// Generate the image
	$image = imagecreatetruecolor(120, 40);
	$bgColor = imagecolorallocate($image, 255, 255, 255);
	$textColor = imagecolorallocate($image, 0, 0, 0);

	imagefilledrectangle($image, 0, 0, 120, 40, $bgColor);
	imagestring($image, 5, 10, 10, $code, $textColor);

	// Set the content type header - in this case image/png
	header('Content-Type: image/png');

	// Output the image
	imagepng($image);

	// Free up memory
	imagedestroy($image);
}


	public function logout()
{
	$model = new darrenmodel();
	session()->destroy();
	
	$id_user = session()->get('id');
    $activityLog = [
        'id_user' => $id_user,
        'activity' => 'Logout',
        'time' => date('Y-m-d H:i:s')
    ];
    $model->logActivity($activityLog);
	return redirect()->to('home/login');
}

public function user()
{
	$id_level = session()->get('id_level');	
		if (!$id_level) {
			return redirect()->to('home/login');
		} elseif ($id_level != 1) {
			return redirect()->to('home/error404'); 
		} else {
    $model = new darrenmodel();
    $session = session();
    $level = $session->get('id_level');
    $data['darren'] = $model->tampil2('user');
    $data['level'] = $level; 
	$where = array('id_setting' => 1);
	$data['darren2'] = $model->getwhere('setting', $where);

	$id_user = session()->get('id');
    $activityLog = [
        'id_user' => $id_user,
        'activity' => 'Masuk Menu User',
        'time' => date('Y-m-d H:i:s')
    ];
    $model->logActivity($activityLog);
    echo view('header',$data);
    echo view('menu',$data);
    echo view('user', $data);
    echo view('footer');
		}
}

public function adduser()
{
	$id_level = session()->get('id_level');	
		if (!$id_level) {
			return redirect()->to('home/login');
		} elseif ($id_level != 1) {
			return redirect()->to('home/error404'); 
		} else {
    $model = new darrenmodel();

	$where = array('id_setting' => 1);
	$data['darren2'] = $model->getwhere('setting', $where);


    echo view('header',$data);
    echo view('menu',$data);
    echo view('adduser');
    echo view('footer');
		}
}
	
public function aksiadduser()
{
	$model = new darrenmodel;
	$nama = $this->request->getPost('username');
	$password = $this->request->getPost('password');
	$level = $this->request->getPost('id_level');
	
	$id_user = session()->get('id');
	$tabel = array(
		'username' => $nama,
		'password' => md5($password),
		'id_level' => $level,
		'created_at' => date('Y-m-d H:i:s'), 
		'created_by' => $id_user
	);
 
	$model->tambah('user', $tabel);
	
	$id_user = session()->get('id');
$activityLog = [
	'id_user' => $id_user,
	'activity' => 'Menambahkan User baru',
	'time' => date('Y-m-d H:i:s')
];
$model->logActivity($activityLog);
	return redirect()->to('home/user');
}

public function deleteuser($id)
	{
        $model = new darrenmodel();
        $id_user = session()->get('id');

        $data = [
            'deleted_at' => date('Y-m-d H:i:s'),
            'deleted_by' => $id_user
        ];

        $model->edit('user', $data, ['id_user' => $id]);
    
        $id_user = session()->get('id');
        $activityLog = [
            'id_user' => $id_user,
            'activity' => 'Hapus User',
            'time' => date('Y-m-d H:i:s')
        ];
        $model->logActivity($activityLog);
    
        return redirect()->to('home/user');
	}

	public function deletealumni($id)
	{
        $model = new darrenmodel();
        $id_user = session()->get('id');

        $data = [
            'deleted_at' => date('Y-m-d H:i:s'),
            'deleted_by' => $id_user
        ];

        $model->edit('alumni', $data, ['id_alumni' => $id]);
    
        $id_user = session()->get('id');
        $activityLog = [
            'id_user' => $id_user,
            'activity' => 'Hapus Alumni',
            'time' => date('Y-m-d H:i:s')
        ];
        $model->logActivity($activityLog);
    
        return redirect()->to('home/alumnidata');
	}

	public function restoreuser()
{
	$id_level = session()->get('id_level');	
		if (!$id_level) {
			return redirect()->to('home/login');
		} elseif ($id_level != 1) {
			return redirect()->to('home/error404'); 
		} else {
    $model = new darrenmodel();
    $data['deletedUsers'] = $model->query('SELECT * FROM user WHERE deleted_at IS NOT NULL');

	$where = array('id_setting' => 1);	
	$data['darren2'] = $model->getwhere('setting', $where);


    echo view('header',$data);
    echo view('menu',$data);
    echo view('restoreuser',$data);
    echo view('footer');
		}
}

public function restoreuser1($id) {
    $model = new darrenmodel();
    
    $data = [
        'deleted_at' => null,
        'deleted_by' => null,
      
    ];
    $id_user = session()->get('id');
    $activityLog = [
        'id_user' => $id_user,
        'activity' => 'Restore User',
        'time' => date('Y-m-d H:i:s')
    ];
    $model->logActivity($activityLog);
   
    $model->edit('user', $data, ['id_user' => $id]);

    return redirect()->to('home/restoreuser');
}

public function restorealumni()
{
	$id_level = session()->get('id_level');	
		if (!$id_level) {
			return redirect()->to('home/login');
		} elseif ($id_level != 1) {
			return redirect()->to('home/error404'); 
		} else {
    $model = new darrenmodel();
    $data['deletedAlumni'] = $model->query('SELECT * FROM alumni WHERE deleted_at IS NOT NULL');

	$where = array('id_setting' => 1);	
	$data['darren2'] = $model->getwhere('setting', $where);


    echo view('header',$data);
    echo view('menu',$data);
    echo view('restorealumni',$data);
    echo view('footer');
		}
}

public function restorealumni1($id) {
    $model = new darrenmodel();
    
    $data = [
        'deleted_at' => null,
        'deleted_by' => null,
      
    ];
    $id_user = session()->get('id');
    $activityLog = [
        'id_user' => $id_user,
        'activity' => 'Restore Alumni',
        'time' => date('Y-m-d H:i:s')
    ];
    $model->logActivity($activityLog);
   
    $model->edit('alumni', $data, ['id_alumni' => $id]);

    return redirect()->to('home/restorealumni');
}

public function edituser($id)
{
	$id_level = session()->get('id_level');	
		if (!$id_level) {
			return redirect()->to('home/login');
		} elseif ($id_level != 1) {
			return redirect()->to('home/error404'); 
		} else {
    $model = new darrenmodel();

    $where = array('id_user' => $id);
		$data['user'] = $model->getWhere('user', $where);

		$where = array('id_setting' => 1);
		$data['darren2'] = $model->getwhere('setting', $where);


    echo view('header',$data);
	echo view('menu',$data);
    echo view('edituser',$data);
    echo view('footer');
		}
}


public function updateuser()
{
    $model = new darrenmodel();
    
    $a = $this->request->getPost('username');
    $b = $this->request->getPost('id_level');
    $id = $this->request->getPost('id');
    $id_user = session()->get('id');
    
   $backupWhere = ['id_user' => $id];
   $existingBackup = $model->getWhere('user_backup', $backupWhere);

   if ($existingBackup) {
	   // Hapus data lama di produk_backup jika ada
	   $model->hapus('user_backup', $backupWhere);
   }

   $produkLama = $model->getProductById($id);
   $backupData = (array) $produkLama;
   $model->tambah('user_backup', $backupData);

    // Update user
    $isi = array(
        'username' => $a,
        'id_level' => $b,
        'edited_at' => date('Y-m-d H:i:s'), 
        'edited_by' => $id_user
    );

    $where = array('id_user' => $id);
    $model->edit('user', $isi, $where);

    // Log aktivitas
    $activityLog = [
        'id_user' => $id_user,
        'activity' => 'Edit User',
        'time' => date('Y-m-d H:i:s')
    ];
    $model->logActivity($activityLog);

    return redirect()->to('home/user')->with('status', 'User updated successfully');
}

public function restoreu($id)
{
    $model = new darrenmodel();
    
    $backupData = $model->getWhere('user_backup', ['id_user' => $id]);

    if ($backupData) {
       
        $restoreData = (array) $backupData;
        unset($restoreData['id_user']);
        $model->edit('user', $restoreData, ['id_user' => $id]);
        $model->hapus('user_backup', ['id_user' => $id]);
    }

    return redirect()->to('home/redituser');
}

public function redituser()
{
    $model = new darrenmodel();

    $where = array('id_setting' => '1');
    $data['darren2'] = $model->getwhere('setting', $where);

    $data['backupUser'] = $model->getBackupData();

    // Load the views and pass the data
    echo view('header',$data);
    echo view('menu',$data);
    echo view('redituser', $data);
    echo view('footer');
}

public function logactivity()
{
	$id_level = session()->get('id_level');	
		if (!$id_level) {
			return redirect()->to('home/login');
		} elseif ($id_level != 1) {
			return redirect()->to('home/error404'); 
		} else {
    $model = new darrenmodel();
    $data['logs'] = $model->getLogData();
		$where = array('id_setting' => 1);
		$data['darren2'] = $model->getwhere('setting', $where);

		$id_user = session()->get('id');
		$activityLog = [
			'id_user' => $id_user,
			'activity' => 'Masuk Log Activity',
			'time' => date('Y-m-d H:i:s')
		];
		$model->logActivity($activityLog);
		
    echo view('header',$data);
    echo view('menu',$data);
    echo view('log', $data);
    echo view('footer');
		}
}

public function profile()
{
	$id_level = session()->get('id_level');	
	if (!$id_level) {
		return redirect()->to('home/login');
	} else {
        $model = new darrenmodel;
        
        $where = array('id_setting' => '1');
        $data['darren2'] = $model->getwhere('setting', $where);

        $where = array('id_user' => session()->get('id'));
        $data['user'] = $model->getWhere('user', $where); // Assuming it returns a single result object
		$id_user = session()->get('id');
		$activityLog = [
			'id_user' => $id_user,
			'activity' => 'Masuk Menu Profile',
			'time' => date('Y-m-d H:i:s')
		];
		$model->logActivity($activityLog);
        echo view('header', $data);
        echo view('menu', $data);
        echo view('profile', $data);


}
}

public function updateprofile($id) {
    $model = new darrenmodel();
	$id_user = session()->get('id');
    $a = $this->request->getPost('username');
	$b = $this->request->getPost('password');
    $data = [
        'username' => $a,
		'password' => md5($b),	
		'edited_at' => date('Y-m-d H:i:s'),
		'edited_by' => $id_user,
    ];
	$model->edit('user', $data, ['id_user' => $id]);

    $activityLog = [
        'id_user' => $id_user,
        'activity' => 'Edit Profile',
        'time' => date('Y-m-d H:i:s')
    ];
    $model->logActivity($activityLog);
   
    

    return redirect()->to('home/profile');
}

public function resetPassword($id) {
    $model = new darrenmodel();
    $id_user = session()->get('id');

    // Reset password to default value "SPH123"
    $defaultPassword = password_hash('SPH123', PASSWORD_DEFAULT); // Hash the password

    // Prepare the data for the update
    $data = [
        'password' => $defaultPassword,
        'edited_at' => date('Y-m-d H:i:s'),
        'edited_by' => $id_user,
    ];

    // Update the user password in the database
    $model->edit('user', $data, ['id_user' => $id]);

    // Log the activity
    $activityLog = [
        'id_user' => $id_user,
        'activity' => 'Reset Password',
        'time' => date('Y-m-d H:i:s')
    ];
    $model->logActivity($activityLog);

    // Redirect to the profile page with a success message
    return redirect()->to('home/user')->with('message', 'Password reset successfully to default.');
}


}

