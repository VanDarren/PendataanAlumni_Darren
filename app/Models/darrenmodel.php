<?php

namespace App\Models;

use CodeIgniter\Model;

class darrenmodel extends Model

{

    public function query($query)
{
    return $this->db->query($query)
                      ->getResult();

}

	public function tampil($tabel){
     return $this->db->table($tabel)  
     				 ->get()
          			 ->getResult();   
	}

    public function tampil2($tabel) {
        return $this->db->table($tabel)
                         ->where('deleted_at', NULL) 
                         ->get()
                         ->getResult();
    }

   
	public function tambah($table,$isi){
		return $this->db->table($table)
						->insert($isi);
	}

	public function hapus($table,$where){
        return $this->db->table($table)
                        ->delete($where);
    }
    public function edit($tabel,$isi,$where){
        return $this->db->table($tabel)
                        ->update($isi,$where);
    }

    public function getWhere($tabel,$where){
        return $this->db->table($tabel)
                        ->getwhere($where)
                        ->getRow();
    }

    public function getTotalAlumni()
    {
        return $this->db->table('alumni')->countAll(); // Menghitung semua data alumni
    }

    public function getAlumniCountByJurusan()
    {
        return $this->db->table('alumni')
                    ->select('jurusan, COUNT(*) as count')
                    ->groupBy('jurusan')
                    ->get()
                    ->getResult(); // Menghitung alumni berdasarkan jurusan
    }

    public function getAlumniList($limit = 5)
    {
        return $this->db->table('alumni')
                        ->orderBy('id_alumni', 'DESC')
                        ->limit($limit)
                        ->get()
                        ->getResult(); // Mengambil daftar alumni terbaru
    }

    public function getLogData()
    {
        $builder = $this->db->table('log');
        $builder->select('log.*, user.username');
        $builder->join('user', 'log.id_user = user.id_user');
        $builder->orderBy('time', 'DESC');
        $query = $builder->get();
        return $query->getResult();
    }
    
    public function logActivity($data)
    {
        return $this->db->table('log')->insert($data);
    }
    
    public function getBackupData()
{
    return $this->db->table('user_backup')->get()->getResultArray();
}

public function getProductById($id) {
    return $this->db->table('user')->where('id_user', $id)->get()->getRowArray();
}


}