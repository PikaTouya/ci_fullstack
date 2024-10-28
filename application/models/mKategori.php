<?php 

class mKategori extends CI_Model {
    function getData(): mixed {
        $result = $this->db->get("tbl_m_kategori");
        return $result;
    }
}

?>