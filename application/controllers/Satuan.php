<?php 

class Satuan extends CI_Controller  {
    function __construct(){
        parent::__construct();
        $this->load->model('mSatuan');
    }

    function index(){
        $data['data'] = $this->mSatuan->getData();
        $this->load->view('view_satuan', $data);
    }
}

?>