<div class="section">
  <div class="row">
    <?php echo form_open('', array('role'=>'form')); ?>
    <?php if (isset($merchant['id'])) : ?>
          <?php echo form_hidden('id', $merchant['id']); ?>
    <?php endif; ?>
    <div class="col s12">
        <div class="input-field">
          <input id="name" type="text" name="name" disabled value="<?php echo $merchant['name']; ?>">
          <label for="name"><?php echo lang('users invoices name'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="link" type="text" disabled name="link" value="<?php echo $merchant['link']; ?>">
          <label for="link"><?php echo lang('users merchants url'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="status_link" type="text" disabled name="status_link" value="<?php echo $merchant['status_link']; ?>">
          <label for="status_link"><?php echo lang('users merchants ipn'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="success_link" type="text" name="success_link" value="<?php echo $merchant['success_link']; ?>">
          <label for="success_link"><?php echo lang('users shops merchant_success'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="fail_link" type="text" name="fail_link" value="<?php echo $merchant['fail_link']; ?>">
          <label for="fail_link"><?php echo lang('users shops merchant_fail'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="password" type="password" name="password" value="<?php echo $merchant['password']; ?>">
          <label for="password"><?php echo lang('users shops merchant_password'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="link" type="text" disabled name="fix_fee" value="<?php echo $merchant['fix_fee']; ?>">
          <label for="fee"><?php echo lang('users shops merchant_fix_fee'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="link" type="text" disabled name="fee" value="<?php echo $merchant['fee']; ?>">
          <label for="fee"><?php echo lang('users trans fee'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select disabled name="category">
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
            <option value="0" <?if($merchant['show_category']=="0"){?>selected<?}else{?><?}?>><?php echo lang('users shops merchant_no'); ?></option>
            <option value="1" <?if($merchant['show_category']=="1"){?>selected<?}else{?><?}?>><?php echo lang('users shops merchant_yes'); ?></option>
          </select>
          <label><?php echo lang('users shops merchant_show'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select name="payeer_fee">
            <option value="0" <?if($merchant['payeer_fee']=="0"){?>selected<?}else{?><?}?>><?php echo lang('users shops merchant_mecrh'); ?></option>
            <option value="1" <?if($merchant['payeer_fee']=="1"){?>selected<?}else{?><?}?>><?php echo lang('users shops merchant_buyer'); ?></option>
          </select>
          <label><?php echo lang('users shops merchant_payeer'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select name="test_mode">
            <option value="0" <?if($merchant['test_mode']=="0"){?>selected<?}else{?><?}?>><?php echo lang('users shops merchant_no'); ?></option>
            <option value="1" <?if($merchant['test_mode']=="1"){?>selected<?}else{?><?}?>><?php echo lang('users shops merchant_yes'); ?></option>
          </select>
          <label><?php echo lang('users shops merchant_test'); ?></label>
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