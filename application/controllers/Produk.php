<?php 

class Produk extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model(model: "mProduk"); 
    }

    function index(): void{
        $data["data"] = $this->mProduk->getData();
        $this->load->view(view: "view_produk", vars: $data);
    }
}

?>