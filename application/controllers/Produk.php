<?php 

class Produk extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model( "mProduk"); 
    }

    function index(){
        $data["data"] = $this->mProduk->getData();
        $this->load->view("view_produk",  $data);
    }
}

?>