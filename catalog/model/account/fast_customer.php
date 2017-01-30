<?php
class ModelAccountFastCustomer extends Model {

    public function addCustomer2($data) {
        $pass = $data['password'];
        $mail = new Mail();
        $mail->protocol = $this->config->get('config_mail_protocol');
        $mail->parameter = $this->config->get('config_mail_parameter');
        $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
        $mail->smtp_username = $this->config->get('config_mail_smtp_username');
        $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
        $mail->smtp_port = $this->config->get('config_mail_smtp_port');
        $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

        $mail->setTo($data['email']);
        $mail->setFrom($this->config->get('config_email'));
        $mail->setSender(html_entity_decode("Ledo tkani", ENT_QUOTES, 'UTF-8'));
        $mail->setSubject(html_entity_decode("Password", ENT_QUOTES, 'UTF-8'));
        $mail->setText("Добро пожаловать и спасибо за регистрацию в интернет-магазине leda-tkani.ru \n Ваш логин: ".$data['email']." \n Ваш пароль: ". $pass."\n\n После входа на сайт Вы сможете воспользоваться дополнительными возможностями: просмотр истории заказов, заказ образцов и прочими полезностями.... \n \n Спасибо,\n leda-tkani.ru" );
        $mail->send();
        $this->db->query("INSERT INTO " . DB_PREFIX . "customer SET store_id = '" . (int)$this->config->get('config_store_id') . "', firstname = '', lastname = '', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $data['telephone'] . "', fax = '', salt = '" . $this->db->escape($salt = substr(md5(uniqid(rand(), true)), 0, 9)) . "', password = '" . $this->db->escape(sha1($salt . sha1($salt . sha1($pass)))) . "', newsletter = '1', customer_group_id = '1', ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "', status = '1', approved = '1', date_added = NOW()");

        $customer_id = $this->db->getLastId();

        $this->db->query("INSERT INTO " . DB_PREFIX . "address SET customer_id = '" . (int)$customer_id . "', firstname = '', lastname = '', company = '', address_1 = '', address_2 = '', city = '', postcode = '', country_id = '0', zone_id = '0'");

        $address_id = $this->db->getLastId();

        $this->db->query("UPDATE " . DB_PREFIX . "customer SET address_id = '" . (int)$address_id . "' WHERE customer_id = '" . (int)$customer_id . "'");
        return $pass;
    }
}
