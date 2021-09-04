<div class="section">
  <div class="row">
    <?php echo form_open_multipart(site_url('account/merchants/start_add_item/'.$id.''), array("" => "")) ?>
    <div class="col s12">
        <div class="input-field">
          <input id="name" type="text" name="name" placeholder="<?php echo lang('users invoices name'); ?>">
          <label for="name"><?php echo lang('users invoices name'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select name="status">
            <option value="1"><?php echo lang('users shops enabled'); ?></option>
            <option value="2"><?php echo lang('users shops disabled'); ?></option>
          </select>
          <label for="status"><?php echo lang('users trans status'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="name" type="text" name="download_link" placeholder="<?php echo lang('users shops item_link'); ?>">
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
              <option value="<?php echo $view['id']; ?>"><?php $name_category = (@$view['name'][$this->session->language]) ? $view['name'][$this->session->language] : ""; echo $name_category; ?>
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
          <input id="name" type="text" name="availability" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" placeholder="<?php echo lang('users shops availability'); ?>">
          <label for="availability"><?php echo lang('users shops availability'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <input id="name" type="text" name="price" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" placeholder="<?php echo lang('users shops price'); ?>">
          <label for="price"><?php echo lang('users shops price'); ?></label>
        </div>
    </div>
    <div class="col s12">
        <div class="input-field">
          <select name="currency">
            <option value="debit_base"><?php echo $this->currencys->display->base_code ?></option>
            <?php if($this->currencys->display->extra1_check) : ?>
            <option value="debit_extra1"><?php echo $this->currencys->display->extra1_code ?></option>
            <?php endif; ?>
            <?php if($this->currencys->display->extra2_check) : ?>
            <option value="debit_extra2"><?php echo $this->currencys->display->extra2_code ?></option>
            <?php endif; ?>
            <?php if($this->currencys->display->extra3_check) : ?>
            <option value="debit_extra3"><?php echo $this->currencys->display->extra3_code ?></option>
            <?php endif; ?>
            <?php if($this->currencys->display->extra4_check) : ?>
            <option value="debit_extra4"><?php echo $this->currencys->display->extra4_code ?></option>
            <?php endif; ?>
            <?php if($this->currencys->display->extra5_check) : ?>
            <option value="debit_extra5"><?php echo $this->currencys->display->extra5_code ?></option>
            <?php endif; ?>
          </select>
          <label><?php echo lang('users trans cyr'); ?></label>
        </div>
      </div>
    <div class="col s12">
        <div class="input-field">
          <textarea id="about" class="materialize-textarea" name="about" placeholder="<?php echo lang('users invoices description'); ?>"></textarea>
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