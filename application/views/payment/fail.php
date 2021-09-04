<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<div class="container theme-showcase" role="main" style="margin-top: 10%">

    <div class="row">

        <div class="col-md-12 payment-icon text-center">
            <i class="icon-close icons text-danger"></i>
            <h3><?php echo lang('core payment fail'); ?></h3>
            <p><?php echo lang('core payment fail_text'); ?></p>
            <a href="<?php echo base_url('contact'); ?>"
               class="btn btn-primary"><?php echo lang('core menu feedback'); ?></a>
        </div>

    </div>
</div>