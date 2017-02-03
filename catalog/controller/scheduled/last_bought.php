<?php
class ControllerScheduledLastBought extends Controller {
    public function index(){
        $this->load->model('scheduled/last_bought');
        $this->load->model('catalog/product');
        
        $ids = $this->model_catalog_product->getProductIDs();
        $randID = rand(0, $ids->num_rows - 1);
        
        $product = $this->model_catalog_product->getProduct($ids->rows[$randID]['id']);
        
        $data = array();
        $data['brand'] = $product['manufacturer'];
        $data['manufacturer_id'] = $product['manufacturer_id'];
        $data['product'] = $product['name'];
        $data['price'] = $product['price'];
        $cities = explode(',', $this->config->get('config_last_bought_locations'));
        $data['city'] = trim($cities[rand(1, sizeof($cities) - 1)], ' ');
        
        $this->model_scheduled_last_bought->changeLastBought($data);
        $this->response->setOutput("success");
    }
}