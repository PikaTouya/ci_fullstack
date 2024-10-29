<?php 

class Kategori extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model( "mKategori"); 
    }

    function index(){
        $data["data"] = $this->mKategori->getData();
        $this->load->view( "view_kategori",  $data);
    }
}

?>