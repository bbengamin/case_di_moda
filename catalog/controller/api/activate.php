<?php
class ControllerApiActivate extends Controller {
	
	public function index() {
		//$this->session->data['activate'] = date("H:i:s");
		$this->session->data['activate'] = date("d.m.Y.H.i.s", mktime(date("H") + 3, date("i"), date("s"), date("m")  , date("d"), date("Y")));
		$this->session->data['activate_date'] = date(mktime(date("H") + 3, date("i"), date("s"), date("m")  , date("d"), date("Y")));
		$this->session->data['show_sale'] = true;
		$json = array();
		$json['timer'] = $this->session->data['activate'];
		$this->response->setOutput(json_encode($json));
	}

}
