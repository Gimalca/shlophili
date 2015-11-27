<?php
/*
  Project: Ka Extensions
  Author : karapuz <support@ka-station.com>

  Version: 3 ($Revision: 29 $)


  HOW TO USE
  =======================
  
  In any place of template files you can insert a code like this:
  <?php KaElements::showSelector(...); ?> 
    
*/
abstract class KaElements {

	protected static $registry;
	
	public static function init($registry) {
		self::$registry = $registry;
	}

	public static function showTemplate($template, $data) {
	
		if (!isset(self::$registry)) {
			self::$registry = Loader::getRegistry();
		}
	
		echo self::$registry->get('load')->view($template, $data);
	}
		
	public static function showSelector($name, $options, $value = '', $extra = '', $first_line = '') {
	
		if (!isset(self::$registry)) {
			self::$registry = Loader::getRegistry();
		}
	
		$data['name']     = $name;
		$data['options']  = $options;
		$data['value']    = $value;
		$data['extra']    = $extra;
		$data['first_line'] = $first_line;

		echo self::$registry->get('load')->view("ka_extensions/elements/select.tpl", $data);
 	}
}

?>