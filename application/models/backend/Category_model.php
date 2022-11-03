<?php
class Category_model extends CI_Model{
	
	function get_all_category(){
		$result = $this->db->get('tbl_category');
		return $result; 
	}

	function add_new_row($category,$slug){
		$data = array(
	        'category_name' => $category,
	        'category_slug' => $slug
		);
		$this->db->insert('tbl_category', $data);
	}

	function edit_row($id,$category,$slug){
		$data = array(
	        'category_name' => $category,
	        'category_slug' => $slug
		);
		$this->db->where('category_id', $id);
		$this->db->update('tbl_category', $data);
	}

	function delete_row($id){
		$this->db->where('category_id', $id);
		$this->db->delete('tbl_category');
	}

	function insert_gabung($nama,$fakultas,$jk,$no_hp,$alamat,$status){
		// die('xx');
		$data = array(
	        'nama' => $nama,
	        'fakultas' => $fakultas,
			'jenis_kelamin' => $jk,
			'no_hp' => $no_hp,
			'alamat' => $alamat,
			'status' => $status
		);
		$this->db->insert('tbl_gabung', $data);
	}

	function inbox($kritik,$name){
		$data = array(
	        'inbox_massage' => $kritik,
	        'inbox_name' => $name
		);
		$this->db->insert('tbl_inbox',$data);
	}


}