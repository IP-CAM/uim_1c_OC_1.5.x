<?php
class ControllerExtensionExchange1c extends Controller {
	private $error = array(); 
	
	public function install() {
		mkdir(DIR_IMAGE."data/export", 0777);
		
		$this->db->query("ALTER TABLE `" . DB_PREFIX . "order`
			ADD `is_new` int(11) NOT NULL DEFAULT '1';");
		$this->db->query("ALTER TABLE `" . DB_PREFIX . "customer`
			ADD `is_new` int(11) NOT NULL DEFAULT '1';");

		$this->db->query("UPDATE `" . DB_PREFIX . "order`
			SET `is_new` = 0;");
		$this->db->query("UPDATE `" . DB_PREFIX . "customer`
			SET `is_new` = 0;");

		$this->db->query("CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "product_option_value_exchange` (
		  `product_option_value_exchange_id` int(11) NOT NULL AUTO_INCREMENT,
		  `product_id` int(11) NOT NULL,
		  `option_id` int(11) NOT NULL,
		  `option_value_id` int(11) NOT NULL,
		  `product_option_id` int(11) NOT NULL,
		  `product_option_value_id` int(11) NOT NULL,
		  `exchange_id` varchar(255) NOT NULL,
		  PRIMARY KEY (`product_option_value_exchange_id`)
		) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3;");
	}
	
	public function uninstall() {
		$this->db->query("ALTER TABLE `" . DB_PREFIX . "order`
			DROP COLUMN `is_new`;");
		$this->db->query("ALTER TABLE `" . DB_PREFIX . "customer`
			DROP COLUMN `is_new`;");

		$this->db->query("DROP TABLE IF EXISTS `" . DB_PREFIX . "product_option_value_exchange`");
	}
	
	public function index() {   
		$this->load->language('extension/exchange_1c');

		$this->document->setTitle(strip_tags($this->language->get('heading_title')));
		
		$this->load->model('setting/setting');
				
		$this->data['success'] = '';
		
		if (isset($this->request->get['install']) && $this->request->get['install']) {
			$this->model_setting_setting->editSetting('exchange_1c_installed', array('exchange_1c_installed' => 1));
			$this->install();
			$this->redirect($this->url->link('extension/exchange_1c', 'token=' . $this->session->data['token'], 'SSL'));
		}

		if (isset($this->request->get['uninstall']) && $this->request->get['uninstall']) {
			$this->model_setting_setting->editSetting('exchange_1c_installed', array('exchange_1c_installed' => 0));
			$this->uninstall();
			$this->redirect($this->url->link('extension/exchange_1c', 'token=' . $this->session->data['token'], 'SSL'));
		}

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

			foreach ($this->request->post['module_data'] as $store_id => $data) {
				$this->model_setting_setting->editSetting('exchange_1c', $data, $store_id);			
			}
			
			$this->data['success'] = $this->language->get('text_success');
		}

		$this->data['installed'] = $this->config->get('exchange_1c_installed');
				
		$this->data['heading_title'] = $this->language->get('heading_title');
	
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		
		$this->data['text_yes'] = $this->language->get('text_yes');
		$this->data['text_no'] = $this->language->get('text_no');
		$this->data['text_install'] = $this->language->get('text_install');
		$this->data['text_uninstall'] = $this->language->get('text_uninstall');
		$this->data['text_template'] = $this->language->get('text_template');
		$this->data['text_clear'] = $this->language->get('text_clear');
		$this->data['text_replace'] = $this->language->get('text_replace');
		
		$this->data['entry_seo'] = $this->language->get('entry_seo');
		$this->data['entry_product_params'] = $this->language->get('entry_product_params');
		$this->data['entry_other'] = $this->language->get('entry_other');
		$this->data['entry_secure'] = $this->language->get('entry_secure');

		$this->data['entry_category'] = $this->language->get('entry_category');
		$this->data['entry_product'] = $this->language->get('entry_product');
		$this->data['entry_h1'] = $this->language->get('entry_h1');
		$this->data['entry_title'] = $this->language->get('entry_title');
		$this->data['entry_meta_keyword'] = $this->language->get('entry_meta_keyword');
		$this->data['entry_meta_description'] = $this->language->get('entry_meta_description');
		$this->data['entry_description'] = $this->language->get('entry_description');
		$this->data['entry_tag'] = $this->language->get('entry_tag');
		$this->data['entry_seo_url'] = $this->language->get('entry_seo_url');
		$this->data['entry_load'] = $this->language->get('entry_load');
		$this->data['entry_rewrite'] = $this->language->get('entry_rewrite');
		$this->data['entry_generate'] = $this->language->get('entry_generate');
		$this->data['entry_template'] = $this->language->get('entry_template');
		$this->data['entry_all_category_sep'] = $this->language->get('entry_all_category_sep');
		$this->data['entry_clear'] = $this->language->get('entry_clear');
		$this->data['entry_replace'] = $this->language->get('entry_replace');
		$this->data['entry_transliterate'] = $this->language->get('entry_transliterate');
		$this->data['entry_transliterate_simple'] = $this->language->get('entry_transliterate_simple');
		$this->data['entry_transliterate_url'] = $this->language->get('entry_transliterate_url');

		$this->data['entry_attribute'] = $this->language->get('entry_attribute');
		$this->data['entry_attribute_group'] = $this->language->get('entry_attribute_group');

		$this->data['entry_stock'] = $this->language->get('entry_stock');
		$this->data['entry_stock0'] = $this->language->get('entry_stock0');
		$this->data['entry_stock1'] = $this->language->get('entry_stock1');
		$this->data['entry_stock2'] = $this->language->get('entry_stock2');

		$this->data['entry_lang'] = $this->language->get('entry_lang');
		$this->data['entry_other_lang'] = $this->language->get('entry_other_lang');
		$this->data['entry_translit_name'] = $this->language->get('entry_translit_name');
		$this->data['entry_save_other_lang'] = $this->language->get('entry_save_other_lang');

		$this->data['entry_additional'] = $this->language->get('entry_additional');
		$this->data['entry_subtract'] = $this->language->get('entry_subtract');
		$this->data['entry_shipping'] = $this->language->get('entry_shipping');
		$this->data['entry_model'] = $this->language->get('entry_model');
		$this->data['entry_product_name'] = $this->language->get('entry_product_name');
		$this->data['entry_sku'] = $this->language->get('entry_sku');
		$this->data['entry_update_date_available'] = $this->language->get('entry_update_date_available');
		$this->data['entry_status_unavailable'] = $this->language->get('entry_status_unavailable');

		$this->data['entry_secure_id'] = $this->language->get('entry_secure_id');
		$this->data['entry_secure_login'] = $this->language->get('entry_secure_login');
		$this->data['entry_secure_pswd'] = $this->language->get('entry_secure_pswd');

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('extension/exchange_1c', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('extension/exchange_1c', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['install'] = $this->url->link('extension/exchange_1c', 'install=1&token=' . $this->session->data['token'], 'SSL');
		$this->data['uninstall'] = $this->url->link('extension/exchange_1c', 'uninstall=1&token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['token'] = $this->session->data['token'];
		
		$this->load->model('localisation/language');
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
		
		$this->data['stores'][] = array('store_id' => 0, 'name' => $this->config->get('config_name'));
		$this->load->model('setting/store');
		$this->data['stores'] = array_merge($this->data['stores'], $this->model_setting_store->getStores());
		
		foreach ($this->data['stores'] as $store) {
			$this->data['module_data'][$store['store_id']] = $this->model_setting_setting->getSetting('exchange_1c', $store['store_id']);
		}

		$this->load->model('catalog/attribute_group');
		$this->data['attribute_groups'] = $this->model_catalog_attribute_group->getAttributeGroups();

		$this->load->model('localisation/stock_status');
		$this->data['stock_statuses'] = $this->model_localisation_stock_status->getStockStatuses();

		$this->template = 'extension/exchange_1c.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'extension/exchange_1c')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>