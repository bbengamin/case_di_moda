<?php
class ControllerApiActivate extends Controller {
	
	public function index() {
		$y = $this->request->get['y'];
		$m  = $this->request->get['m'];
		$d = $this->request->get['d'];
		$h = $this->request->get['h'];

		//$this->session->data['activate'] = date("H:i:s");
		$this->session->data['activate'] = date("d.m.Y.H.i.s", mktime($h + 1, date("i"), date("s"), $m+1, $d, $y));
		$this->session->data['activate_date'] = date(mktime($h + 1, date("i"), date("s"), $m+1, $d, $y));
		$this->session->data['show_sale'] = true;
		$json = array();
		$json['timer'] = $this->session->data['activate'];
		$this->response->setOutput(json_encode($json));
	}

}
