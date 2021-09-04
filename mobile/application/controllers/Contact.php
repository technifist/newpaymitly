<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends Public_Controller {

    /**
     * Constructor
     */
    function __construct()
    {
        parent::__construct();

        // load the language file
        $this->lang->load('contact');

        // load the model file
        $this->load->model('contact_model');

        // load the captcha helper
        $this->load->helper('captcha');
    }


    /**************************************************************************************
     * PUBLIC FUNCTIONS
     **************************************************************************************/


    /**
     * Default
     */
    function index()
    {
        redirect(base_url());
    }


    /**************************************************************************************
     * PRIVATE VALIDATION CALLBACK FUNCTIONS
     **************************************************************************************/


    /**
     * Verifies correct CAPTCHA value
     *
     * @param  string $captcha
     * @return string|boolean
     */
    function _check_captcha($captcha)
    {
        $verified = $this->contact_model->verify_captcha($captcha);

        if ($verified == FALSE)
        {
            $this->form_validation->set_message('_check_captcha', lang('contact error captcha'));
            return FALSE;
        }
        else
        {
            return $captcha;
        }
    }

}
