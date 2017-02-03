<?php
class ModelScheduledLastBought extends Model {
    public function changeLastBought($data){
        $value = $this->db->escape("<div id='last_bought'> <span> Только что купили " . (string)$data['product'] . " от <a href='https://case-di-moda-bbengamin.c9users.io/index.php?route=product/manufacturer/info&manufacturer_id=" . $data['manufacturer_id'] . "'>" . (string)$data['brand'] . "</a> за " .  (int)$data['price'] . " руб. из " . $data['city']. "</span></div>");
        
        $this->db->query("UPDATE " . DB_PREFIX . "setting SET value='$value' WHERE `key`='last_bought'");
    }
}