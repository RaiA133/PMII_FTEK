<?php

class Category_model extends CI_Model
{
	function tez($nama,$fakultas,$jk,$no_hp,$alamat){
		$data = array(
			'nama' 	   => $nama,
			'fakultas' => $fakultas,
			'jenis_kelamin'    => $jk,
			'no_hp' 	   => $no_hp,
			'alamat' => $alamat
			
		);
	$this->db->insert('tbl_gabung', $data);
	}

	function get_post_by_category($slug)
	{
		$query = $this->db->query("SELECT tbl_post.*,tbl_category.*,user_name,user_photo FROM
			tbl_post LEFT JOIN tbl_category ON post_category_id=category_id 
			LEFT JOIN tbl_user ON post_user_id=user_id WHERE category_slug='$slug'");
		return $query;
	}

	function post_category_perpage($category_id, $offset, $limit)
	{
		$query = $this->db->query("SELECT tbl_post.*,tbl_category.*,user_name,user_photo FROM
			tbl_post LEFT JOIN tbl_category ON post_category_id=category_id
			LEFT JOIN tbl_user ON post_user_id=user_id
			WHERE category_id='$category_id' LIMIT $offset,$limit");
		return $query;
	}
	function gabung_anggota($nama,$fakultas,$jk,$no_hp,$alamat)
	{
		echo"<pre>";print_r($nama);die();
	}
}
