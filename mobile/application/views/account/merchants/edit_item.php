<img class="responsive-img" src="<?php echo base_url();?>upload/items/img/<?php echo $item['img']; ?>">

<div class="section">
  <div class="row">
    <?php echo form_open_multipart(site_url('account/merchants/start_edit_item/'.$id.''), array("" => "")) ?>
    <div class="col s12">
        <div class="input-field">
          <input id="name" type="text" name="name" value="<?php echo $item['name']; ?>">
          <label for="name"><?php echo lang('users invoices name'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select name="status">
            <option value="1" <?if($item['status']=="1"){?>selected<?}else{?><?}?>><?php echo lang('users shops enabled'); ?></option>
            <option value="2" <?if($item['status']=="2"){?>selected<?}else{?><?}?>><?php echo lang('users shops disabled'); ?></option>
          </select>
          <label for="status"><?php echo lang('users trans status'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="name" type="text" name="download_link" value="<?php echo $item['download_link']; ?>">
          <label for="download_link"><?php echo lang('users shops item_link'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select name="category_id">
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
              <option value="<?php echo $view['id']; ?>" <?if($item['category_id']==$view['id']){?>selected<?}else{?><?}?>><?php $name_category = (@$view['name'][$this->session->language]) ? $view['name'][$this->session->language] : ""; echo $name_category; ?>
              </option>
              <?php endforeach; ?>
              <?php else : ?>
              <option>
                <?php echo lang('core error no_results'); ?>
              </option>
            <?php endif; ?>
          </select>
          <label for="category_id"><?php echo lang('users shops item_category'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="name" type="text" name="availability" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" value="<?php echo $item['availability']; ?>">
          <label for="availability"><?php echo lang('users shops availability'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="name" type="text" name="price" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" value="<?php echo $item['price']; ?>">
          <label for="price"><?php echo lang('users shops price'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select name="currency">
            <option value="debit_base" <?if($item['currency']=="debit_base"){?>selected<?}else{?><?}?>><?php echo $this->currencys->display->base_code ?></option><?php if($this->currencys->display->extra1_check) : ?><option value="debit_extra1" <?if($item['currency']=="debit_extra1"){?>selected<?}else{?><?}?>><?php echo $this->currencys->display->extra1_code ?></option><?php endif; ?><?php if($this->currencys->display->extra2_check) : ?><option value="debit_extra2" <?if($item['currency']=="debit_extra2"){?>selected<?}else{?><?}?>><?php echo $this->currencys->display->extra2_code ?></option><?php endif; ?><?php if($this->currencys->display->extra3_check) : ?><option value="debit_extra3" <?if($item['currency']=="debit_extra3"){?>selected<?}else{?><?}?>><?php echo $this->currencys->display->extra3_code ?></option><?php endif; ?><?php if($this->currencys->display->extra4_check) : ?><option value="debit_extra4" <?if($item['currency']=="debit_extra4"){?>selected<?}else{?><?}?>><?php echo $this->currencys->display->extra4_code ?></option><?php endif; ?><?php if($this->currencys->display->extra5_check) : ?><option value="debit_extra5" <?if($item['currency']=="debit_extra5"){?>selected<?}else{?><?}?>><?php echo $this->currencys->display->extra5_code ?></option><?php endif; ?>
          </select>
          <label><?php echo lang('users trans cyr'); ?></label>
        </div>
      </div>
    <div class="col s12">
        <div class="input-field">
          <textarea id="about" class="materialize-textarea" name="about"><?php echo $item['about']; ?></textarea>
          <label for="about"><?php echo lang('users invoices description'); ?></label>
        </div>
      </div>
    <div class="col s12">
            <div class="file-field input-field">
              <div class="btn deep-purple lighten-1">
                <span><i class="material-icons">image</i></span>
                <input id="img" name="img" type="file">
              </div>
              <div class="file-path-wrapper">
                <input class="file-path validate" type="file" id="img" name="img" placeholder="<?php echo lang('users shops image'); ?>">
                <label for="img"><?php echo lang('users shops image'); ?></label>
              </div>
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