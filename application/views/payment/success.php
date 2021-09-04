<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<div class="container theme-showcase" role="main" style="margin-top: 10%;">

    <div class="row">
        <div class="col-md-12 payment-icon text-center">
            <i class="icon-check icons text-success"></i>
            <h3><?php echo lang('core payment success'); ?></h3>
            <p><?php echo lang('core payment success_text'); ?></p>
            <?php if ($is_paypal) : ?>
                <p>
                    <?php echo lang('core payment success_notification'); ?>
                </p>
            <?php endif; ?>
            <a href="<?php echo base_url('user/register'); ?>"
               class="btn btn-primary"><?php echo lang('users button register'); ?></a>
        </div>

    </div>
</div>