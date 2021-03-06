<?php 

class Products extends CI_Controller{
	public function index(){
		//Get All Products
		$data['products'] = $this->Product_model->get_products();

		//Load Views
		$data['main_content'] = 'products';
		$this->load->view('/layouts/main', $data);
	}


	public function details($id){
		//Get Product Details
		$data['product'] = $this->Product_model->get_product_details($id);

		//Load Views
		$data['main_content'] = 'details';
		$this->load->view('/layouts/main', $data);
	}

	public function category($id){
		//Get Product Details
		$data['category'] = $this->Product_model->get_category($id);

		//Load Views
		$data['main_content'] = 'category';
		$this->load->view('/layouts/main', $data);
	}

}