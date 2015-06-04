<?php echo $header; ?>

<div id="content">
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
	<?php } ?>
	<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	
	<div class="box">
	    <div class="heading">
			<h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
			<div class="buttons">
				<?php if (!$installed) { ?>
				<a onclick="location = '<?php echo $install; ?>';" class="button"><?php echo $text_install; ?></a>
				<?php } ?>
				<a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a>
				<a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a>
				<?php if ($installed) { ?>
				<a onclick="location = '<?php echo $uninstall; ?>';" class="button"><?php echo $text_uninstall; ?></a>
				<?php } ?>
			</div>
		</div>
		<div class="content">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
	        
	        <div class="vtabs">
	          <?php foreach ($stores as $store) { ?>
	          	<a href="#tab-store-<?php echo $store['store_id']; ?>" id="store-<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></a>
	          <?php } ?>
	        </div>
	          
			<?php foreach ($stores as $store) { ?>
				<div id="tab-store-<?php echo $store['store_id']; ?>" class="vtabs-content">
					<div id="tabs-<?php echo $store['store_id']; ?>" class="htabs">
						<a href="#tab-seo-<?php echo $store['store_id']; ?>" title="<?php echo $entry_seo; ?>"><?php echo $entry_seo; ?></a>
						<a href="#tab-product-params-<?php echo $store['store_id']; ?>" title="<?php echo $entry_product_params; ?>"><?php echo $entry_product_params; ?></a>
						<a href="#tab-langs-<?php echo $store['store_id']; ?>" title="<?php echo $entry_lang; ?>"><?php echo $entry_lang; ?></a>
						<a href="#tab-secure-<?php echo $store['store_id']; ?>" title="<?php echo $entry_secure; ?>"><?php echo $entry_secure; ?></a>
					</div>
					
					<div id="tab-seo-<?php echo $store['store_id']; ?>">
					
						<!-- КАТЕГОРИЯ -->
						<h2><?php echo $entry_category; ?></h2>
						<table class="form">
							<tr>
								<td></td>
								<td><?php echo $entry_load; ?></td>
								<td><?php echo $entry_rewrite; ?></td>
								<td><?php echo $entry_generate; ?></td>
								<td><?php echo $entry_template; ?>
								<td><?php echo $entry_all_category_sep; ?></td>
								<td><?php echo $entry_clear; ?></td>
								<td><?php echo $entry_replace; ?></td>
								<td><?php echo $entry_transliterate; ?></td>
							</tr>
							
							<!-- HTML-тег H1 -->
							<tr>
								<td><?php echo $entry_h1; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_h1_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_h1_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_h1_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_h1_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_h1_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_h1_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_h1_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_h1_cat']) ? $module_data[$store['store_id']]['exchange_1c_template_h1_cat'] : '[category_name]'; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_h1_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_h1_cat']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_h1_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_h1_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_h1_cat']) ? $module_data[$store['store_id']]['exchange_1c_clear_h1_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_h1_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_h1_cat']) ? $module_data[$store['store_id']]['exchange_1c_replace_h1_cat'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_h1_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_h1_cat']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_h1_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_h1_cat']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
							
							<!-- HTML-тег Title -->
							<tr>
								<td><?php echo $entry_title; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_title_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_title_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_title_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_title_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_title_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_title_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_title_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_title_cat']) ? $module_data[$store['store_id']]['exchange_1c_template_title_cat'] : '[category_name]'; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_title_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_title_cat']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_title_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_title_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_title_cat']) ? $module_data[$store['store_id']]['exchange_1c_clear_title_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_title_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_title_cat']) ? $module_data[$store['store_id']]['exchange_1c_replace_title_cat'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_title_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_title_cat']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_title_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_title_cat']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
							
							<!-- Мета-тег Keywords -->
							<tr>
								<td><?php echo $entry_meta_keyword; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_mkey_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_mkey_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_mkey_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_mkey_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_mkey_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_mkey_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_mkey_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_mkey_cat']) ? $module_data[$store['store_id']]['exchange_1c_template_mkey_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_mkey_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_mkey_cat']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_mkey_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_mkey_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_mkey_cat']) ? $module_data[$store['store_id']]['exchange_1c_clear_mkey_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_mkey_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_mkey_cat']) ? $module_data[$store['store_id']]['exchange_1c_replace_mkey_cat'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_mkey_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_mkey_cat']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_mkey_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_mkey_cat']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
							
							<!-- Мета-тег Description -->
							<tr>
								<td><?php echo $entry_meta_description; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_mdesc_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_mdesc_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_mdesc_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_mdesc_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_mdesc_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_mdesc_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_mdesc_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_mdesc_cat']) ? $module_data[$store['store_id']]['exchange_1c_template_mdesc_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_mdesc_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_mdesc_cat']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_mdesc_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_mdesc_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_mdesc_cat']) ? $module_data[$store['store_id']]['exchange_1c_clear_mdesc_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_mdesc_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_mdesc_cat']) ? $module_data[$store['store_id']]['exchange_1c_replace_mdesc_cat'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_mdesc_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_mdesc_cat']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_mdesc_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_mdesc_cat']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
							
							<!-- Описание -->
							<tr>
								<td><?php echo $entry_description; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_desc_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_desc_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_desc_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_desc_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_desc_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_desc_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_desc_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_desc_cat']) ? $module_data[$store['store_id']]['exchange_1c_template_desc_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_desc_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_desc_cat']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_desc_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_desc_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_desc_cat']) ? $module_data[$store['store_id']]['exchange_1c_clear_desc_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_desc_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_desc_cat']) ? $module_data[$store['store_id']]['exchange_1c_replace_desc_cat'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_desc_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_desc_cat']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_desc_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_desc_cat']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
							
							<!-- SEO URL -->
							<tr>
								<td><?php echo $entry_seo_url; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_url_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_url_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_url_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_url_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_url_cat]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_url_cat']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_url_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_url_cat']) ? $module_data[$store['store_id']]['exchange_1c_template_url_cat'] : '[category_name]'; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_url_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_url_cat']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_url_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_url_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_url_cat']) ? $module_data[$store['store_id']]['exchange_1c_clear_url_cat'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_url_cat]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_url_cat']) ? $module_data[$store['store_id']]['exchange_1c_replace_url_cat'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_url_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_url_cat']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_url_cat]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_url_cat']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
						</table>
						
						<!-- ТОВАР -->
						<h2><?php echo $entry_product; ?></h2>
						<table class="form">
							<tr>
								<td></td>
								<td><?php echo $entry_load; ?></td>
								<td><?php echo $entry_rewrite; ?></td>
								<td><?php echo $entry_generate; ?></td>
								<td><?php echo $entry_template; ?>
								<td><?php echo $entry_all_category_sep; ?></td>
								<td><?php echo $entry_clear; ?></td>
								<td><?php echo $entry_replace; ?></td>
								<td><?php echo $entry_transliterate; ?></td>
							</tr>
							
							<!-- HTML-тег H1 -->
							<tr>
								<td><?php echo $entry_h1; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_h1_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_h1_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_h1_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_h1_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_h1_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_h1_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_h1_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_h1_prod']) ? $module_data[$store['store_id']]['exchange_1c_template_h1_prod'] : '[product_name]'; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_h1_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_h1_prod']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_h1_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_h1_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_h1_prod']) ? $module_data[$store['store_id']]['exchange_1c_clear_h1_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_h1_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_h1_prod']) ? $module_data[$store['store_id']]['exchange_1c_replace_h1_prod'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_h1_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_h1_prod']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_h1_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_h1_prod']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
							
							<!-- HTML-тег Title -->
							<tr>
								<td><?php echo $entry_title; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_title_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_title_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_title_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_title_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_title_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_title_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_title_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_title_prod']) ? $module_data[$store['store_id']]['exchange_1c_template_title_prod'] : '[product_name]'; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_title_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_title_prod']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_title_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_title_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_title_prod']) ? $module_data[$store['store_id']]['exchange_1c_clear_title_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_title_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_title_prod']) ? $module_data[$store['store_id']]['exchange_1c_replace_title_prod'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_title_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_title_prod']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_title_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_title_prod']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
							
							<!-- Мета-тег Keywords -->
							<tr>
								<td><?php echo $entry_meta_keyword; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_mkey_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_mkey_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_mkey_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_mkey_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_mkey_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_mkey_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_mkey_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_mkey_prod']) ? $module_data[$store['store_id']]['exchange_1c_template_mkey_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_mkey_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_mkey_prod']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_mkey_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_mkey_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_mkey_prod']) ? $module_data[$store['store_id']]['exchange_1c_clear_mkey_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_mkey_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_mkey_prod']) ? $module_data[$store['store_id']]['exchange_1c_replace_mkey_prod'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_mkey_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_mkey_prod']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_mkey_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_mkey_prod']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
							
							<!-- Мета-тег Description -->
							<tr>
								<td><?php echo $entry_meta_description; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_mdesc_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_mdesc_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_mdesc_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_mdesc_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_mdesc_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_mdesc_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_mdesc_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_mdesc_prod']) ? $module_data[$store['store_id']]['exchange_1c_template_mdesc_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_mdesc_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_mdesc_prod']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_mdesc_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_mdesc_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_mdesc_prod']) ? $module_data[$store['store_id']]['exchange_1c_clear_mdesc_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_mdesc_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_mdesc_prod']) ? $module_data[$store['store_id']]['exchange_1c_replace_mdesc_prod'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_mdesc_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_mdesc_prod']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_mdesc_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_mdesc_prod']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
							
							<!-- Описание -->
							<tr>
								<td><?php echo $entry_description; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_desc_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_desc_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_desc_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_desc_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_desc_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_desc_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_desc_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_desc_prod']) ? $module_data[$store['store_id']]['exchange_1c_template_desc_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_desc_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_desc_prod']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_desc_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_desc_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_desc_prod']) ? $module_data[$store['store_id']]['exchange_1c_clear_desc_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_desc_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_desc_prod']) ? $module_data[$store['store_id']]['exchange_1c_replace_desc_prod'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_desc_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_desc_prod']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_desc_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_desc_prod']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
							
							<!-- SEO URL -->
							<tr>
								<td><?php echo $entry_seo_url; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_url_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_url_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_url_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_url_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_url_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_url_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_url_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_url_prod']) ? $module_data[$store['store_id']]['exchange_1c_template_url_prod'] : '[product_name]'; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_url_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_url_prod']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_url_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_url_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_url_prod']) ? $module_data[$store['store_id']]['exchange_1c_clear_url_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_url_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_url_prod']) ? $module_data[$store['store_id']]['exchange_1c_replace_url_prod'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_url_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_url_prod']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_url_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_url_prod']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
							
							<!-- Теги товара -->
							<tr>
								<td><?php echo $entry_tag; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_load_tag_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_load_tag_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_rewrite_tag_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_rewrite_tag_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_generate_tag_prod]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_generate_tag_prod']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
								<td>
									<input style="width: 200px;" type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_template_tag_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_template_tag_prod']) ? $module_data[$store['store_id']]['exchange_1c_template_tag_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_all_category_sep_tag_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_all_category_sep_tag_prod']) ? $module_data[$store['store_id']]['exchange_1c_all_category_sep_tag_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_clear_tag_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_clear_tag_prod']) ? $module_data[$store['store_id']]['exchange_1c_clear_tag_prod'] : ''; ?>">
								</td>
								<td>
									<input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_replace_tag_prod]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_replace_tag_prod']) ? $module_data[$store['store_id']]['exchange_1c_replace_tag_prod'] : ''; ?>">
								</td>
								<td>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_tag_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_tag_prod']) { ?>
											<option value="1" selected="selected"><?php echo $text_yes; ?></option>
											<option value="0"><?php echo $text_no; ?></option>
										<?php } else { ?>
											<option value="1"><?php echo $text_yes; ?></option>
											<option value="0" selected="selected"><?php echo $text_no; ?></option>
										<?php } ?>
									</select>
									<select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_transliterate_type_tag_prod]">
										<?php if ($module_data[$store['store_id']]['exchange_1c_transliterate_type_tag_prod']) { ?>
											<option value="0"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1" selected="selected"><?php echo $entry_transliterate_url; ?></option>
										<?php } else { ?>
											<option value="0" selected="selected"><?php echo $entry_transliterate_simple; ?></option>
											<option value="1"><?php echo $entry_transliterate_url; ?></option>
										<?php } ?>
									</select>
								</td>
							</tr>
						</table>
						

						<br><br>
						<div><?php echo $text_template; ?></div>
						<br>
						<div><?php echo $text_clear; ?></div>
						<br>
						<div><?php echo $text_replace; ?></div>
					</div>
					
					<div id="tab-product-params-<?php echo $store['store_id']; ?>">
						<table class="form">
							<tr>
								<?php $model = !isset($module_data[$store['store_id']]['exchange_1c_model']) ? 1 : $module_data[$store['store_id']]['exchange_1c_model']; ?>
								<td><?php echo $entry_model; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_model]">
									<?php if ($model == 1) { ?>
										<option value="1" selected="selected"><?php echo $entry_product_name; ?></option>
										<option value="2"><?php echo $entry_sku; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $entry_product_name; ?></option>
										<option value="2" selected="selected"><?php echo $entry_sku; ?></option>
									<?php } ?>
								</select></td>
							</tr>
							<tr>
								<?php $subtract = !isset($module_data[$store['store_id']]['exchange_1c_subtract']) ? 1 : $module_data[$store['store_id']]['exchange_1c_subtract']; ?>
								<td><?php echo $entry_subtract; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_subtract]">
									<?php if ($subtract) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
							</tr>
							<tr>
								<?php $shipping = !isset($module_data[$store['store_id']]['exchange_1c_shipping']) ? 1 : $module_data[$store['store_id']]['exchange_1c_shipping']; ?>
								<td><?php echo $entry_shipping; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_shipping]">
									<?php if ($shipping) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
							</tr>
						</table>
						<h2><?php echo $entry_attribute; ?></h2>
						<table class="form">
							<tr>
								<td><?php echo $entry_attribute_group; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_attribute_group]">
									<?php foreach ($attribute_groups as $attribute_group) { ?>
									<?php if ($attribute_group['attribute_group_id'] == $module_data[$store['store_id']]['exchange_1c_attribute_group']) { ?>
									<option value="<?php echo $attribute_group['attribute_group_id']; ?>" selected="selected"><?php echo $attribute_group['name']; ?></option>
									<?php } else { ?>
									<option value="<?php echo $attribute_group['attribute_group_id']; ?>"><?php echo $attribute_group['name']; ?></option>
									<?php } ?>
									<?php } ?>
								</select></td>
							</tr>
						</table>
						<h2><?php echo $entry_stock; ?></h2>
						<table class="form">
							<tr>
								<td><?php echo $entry_stock0; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_stock0]">
									<?php foreach ($stock_statuses as $stock_status) { ?>
									<?php if ($stock_status['stock_status_id'] == $module_data[$store['store_id']]['exchange_1c_stock0']) { ?>
									<option value="<?php echo $stock_status['stock_status_id']; ?>" selected="selected"><?php echo $stock_status['name']; ?></option>
									<?php } else { ?>
									<option value="<?php echo $stock_status['stock_status_id']; ?>"><?php echo $stock_status['name']; ?></option>
									<?php } ?>
									<?php } ?>
								</select></td>
							</tr>
							<tr>
								<td><?php echo $entry_stock1; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_stock1]">
									<?php foreach ($stock_statuses as $stock_status) { ?>
									<?php if ($stock_status['stock_status_id'] == $module_data[$store['store_id']]['exchange_1c_stock1']) { ?>
									<option value="<?php echo $stock_status['stock_status_id']; ?>" selected="selected"><?php echo $stock_status['name']; ?></option>
									<?php } else { ?>
									<option value="<?php echo $stock_status['stock_status_id']; ?>"><?php echo $stock_status['name']; ?></option>
									<?php } ?>
									<?php } ?>
								</select></td>
							</tr>
							<tr>
								<td><?php echo $entry_stock2; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_stock2]">
									<?php foreach ($stock_statuses as $stock_status) { ?>
									<?php if ($stock_status['stock_status_id'] == $module_data[$store['store_id']]['exchange_1c_stock2']) { ?>
									<option value="<?php echo $stock_status['stock_status_id']; ?>" selected="selected"><?php echo $stock_status['name']; ?></option>
									<?php } else { ?>
									<option value="<?php echo $stock_status['stock_status_id']; ?>"><?php echo $stock_status['name']; ?></option>
									<?php } ?>
									<?php } ?>
								</select></td>
							</tr>
						</table>

						<h2><?php echo $entry_additional; ?></h2>
						<table class="form">
							<tr>
								<td><?php echo $entry_update_date_available; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_update_date_available]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_update_date_available']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
							</tr>
							<tr>
								<td><?php echo $entry_status_unavailable; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_status_unavailable]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_status_unavailable']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
							</tr>
						</table>
					</div>

					<div id="tab-langs-<?php echo $store['store_id']; ?>">
						<h2><?php echo $entry_other_lang; ?></h2>
						<table class="form">
							<tr>
								<td><?php echo $entry_translit_name; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_translit_name]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_translit_name']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
							</tr>
							<tr>
								<td><?php echo $entry_save_other_lang; ?></td>
								<td><select name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_save_other_lang]">
									<?php if ($module_data[$store['store_id']]['exchange_1c_save_other_lang']) { ?>
										<option value="1" selected="selected"><?php echo $text_yes; ?></option>
										<option value="0"><?php echo $text_no; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_yes; ?></option>
										<option value="0" selected="selected"><?php echo $text_no; ?></option>
									<?php } ?>
								</select></td>
							</tr>
						</table>
					</div>

					<div id="tab-secure-<?php echo $store['store_id']; ?>">
						<table class="form">
							<tr>
								<td><?php echo $entry_secure_id; ?></td>
								<td><input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_secure_id]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_secure_id']) ? $module_data[$store['store_id']]['exchange_1c_secure_id'] : ''; ?>" style="width: 200px;"></td>
							</tr>
							<tr>
								<td><?php echo $entry_secure_login; ?></td>
								<td><input type="text" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_secure_login]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_secure_login']) ? $module_data[$store['store_id']]['exchange_1c_secure_login'] : ''; ?>" style="width: 200px;"></td>
							</tr>
							<tr>
								<td><?php echo $entry_secure_pswd; ?></td>
								<td><input type="password" name="module_data[<?php echo $store['store_id']; ?>][exchange_1c_secure_pswd]" value="<?php echo isset($module_data[$store['store_id']]['exchange_1c_secure_pswd']) ? $module_data[$store['store_id']]['exchange_1c_secure_pswd'] : ''; ?>" style="width: 200px;"></td>
							</tr>
						</table>
					</div>
				</div>
	        <?php } ?>
	        
			</form>
		</div>
		<p><small><a href="http://itcraft.ru/" target="_blank">www.itcraft.ru</a> &copy; 2014 All Rights Reserved.</small></p>
	</div>
</div>

<script type="text/javascript"><!--
$('.vtabs a').tabs();
//--></script> 

<script type="text/javascript"><!--
<?php foreach ($stores as $store) { ?>
$('#tab-store-<?php echo $store['store_id']; ?> .htabs a').tabs();
<?php } ?> 
//--></script> 

<?php echo $footer; ?>