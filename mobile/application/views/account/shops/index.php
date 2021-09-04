<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users shops all'); ?> (<?php echo $all_shops; ?>)</p>
  </div>
  
  <ul class="collection">
    <?php if ($total) : ?>
          <?php foreach ($history as $view) : ?>
          <?php
                $view['name'] = (@unserialize($view['name']) !== FALSE) ? unserialize($view['name']) : $view['name'];
                if ( ! is_array($view['name']))
                {
                    $old_value = $view['name'];
                    $view['name'] = array();
                    foreach ($this->session->languages as $language_key=>$language_name)
                    {
                        $view['name'][$language_key] = ($language_key == $this->session->language) ? $old_value : "";
                    }
                }
           ?>
    <li class="collection-item avatar">
      <a class="black-text darken-4" href="<?php echo base_url();?>account/shops/merchants/<?php echo $view['id']; ?>">
      <img src="<?php echo base_url();?>upload/logo/<?php echo $view['img']; ?>" alt="" class="circle">
      <span class="title truncate"><?php 
                  $name_category = (@$view['name'][$this->session->language]) ? $view['name'][$this->session->language] : "";
                  echo $name_category;
                ?>
      </span>
      <p class="grey-text truncate"><?php echo lang('users shops total'); ?>: <?php echo $this->notice->sum_merchants($view['id']); ?></p>
      </a>
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
  
</div>

<div class="fixed-action-btn">
  <a class="btn-floating btn-large deep-purple lighten-1">
    <i class="large material-icons">filter_list</i>
  </a>
  <ul>
    <li><a href="<?php echo base_url('account/merchants'); ?>" class="btn-floating green"><i class="material-icons">add</i></a></li>
    <li><a href="#modal1" class="btn-floating yellow darken-4 modal-trigger"><i class="material-icons">search</i></a></li>
  </ul>
</div>

<!-- Modal Structure -->
  <div id="modal1" class="modal">
    <?php echo form_open("account/shops/search?sort={$sort}&dir={$dir}&limit={$limit}&offset=0{$filter}", array('role'=>'form', 'id'=>"filters")); ?>
    <div class="modal-content">
      
      <h5 class="mt-0"><?php echo lang('users shops search'); ?></h5>
      <div class="input-field">
          <input type="text" id="name" name="name" placeholder="<?php echo lang('users shops name'); ?>">
        </div>
      <div class="input-field">
          <input type="text" id="id" name="id" placeholder="<?php echo lang('users shops id'); ?>">
        </div>
    </div>
    <div class="modal-footer">
      <button type="submit" class="modal-action modal-close waves-effect waves-green btn-flat"><?php echo lang('users trans search'); ?></button>
    </div>
    <?php echo form_close(); ?> 
  </div>