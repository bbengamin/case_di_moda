<?php
class ControllerScheduledViewNow extends Controller {
    public function index(){
        $this->load->model('catalog/product');
        
        $ids = $this->model_catalog_product->getProductIDs()->rows;
        
        foreach ($ids as $id) {
            $viewNow = rand(4, 6);
            $idVal = $id['id'];
            $this->db->query("UPDATE " . DB_PREFIX . "product SET fake_view_now='" . $viewNow . "' WHERE product_id='" . $idVal . "'");
        }
        $this->response->setOutput("success");
    }
}