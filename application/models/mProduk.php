<?php 

class mProduk extends CI_Model {
    function getData(): mixed{
        $result = $this->db->get("tbl_m_produk");
        return $result;
    }
}

?>