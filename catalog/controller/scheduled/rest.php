<?php
class ControllerScheduledRest extends Controller {
    public function index(){
        $this->load->model('catalog/product');
        
        $ids = $this->model_catalog_product->getProductIDs()->rows;

        foreach ($ids as $id) {
            $rest = rand(1, 3);
            $idVal = $id['id'];
            $this->db->query("UPDATE " . DB_PREFIX . "product SET fake_rest='" . $rest . "' WHERE product_id='" . $idVal . "'");
        }
        $this->response->setOutput("success");
    }
}