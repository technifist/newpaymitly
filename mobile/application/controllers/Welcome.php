<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends Public_Controller {

    /**
     * Constructor
     */
    function __construct()
    {
        parent::__construct();

        // load the language file
        $this->lang->load('welcome');
				$this->load->model('pages_model');
    }


    /**
	 * Default
     */
	function index()
	{
     redirect(base_url('account/transactions'));
	}

}
