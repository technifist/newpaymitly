<div class="section">
  <div class="container">
    <?php
                $category['name'] = (@unserialize($category['name']) !== FALSE) ? unserialize($category['name']) : $category['name'];
                if ( ! is_array($category['name']))
                {
                    $old_value = $category['name'];
                    $category['name'] = array();
                    foreach ($this->session->languages as $language_key=>$language_name)
                    {
                        $category['name'][$language_key] = ($language_key == $this->session->language) ? $old_value : "";
                    }
                }
    ?>
    <p class="grey-text"><?php 
                  $name_category = (@$category['name'][$this->session->language]) ? $category['name'][$this->session->language] : "";
                  echo $name_category;
    ?></p>
  </div>
    <ul class="collection">
    <?php if ($total) : ?>
    <?php foreach ($shops as $view) : ?>
    <li class="collection-item avatar">
      <a class="black-text darken-4" href="<?php echo base_url();?>account/shops/category/<?php echo $view['id']; ?>">
      <img src="<?php echo base_url();?>upload/logo/<?php echo $view['logo']; ?>" alt="" class="circle">
      <span class="title truncate"><?php echo $view['name']; ?></span>
      <p class="grey-text truncate"><?php echo $view['link']; ?></p>
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