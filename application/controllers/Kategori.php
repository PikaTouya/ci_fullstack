<?php 

class Kategori extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model(model: "mKategori"); 
    }

    function index(): void{
        $data["data"] = $this->mKategori->getData();
        $this->load->view(view: "view_kategori", vars: $data);
    }
}

?>