<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Gabung extends CI_Controller
{ 
	function __construct()
	{
        // print_r($this->session->userdata('logged'));die();
		parent::__construct();
        
        // if($this->session->userdata('logged') !=TRUE){
        //     $url=base_url('administrator');
        //     redirect($url);
        // };
		$this->load->model('backend/Category_model', 'category_model');
        $this->load->model('backend/Post_model','post_model');
		$this->load->helper('text');
		error_reporting(0);
	}

    function Gabung(){
        // die('xx');
        $data['header'] = $this->load->view('layout/header', '$data', TRUE);
        $this->load->view('/backend/gabung_view',$data);
    }
    
    function input(){
// print_r($this->input->post());die();

// $this->load->library('session'); 
// $this->load->helper('url'); 
        $nama= $this->input->post('nama',TRUE);
        $fakultas  = $this->input->post('fakultas',TRUE);
        $jk = $this->input->post('jk',TRUE);
        $no_hp = $this->input->post('no_hp',TRUE);
        $alamat = $this->input->post('alamat',TRUE);
        $status = $this->input->post('status',TRUE);
        // echo"<pre>";print_r($nama);die();
        
        $this->category_model->insert_gabung($nama,$fakultas,$jk,$no_hp,$alamat,$status);
    //   die('xx');
        echo $this->session->set_flashdata('msg','success');
        redirect('Gabung/Gabung');
    }

    function inbox(){
        $kritik =$this->input->post('inbox');
        $name =$this->input->post('nama');
        $this->category_model->inbox( $kritik,$name );
        echo $this->session->set_flashdata('msg','success');
        redirect('home');
         print_r($this->input->post());

    }

    function list_anggota(){
		$x['data'] = $this->post_model->get_all_list();
        // echo "<pre>";print_r($x);die();
		$this->load->view('backend/v_list_member',$x);
	}

    function anggota_aktif(){
		$x['data'] = $this->post_model->get_all_list_aktif();
        // echo "<pre>";print_r($x);die();
		$this->load->view('list_member',$x);
	}

    function delete(){
		$id = $this->input->post('id',TRUE);
		$this->post_model->delete_anggota($id);
		echo $this->session->set_flashdata('msg','success-delete');
		redirect('gabung/list_anggota');
	}
}