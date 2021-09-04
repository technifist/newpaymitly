<div class="section">
  <div class="row">
    <?php echo form_open_multipart('', array('role'=>'form')); ?>
    <div class="col s12">
        <div class="input-field">
          <input id="name" type="text" name="name" placeholder="<?php echo lang('users invoices name'); ?>">
          <label for="name"><?php echo lang('users invoices name'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="link" type="text" name="link" placeholder="<?php echo lang('users merchants url'); ?>">
          <label for="link"><?php echo lang('users merchants url'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="status_link" type="text" name="status_link" placeholder="<?php echo lang('users merchants ipn'); ?>">
          <label for="status_link"><?php echo lang('users merchants ipn'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="success_link" type="text" name="success_link" placeholder="<?php echo lang('users shops merchant_success'); ?>">
          <label for="success_link"><?php echo lang('users shops merchant_success'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="fail_link" type="text" name="fail_link" placeholder="<?php echo lang('users shops merchant_fail'); ?>">
          <label for="fail_link"><?php echo lang('users shops merchant_fail'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="password" type="password" name="password" placeholder="<?php echo lang('users shops merchant_password'); ?>">
          <label for="password"><?php echo lang('users shops merchant_password'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select name="category">
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
              <option value="<?php echo $view['id']; ?>" <?if($merchant['category']==$view['id']){?>selected<?}else{?><?}?>><?php $name_category = (@$view['name'][$this->session->language]) ? $view['name'][$this->session->language] : ""; echo $name_category; ?>
              </option>
              <?php endforeach; ?>
              <?php else : ?>
              <option>
                <?php echo lang('core error no_results'); ?>
              </option>
            <?php endif; ?>
          </select>
          <label><?php echo lang('users shops categories'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select name="show_category">
            <option value="0"><?php echo lang('users shops merchant_yes'); ?></option>
            <option value="1"><?php echo lang('users shops merchant_no'); ?></option>
          </select>
          <label><?php echo lang('users shops merchant_show'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select name="payeer_fee">
            <option value="0"><?php echo lang('users shops merchant_mecrh'); ?></option>
            <option value="1"><?php echo lang('users shops merchant_buyer'); ?></option>
          </select>
          <label><?php echo lang('users shops merchant_payeer'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select name="test_mode">
            <option value="0"><?php echo lang('users shops merchant_yes'); ?></option>
            <option value="1"><?php echo lang('users shops merchant_no'); ?></option>
          </select>
          <label><?php echo lang('users shops merchant_test'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input type="text" name="note_payment" placeholder="<?php echo lang('users shops merchant_note_info'); ?>">
          <label for="note_payment"><?php echo lang('users shops merchant_note_info'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <textarea id="textarea1" class="materialize-textarea" name="comment" placeholder="<?php echo lang('users merchants comment'); ?>"></textarea>
          <label for="comment"><?php echo lang('users merchants comment'); ?></label>
        </div>
      </div>
    
    <div class="col s12">
            <div class="file-field input-field">
              <div class="btn deep-purple lighten-1">
                <span><i class="material-icons">image</i></span>
                <input id="logo" name="logo" type="file">
              </div>
              <div class="file-path-wrapper">
                <input class="file-path validate" type="file" id="logo" name="logo" placeholder="<?php echo lang('users shops merchant_logo'); ?>">
                <label for="img"><?php echo lang('users shops merchant_logo'); ?></label>
              </div>
            </div>
          </div>
    
    <div class="fixed-action-btn">
      <button type="submit" class="btn-floating btn-large green modal-trigger">
        <i class="material-icons">done</i>
      </button>
    </div>
    <?php echo form_close(); ?> 
  </div>
</div>