<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Helper {

    function __construct()
    {
        $this->CI =& get_instance();
    }

    function getPayementGoButton($submit_name = '', $submit_value = '') {
        if(!empty($submit_name)) {
            $submit_name = 'name="' . $submit_name . '"';
            $submit_value = 'value="' . $submit_value . '"';
        }
        return sprintf('
    <div class="row">
        <div class="col-md-12">
            <div class="bs-callout-warning">
                <p>%s</p>
            </div>
            <div class="pull-right">
                <a href="#payement_home" data-toggle="tab" class="btn btn-default">%s</a>
                <button type="submit" class="btn btn-primary" %s %s>%s</button>
            </div>
        </div>
    </div>', lang('core payment agreement'), lang('core button cancel'), $submit_name, $submit_value, lang('core payment go'));
    }

}