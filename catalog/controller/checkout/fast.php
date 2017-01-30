<?php
class ControllerCheckoutFast extends Controller {
	public function callback(){

		$this->load->language('checkout/fast');
		$json = array();

		if(!isset($this->request->post['name']) || strlen($this->request->post['name']) == 0){
			$json['error']['name'] = "Введите корректное имя";
		}

		if(!isset($this->request->post['phone']) || strlen($this->request->post['phone']) == 0){
			$json['error']['phone'] = "Введите корректный телефон";
		}

		if(!$json){

			$text = "Обратный звонок" . "\n\n";
			$text .= "Имя:" . $this->request->post['name'] . "\n";
			$text .= "Телефон:" .  $this->request->post['phone'];

			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode("Обратный звонок", ENT_QUOTES, 'UTF-8'));
			$mail->setText($text);
			$mail->send();

			// Send to additional alert emails
			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $email)) {
					$mail->setTo($email);
					$mail->send();
				}
			}

			$json['success'] = 'success';
		}
		$this->response->setOutput(json_encode($json));
	}

	public function fastorder(){
		$this->load->language('checkout/fast');
		$json = array();

		if(!isset($this->request->post['name']) || strlen($this->request->post['name']) == 0){
			$json['error']['name'] = "Введите корректное имя";
		}

		if(!isset($this->request->post['phone']) || strlen($this->request->post['phone']) == 0){
			$json['error']['phone'] = "Введите корректный телефон";
		}

		if(!$json){

			$this->load->model('catalog/product');

			$text = "Быстрый заказ <br>";
			$text .= "Имя:" . $this->request->post['name'] . "<br>";
			$text .= "Телефон:" .  $this->request->post['phone'] . "<br>";

			foreach (explode(',', $this->request->post['product_id']) as $id) {
				$product = $this->model_catalog_product->getProduct($id);
				$text .= "Товар:" .  "<a href='" . $this->url->link('product/product', 'product_id=' . $product['product_id']) . "'>" . $product['name'] . "</a><br>";
			}
			
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
			$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode("Быстрый заказ", ENT_QUOTES, 'UTF-8'));
			$mail->setHtml($text);
			$mail->send();

			// Send to additional alert emails
			$emails = explode(',', $this->config->get('config_mail_alert'));

			foreach ($emails as $email) {
				if ($email && preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $email)) {
					$mail->setTo($email);
					$mail->send();
				}
			}
/*
			if($this->request->post['clear'] == "1"){
				$this->cart->clear();
			}*/

			$json['total2'] = sprintf($this->language->get('text_items2'), $this->cart->countProducts());
			$json['total3'] = sprintf($this->language->get('text_items3'),$this->cart->countProducts());
			$json['success'] = 'success';
		}
		$this->response->setOutput(json_encode($json));
	}
}
