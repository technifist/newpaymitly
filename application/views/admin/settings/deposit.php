<div class="row">
  <div class="col-md-12">
    <div class="card">
       <div class="card-title">
         <?php echo lang('admin settings all'); ?>
       </div>
       <div class="card-body">
         <div class="row">
           <div class="col-md-12">
             <table class="table table-responsive-lg table-bordered table-hover">
               <thead>
                      <tr>
                        <th></th>
                        <th class="-text-center"><?php echo lang('admin settings status'); ?></th>
                        <th><?php echo lang('admin settings name'); ?></th>
                        <th><?php echo lang('admin settings fee'); ?></th>
                        <th class="-text-center"><?php echo lang('admin settings 0'); ?></th>
                        <th class="-text-center"><?php echo lang('admin settings 1'); ?></th>
                        <th class="-text-center"><?php echo lang('admin settings 2'); ?></th>
                        <th class="-text-center"><?php echo lang('admin col actions'); ?></th>
                      </tr>
                  </thead>
                  <tbody>
                  <?php // data rows ?>
                  <?php if ($total) : ?>
                      <?php foreach ($methods as $method) : ?>
                        <tr>
                          <td class="-text-center">
                            <?php if ($method['id']== 1) : ?>
                              <img src="<?php echo base_url();?>assets/themes/modular/img/pay-icon/paypal.png" class="img-circle">
                            <?php elseif ($method['id'] == 2) : ?>
                              <img src="<?php echo base_url();?>assets/themes/modular/img/pay-icon/pm.png" class="img-circle">
                            <?php elseif ($method['id'] == 3) : ?>
                              <img src="<?php echo base_url();?>assets/themes/modular/img/pay-icon/advcash.png" class="img-circle">
                            <?php elseif ($method['id'] == 4) : ?>
                              <img src="<?php echo base_url();?>assets/themes/modular/img/pay-icon/payeer.png" class="img-circle">
                            <?php elseif ($method['id'] == 5) : ?>
                              <img src="<?php echo base_url();?>assets/themes/modular/img/pay-icon/skrill.png" class="img-circle">
                            <?php elseif ($method['id'] == 6) : ?>
                              <img src="<?php echo base_url();?>/assets/themes/account/img/pay-icon/paygol.png" class="img-circle">
                            <?php elseif ($method['id'] == 7) : ?>
                              <img src="<?php echo base_url();?>assets/themes/modular/img/pay-icon/swift.png" class="img-circle">
                            <?php elseif ($method['id'] == 8) : ?>
                              <img src="<?php echo base_url();?>assets/themes/modular/img/pay-icon/local_bank.png" class="img-circle">
                            <?php elseif ($method['id'] == 9) : ?>
                              <img src="<?php echo base_url();?>assets/themes/modular/img/pay-icon/btc.png" class="img-circle">
                            <?php elseif ($method['id'] == 10) : ?>
                              <img src="<?php echo base_url();?>assets/themes/modular/img/pay-icon/blockchain.png" class="img-circle">
                            <?php endif; ?>
                          </td>
                          <td class="-text-center">
                            <?php if ($method['status'] == 0) : ?>
                              <span class="badge badge-danger"><?php echo lang('admin template disabled'); ?></span>
                            <?php else : ?>
                              <span class="badge badge-success"><?php echo lang('admin template enabled'); ?></span>
                            <?php endif; ?>
                          </td>
                          <td><?php echo $method['name']; ?></td>
                          <td><?php echo $method['fee_fix']; ?> + <?php echo $method['fee']; ?>%</td>
                          <td class="-text-center">
                            <?php if ($method['start_verify'] == 0) : ?>
                              <span class="badge badge-danger"><?php echo lang('admin template disabled'); ?></span>
                            <?php else : ?>
                              <span class="badge badge-success"><?php echo lang('admin template enabled'); ?></span>
                            <?php endif; ?>
                          </td>
                          <td class="-text-center">
                            <?php if ($method['standart_verify'] == 0) : ?>
                              <span class="badge badge-danger"><?php echo lang('admin template disabled'); ?></span>
                            <?php else : ?>
                              <span class="badge badge-success"><?php echo lang('admin template enabled'); ?></span>
                            <?php endif; ?>
                          </td>
                          <td class="-text-center">
                            <?php if ($method['expanded_verify'] == 0) : ?>
                              <span class="badge badge-danger"><?php echo lang('admin template disabled'); ?></span>
                            <?php else : ?>
                              <span class="badge badge-success"><?php echo lang('admin template enabled'); ?></span>
                            <?php endif; ?>
                          </td>
                          <td class="-text-center">
                             <a href="<?php echo base_url();?>admin/settings/edit_deposit/<?php echo $method['id']; ?>" class="btn btn-sm btn-primary"><i class="icon-eye icons"></i></a>
                          </td>
                        </tr>
                   <?php endforeach; ?>
                  <?php else : ?>
                      <tr>
                          <td colspan="8">
                              <?php echo lang('core error no_results'); ?>
                          </td>
                      </tr>
                  <?php endif; ?>
             </table>
           </div>
         </div>
      </div>
    </div>
  </div>
</div>