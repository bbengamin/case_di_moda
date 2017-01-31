<?php
class ModelScheduledLastBought extends Model {
    public function changeLastBought($data){
        $value = $this->db->escape("<div id='last_bought'> <span> Только что купили " . (string)$data['product'] . " от " . (string)$data['brand'] . " за " .  (int)$data['price'] . " руб. из " . $data['city']. "</span></div>");
        
        $this->db->query("UPDATE " . DB_PREFIX . "setting SET value='$value' WHERE `key`='last_bought'");
    }
}