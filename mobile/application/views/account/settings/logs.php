<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users settings history'); ?></p>
  </div>
  
  
  <ul class="collection">
    <?php if ($total) : ?>
    <?php foreach ($logs as $view) : ?>
    <li class="collection-item avatar">
      <i class="material-icons circle">visibility</i>
      <span class="title"><?php echo $view['ip']; ?></span>
      <p class="grey-text"><?php echo $view['date']; ?> | <?php if ($view['type'] == 1) : ?>
                  <?php echo lang('users events_status 1'); ?>
                  <?php elseif ($view['type'] == 2) : ?>
                  <?php echo lang('users events_status 2'); ?>
                  <?php elseif ($view['type'] == 3) : ?>
                  <?php echo lang('users events_status 3'); ?>
                  <?php elseif ($view['type'] == 4) : ?>
                  <?php echo lang('users events_status 4'); ?>
                  <?php elseif ($view['type'] == 5) : ?>
                  <?php echo lang('users events_status 5'); ?>
                  <?php elseif ($view['type'] == 6) : ?>
                  
                  <?php endif; ?>
      </p>
    </li>
    <?php endforeach; ?>
    <?php else : ?>
    <li class="collection-item">
       <p class="center-align">
         <i class="medium material-icons grey-text">info_outline</i></br>
          <?php echo lang('core error no_results'); ?>
      </p>

    </li>
  <?php endif; ?>
  </ul>

  <div class="center-align">
    <?php echo $pagination; ?>
  </div>
  
</div>


<div class="fixed-action-btn">
  <a class="btn-floating btn-large deep-purple lighten-1">
    <i class="large material-icons">settings</i>
  </a>
  <ul>
    <li><a href="<?php echo base_url('account/settings/verification'); ?>" class="btn-floating light-blue darken-3"><i class="material-icons">fingerprint</i></a></li>
    <li><a href="<?php echo base_url('account/settings/billing'); ?>" class="btn-floating green"><i class="material-icons">account_balance_wallet</i></a></li>
    <li><a href="<?php echo base_url('account/settings/logs'); ?>" class="btn-floating yellow darken-4"><i class="material-icons">lock_outline</i></a></li>
    <li><a href="<?php echo base_url('account/settings/security'); ?>" class="btn-floating red"><i class="material-icons">security</i></a></li>
  </ul>
</div>