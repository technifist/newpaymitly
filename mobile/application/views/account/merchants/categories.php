<div class="section">
  <div class="container">
    <p class="grey-text"><?php echo lang('users shops categories'); ?></p>
  </div>
  
  <ul class="collection">
    <?php if ($total) : ?>
    <?php foreach ($categories as $view) : ?>
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
    <li class="collection-item">
      <div class="truncate">
        <?php 
                    $name_category = (@$view['name'][$this->session->language]) ? $view['name'][$this->session->language] : "";
                    echo $name_category;
        ?>
        
      </div>
      <div class="right-align">
        <a href="#modal<?php echo $view['id']; ?>" class="waves-effect waves-light btn-floating deep-purple lighten-1 btn-small modal-trigger"><i class="material-icons">edit</i></a>
        <a href="<?php echo base_url();?>account/merchants/del_merchant_categories/<?php echo $view['id']; ?>" class="waves-effect waves-light btn-floating red btn-small"><i class="material-icons">delete</i></a>
      </div>
    </li>
    <!-- Modal Structure -->
    <div id="modal<?php echo $view['id']; ?>" class="modal bottom-sheet">
      <ul class="tabs">
        <?php foreach ($this->session->languages as $language_key=>$language_name) : ?>
          <li class="tab"><a class="<?php echo ($language_key == $this->session->language) ? 'active' : ''; ?>" id="<?php echo $language_key; ?>-<?php echo $view['id']; ?>" href="#<?php echo $language_key; ?>-<?php echo $view['id']; ?>"><?php echo $language_name; ?></a></li>
        <?php endforeach; ?>
      </ul>
      <?php foreach ($this->session->languages as $language_key=>$language_name) : ?>
      <div id="<?php echo $language_key; ?>-<?php echo $view['id']; ?>" class="col">
        <?php echo form_open(site_url('account/merchants/edit_merchant_categories/'.$id.''), array("" => "")) ?>
                              <?php // hidden id ?>
                              <?php if (isset($view['id'])) : ?>
                                <?php echo form_hidden('id', $view['id']); ?>
                              <?php endif; ?>
        <div class="modal-content">
          
          <?php
             $field_data['name']  = "name[" . $language_key . "]";
             $field_data['id']    = "name-" . $language_key;
             $field_data['class'] = "";
             $field_data['value'] = (@$view['name'][$language_key]) ? $view['name'][$language_key] : "";

             $editor = "name-" . $language_key;
          ?>
          <div class="input-field">
            <?php echo form_input($field_data); ?>
            <label for="amount"><?php echo lang('users invoices name'); ?></label>
          </div>
          <div class="input-field">
            <select name="status">
              <option value="1" <?if($view['status']=="1"){?>selected<?}else{?><?}?>><?php echo lang('users shops enabled'); ?></option>
              <option value="2" <?if($view['status']=="2"){?>selected<?}else{?><?}?>><?php echo lang('users shops disabled'); ?></option>
            </select>
          </div>
        </div>
      </div>
      <?php endforeach; ?>
      <div class="modal-footer">
        <button type="submit" class="modal-action modal-close waves-effect waves-green btn-flat"><?php echo lang('users button save'); ?></button>
      </div>
      <?php echo form_close(); ?>
    </div>
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
        <a href="#add" class="btn-floating btn-large green modal-trigger">
          <i class="material-icons">add</i>
        </a>
      </div>

<!-- Modal Structure -->
      <div id="add" class="modal bottom-sheet">
          <ul class="tabs">
            <?php foreach ($this->session->languages as $language_key=>$language_name) : ?>
            <li class="tab"><a class="<?php echo ($language_key == $this->session->language) ? 'active' : ''; ?>" id="<?php echo $language_key; ?>-<?php echo $view['id']; ?>" href="#<?php echo $language_key; ?>-<?php echo $view['id']; ?>"><?php echo $language_name; ?></a></li>
            <?php endforeach; ?>
          </ul>
          
          <div id="<?php echo $language_key; ?>-<?php echo $view['id']; ?>" class="col">
            <div class="modal-content">
              <?php echo form_open(site_url('account/merchants/add_merchant_categories/'.$id.''), array("" => "")) ?>
            <?php
                 $field_data1['name']  = "name[" . $language_key . "]";
                 $field_data1['id']    = "name-" . $language_key;
                 $field_data1['class'] = "form-control form-control-sm";
             ?>
             <div class="input-field">
              <?php echo form_input($field_data1); ?>
              <label for="amount"><?php echo lang('users invoices name'); ?></label>
            </div>
            <div class="input-field">
              <select name="status">
                <option value="1"><?php echo lang('users shops enabled'); ?></option>
                <option value="2"><?php echo lang('users shops disabled'); ?></option>
              </select>
            </div>
            </div>
          </div>
          
        <div class="modal-footer">
          <button type="submit" class="modal-action modal-close waves-effect waves-green btn-flat"><?php echo lang('users button save'); ?></button>
        </div>
      </div>