
<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Kritiksaran_model extends MY_Model
{  
	public function __construct()
	{
        $this->table = 'tb_krisan';
        $this->primary_key = 'id'; 
        $this->protected = array('id');

		parent::__construct();
	}   
}
