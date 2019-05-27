<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class Karyawan extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
    }

    function index_get() {
        $id = $this->get('id');
        if ($id == '') {
            $karyawan = $this->db->get('tb_karyawan')->result();
        } else {
            $this->db->where('id', $id);
            $karyawan = $this->db->get('tb_karyawan')->result();
        }
        $this->response($karyawan, 200);
    }

    function index_post() {
        $data = array(
            'id'      =>  $this->input->post('id'),
            'name'    =>  $this->input->post('name'),
            'email'   =>  $this->input->post('email'),
            'address' =>  $this->input->post('address'),
            'phone'   =>  $this->input->post('phone'));
        $insert = $this->db->insert('tb_karyawan', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }



    function index_delete() {
        $id = $this->delete('id');
        $this->db->where('id', $id);
        $delete = $this->db->delete('tb_karyawan');
        if ($delete) {
            $this->response(array('status' => 'success'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    //TUGAS: bikin fungsi update db dari data client

}
?>
