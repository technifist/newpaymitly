<div class="row mt-35px">
    <div class="col-md-3">
    </div>
    <div class="col-md-6">
        <div class="card box-shadow-sci mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="text-center">
                            <img src="<?php echo base_url(); ?>upload/logo/<?php echo $merchant['logo']; ?>"
                                 class="logo-merchant-sci">
                            <h5 class="mt-2"><?php echo $merchant['name']; ?></h5>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="text-center">
                            <h5 class="text-success"><?php echo $total_amount; ?> <?php echo $symbol; ?> <a
                                        data-toggle="collapse" href="#collapseExample" role="button"
                                        aria-expanded="false" aria-controls="collapseExample"><i
                                            class="icon-question h6 icons text-info"></i></a></h5>
                            <p class="text-muted mb-0"><?php echo $item_name; ?></p>
                        </div>
                        <div class="collapse mt-2" id="collapseExample">
                            <div class="card card-body text-white bg-info">
                                <div class="row">
                                    <div class="col-md-4">
                                        <strong><?php echo lang('users trans amount'); ?>:</strong>
                                        <p class="mb-0"><?php echo $amount; ?><?php echo $symbol; ?></p>
                                    </div>
                                    <div class="col-md-4">
                                        <strong><?php echo lang('users trans fee'); ?>:</strong>
                                        <p class="mb-0"><?php echo $total_fee; ?><?php echo $symbol; ?></p>
                                    </div>
                                    <div class="col-md-4">
                                        <strong><?php echo lang('users shops total'); ?>:</strong>
                                        <p class="mb-0"><?php echo $total_amount; ?><?php echo $symbol; ?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12 mt-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="home" role="tabpanel"
                                         aria-labelledby="home-tab">
                                        <?php if ($merchant['test_mode'] == 1) { ?>
                                            <?php echo form_open('sci/test_mode', array('class' => '')); ?>
                                            <p class="text-center">
                                                <strong><?php echo lang('users sci test_not_valid'); ?></strong></p>
                                            <input type="hidden" name="merchant" value="<?php echo $merchant['id']; ?>">
                                            <input type="hidden" name="amount" value="<?php echo $amount; ?>">
                                            <input type="hidden" name="currency" value="<?php echo $currency; ?>">
                                            <input type="hidden" name="item_name" value="<?php echo $item_name; ?>">
                                            <input type="hidden" name="custom" value="<?php echo $custom; ?>">
                                            <div class="row">
                                                <div class="col-md-12 text-center">
                                                    <button type="submit"
                                                            class="btn btn-success mt-1"><?php echo lang('users deposit payment'); ?></button>
                                                </div>
                                            </div>
                                            <?php echo form_close(); ?>
                                        <?php } else { ?>
                                            <!-- Tab panes   PayPal, PerfectMoney,  -->
                                            <div class="tab-content">
                                                <!-- Tab choose payment -->
                                                <div class="tab-pane nav active" id="payement_home" role="tablist">
                                                    <form id="check" action="">
                                                        <div class="plan-card-group">
                                                            <div class="row">

                                                                <?php if ($paypal['status'] == 1) : /* PayPal */ ?>
                                                                    <div class="col-md-6 col-xs-6">
                                                                        <div class="radio-card">
                                                                            <input type="radio" class="planes-radio"
                                                                                   name="method" value="paypal"
                                                                                   id="paypal_option"/>
                                                                            <label for="paypal_option"
                                                                                   id="paypal_option_label">
                                                                                <span class="card-title">
                                                                                <img class="img-responsive"
                                                                                     src="<?php echo base_url(); ?>assets/themes/account/img/pay-icon/paypal.png"
                                                                                     alt="">
                                                                                </span>
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                <?php endif; ?>

                                                                <?php if ($perfect_money['status'] == 1) : /* PerfectMoney */ ?>
                                                                    <div class="col-md-6 col-xs-6">
                                                                        <div class="radio-card">
                                                                            <input type="radio" class="planes-radio"
                                                                                   name="method" value="perfect_money"
                                                                                   id="pm_option"/>
                                                                            <label for="pm_option"
                                                                                   id="pm_option_label">
                                                                                <span class="card-title">
                                                                                <img class="img-responsive"
                                                                                     src="<?php echo base_url(); ?>assets/themes/account/img/pay-icon/pm.png"
                                                                                     alt="">
                                                                                </span>
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                <?php endif; ?>

                                                                <?php if ($advcash['status'] == 1) : /* AdvCash */ ?>
                                                                    <div class="col-md-6 col-xs-6">
                                                                        <div class="radio-card">
                                                                            <input type="radio" class="planes-radio"
                                                                                   name="method" value="advcash"
                                                                                   id="advcash_option"/>
                                                                            <label for="advcash_option"
                                                                                   id="advcash_option_label">
                                                                                <span class="card-title">
                                                                                <img class="img-responsive"
                                                                                     src="<?php echo base_url(); ?>assets/themes/account/img/pay-icon/advcash.png"
                                                                                     alt="">
                                                                                </span>
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                <?php endif; ?>

                                                                <?php if ($skrill['status'] == 1) : /* Skrill */ ?>
                                                                    <div class="col-md-6 col-xs-6">
                                                                        <div class="radio-card">
                                                                            <input type="radio" class="planes-radio"
                                                                                   name="method" value="skrill"
                                                                                   id="skrill_option"/>
                                                                            <label for="skrill_option"
                                                                                   id="skrill_option_label">
                                                                                <span class="card-title">
                                                                                <img class="img-responsive"
                                                                                     src="<?php echo base_url(); ?>assets/themes/account/img/pay-icon/skrill.png"
                                                                                     alt="">
                                                                                </span>
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                <?php endif; ?>

                                                                <div class="col-md-6 col-xs-6">
                                                                    <div class="radio-card">
                                                                        <input type="radio" class="planes-radio"
                                                                               name="method" value="orixpay"
                                                                               id="orixpay_option"/>
                                                                        <label for="orixpay_option"
                                                                               id="orixpay_option_label">
                                                                            <span class="card-title">
                                                                            <img class="img-responsive"
                                                                                 style="width: 100%;"
                                                                                 src="<?php echo base_url(); ?>assets/themes/account/img/pay-icon/ux.png"
                                                                                 alt="">
                                                                            </span>
                                                                        </label>
                                                                    </div>
                                                                </div>

                                                                <?php if ($coinpayment['status'] == 1) : /* CoinPayments */ ?>
                                                                    <div class="col-md-6 col-xs-6">
                                                                        <div class="radio-card">
                                                                            <input type="radio" class="planes-radio"
                                                                                   name="method" value="coinpayment"
                                                                                   id="coinpayment_option"/>
                                                                            <label for="coinpayment_option"
                                                                                   id="coinpayment_option_label">
                                                                                <span class="card-title">
                                                                                <img class="img-responsive"
                                                                                     src="<?php echo base_url(); ?>assets/themes/account/img/pay-icon/coinpayments.png"
                                                                                     alt="">
                                                                                </span>
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                <?php endif; ?>


                                                                <div class="col-md-12 text-center">
                                                                    <div class="pull-right">
                                                                        <a href="#payment" class="btn btn-primary mt-1"
                                                                           data-toggle="tab"><?php echo lang('core payment continue'); ?></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                                <!-- End Tab choose payment -->
                                                <div class="tab-pane" id="profile">

                                                </div>

                                                <div class="tab-pane nav" id="payment" role="tabpanel" >

                                                    <?php echo form_open('sci/start_payment', array('class' => '', 'id' => 'orixpay')); ?>
                                                    <p class="text-center"><strong>Login in account</strong></p>

                                                    <input type="hidden" name="_static_link"
                                                           value="<?php echo $merchant['id']; ?>">

                                                    <input type="hidden" name="merchant"
                                                           value="<?php echo $merchant['id']; ?>">
                                                    <input type="hidden" name="amount" value="<?php echo $amount; ?>">
                                                    <input type="hidden" name="currency"
                                                           value="<?php echo $currency; ?>">
                                                    <input type="hidden" name="item_name"
                                                           value="<?php echo $item_name; ?>">
                                                    <input type="hidden" name="custom" value="<?php echo $custom; ?>">
                                                    <div class="row">
                                                        <div class="form-group col-md-12">
                                                            <label for="exampleInputEmail1"><?php echo lang('core button username_email'); ?></label>
                                                            <?php echo form_input(array('name' => 'username', 'id' => 'username', 'class' => 'form-control', 'placeholder' => lang('core button enter_username'), 'maxlength' => 256)); ?>
                                                        </div>
                                                        <div class="form-group col-md-12">
                                                            <label for="exampleInputPassword1"><?php echo lang('core button password'); ?></label>
                                                            <?php echo form_password(array('name' => 'password', 'id' => 'password', 'class' => 'form-control', 'placeholder' => lang('core button enter_password'), 'maxlength' => 72, 'autocomplete' => 'off')); ?>
                                                        </div>

                                                        <div class="col-md-7">
                                                            <small><a id="profile-tab" data-toggle="tab"
                                                                      href="#payement_home"
                                                                      role="tab" aria-controls="profile"
                                                                      aria-selected="false"><?php echo lang('users sci other'); ?></a>
                                                            </small>
                                                        </div>
                                                        <div class="col-md-5 text-right">
                                                            <button type="button" data-toggle="modal"
                                                                    data-target="#exampleModal"
                                                                    class="btn btn-success mt-1"><?php echo lang('users deposit payment'); ?></button>
                                                        </div>
                                                    </div>
                                                    <!-- Modal -->
                                                    <div class="modal fade" id="exampleModal" tabindex="-1"
                                                         role="dialog"
                                                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog modal-sm" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title"
                                                                        id="exampleModalLabel"><?php echo lang('users sci check_captcha'); ?></h5>
                                                                    <button type="button" class="close"
                                                                            data-dismiss="modal"
                                                                            aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="g-recaptcha"
                                                                         data-sitekey="<?php echo $this->settings->google_site_key; ?>"></div>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button"
                                                                            class="btn btn-secondary btn-sm"
                                                                            data-dismiss="modal"><?php echo lang('users verifi close'); ?></button>
                                                                    <button type="submit"
                                                                            class="btn btn-primary btn-sm"><?php echo lang('users transfer protect_confirm'); ?></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <?php echo form_close(); ?>

                                                    <?php if ($paypal['status'] == 1) : /* PAYPAL */ ?>
                                                        <form id="paypal" name=paypal
                                                              action="https://www.paypal.com/cgi-bin/webscr"
                                                              method="post">
                                                            <input type="hidden" name="charset" value="utf-8"/>
                                                            <input type="hidden" name="cmd" value="_xclick"/>
                                                            <input type="hidden" name="item_number"
                                                                   value="<?php echo lang('users deposit deposit_for'); ?> <?php echo $user['username'] ?>"/>
                                                            <input type="hidden" name="item_name"
                                                                   value="<?php echo lang('users deposit deposit_for'); ?> <?php echo $this->settings->site_name; ?>"/>
                                                            <input type="hidden" name="quantity" value="1"/>
                                                            <input type="hidden" name="custom"
                                                                   value="<?php echo $user['username'] ?>"/>
                                                            <input type="hidden" name="receiver_email"
                                                                   value="<?php echo $paypal['merchant_account']; ?>"/>
                                                            <input type="hidden" name="business"
                                                                   value="<?php echo $paypal['merchant_account']; ?>"/>

                                                            <input type="hidden" name="notify_url"
                                                                   value="<?php echo base_url(); ?>ipn/paypal/direct_pay"/>
                                                            <input type="hidden" name="return"
                                                                   value="<?php echo base_url(); ?>sci/success/paypal"/>
                                                            <input type="hidden" name="cancel_return"
                                                                   value="<?php echo base_url(); ?>sci/fail"/>

                                                            <input type="hidden" name="no_shipping" value="1"/>
                                                            <input type="hidden" name="currency_code"
                                                                   value="<?php echo $paypal['currency']; ?>">
                                                            <input type="hidden" name="no_note" value="1"/>
                                                            <input type="hidden" name="amount"
                                                                   value="<?php echo $total_amount; ?>"/>

                                                            <?php echo $this->helper->getPayementGoButton(); ?>
                                                        </form>
                                                    <?php endif; ?>

                                                    <?php if ($perfect_money['status'] == 1) : /* PerfectMoney */ ?>
                                                        <form action="https://perfectmoney.is/api/step1.asp"
                                                              method="POST" id="perfect_money">
                                                            <input type="hidden" name="PAYEE_ACCOUNT"
                                                                   value="<?php echo $perfect_money['merchant_account']; ?>">
                                                            <input type="hidden" name="PAYEE_NAME"
                                                                   value="<?php echo lang('users deposit deposit_for'); ?> <?php echo $this->settings->site_name; ?>">
                                                            <input type="hidden" name="PAYMENT_ID"
                                                                   value="<?php echo $user['username'] ?>">
                                                            <input type="hidden" name="PAYMENT_AMOUNT"
                                                                   value="<?php echo $total_amount; ?>">
                                                            <input type="hidden" name="PAYMENT_UNITS"
                                                                   value="<?php echo $perfect_money['currency']; ?>">

                                                            <input type="hidden" name="STATUS_URL"
                                                                   value="<?php echo base_url(); ?>ipn/perfect_money">
                                                            <input type="hidden" name="PAYMENT_URL"
                                                                   value="<?php echo base_url(); ?>sci/success">
                                                            <input type="hidden" name="NOPAYMENT_URL"
                                                                   value="<?php echo base_url(); ?>sci/fail">

                                                            <input type="hidden" name="PAYMENT_URL_METHOD" value="GET">
                                                            <input type="hidden" name="NOPAYMENT_URL_METHOD"
                                                                   value="LINK">

                                                            <input type="hidden" name="SUGGESTED_MEMO" value="">
                                                            <input type="hidden" name="BAGGAGE_FIELDS" value="">

                                                            <?php echo $this->helper->getPayementGoButton(); ?>
                                                        </form>
                                                    <?php endif; ?>

                                                    <?php if ($advcash['status'] == 1) :
                                                        $order_id = rand(100000000000, 900000000000);

                                                        $arHash = array(
                                                            $advcash['merchant_account'], //
                                                            $advcash['api_value1'],
                                                            $total_amount, //
                                                            $symbol, //
                                                            $advcash['api_value2'], //
                                                            $order_id //
                                                        );
                                                        $ac_sign = hash('sha256', implode(':', $arHash));

                                                        ?>
                                                        <form id="advcash" method="post"
                                                              action="https://wallet.advcash.com/sci/">
                                                            <input type="hidden" name="ac_account_email"
                                                                   value="<?php echo $advcash['merchant_account']; ?>"/>
                                                            <input type="hidden" name="ac_sci_name"
                                                                   value="<?php echo $advcash['api_value1']; ?>"/>
                                                            <input type="hidden" name="ac_amount"
                                                                   value="<?php echo $total_amount; ?>"/>
                                                            <input type="hidden" name="ac_currency"
                                                                   value="<?php echo $advcash['currency']; ?>"/>
                                                            <input type="hidden" name="ac_order_id"
                                                                   value="<?php echo $order_id; ?>"/>
                                                            <input type="hidden" name="ac_sign"
                                                                   value="<?php echo $ac_sign; ?>"/>
                                                            <input type="hidden" name="ac_success_url"
                                                                   value="<?php echo base_url(); ?>sci/success"/>
                                                            <input type="hidden" name="ac_success_url_method"
                                                                   value="GET"/>
                                                            <input type="hidden" name="ac_fail_url"
                                                                   value="<?php echo base_url(); ?>sci/fail"/>
                                                            <input type="hidden" name="ac_fail_url_method" value="GET"/>
                                                            <input type="hidden" name="ac_status_url"
                                                                   value="<?php echo base_url(); ?>ipn/advcash"/>
                                                            <input type="hidden" name="ac_status_url_method"
                                                                   value="POST"/>
                                                            <input type="hidden" name="ac_comments"
                                                                   value="<?php echo $user['username'] ?>"/>

                                                            <?php echo $this->helper->getPayementGoButton(); ?>
                                                        </form>
                                                    <?php endif; ?>

                                                    <?php if ($coinpayment['status'] == 1) : ?>
                                                        <form id="coinpayment" method="post"
                                                              action="https://www.coinpayments.net/index.php">
                                                            <input type="hidden" name="cmd" value="_pay">
                                                            <input type="hidden" name="reset" value="1">
                                                            <input type="hidden" name="merchant"
                                                                   value="<?php echo $coinpayment['merchant_account']; ?>">
                                                            <input type="hidden" name="currency"
                                                                   value="<?php echo $symbol; ?>">
                                                            <input type="hidden" name="amountf"
                                                                   value="<?php echo $total_amount; ?>">
                                                            <input type="hidden" name="item_name"
                                                                   value="<?php echo lang('users deposit deposit_for'); ?> <?php echo $this->settings->site_name; ?>">
                                                            <input type="hidden" name="first_name"
                                                                   value="<?php echo $user['first_name']; ?>">
                                                            <input type="hidden" name="last_name"
                                                                   value="<?php echo $user['last_name']; ?>">
                                                            <input type="hidden" name="email"
                                                                   value="<?php echo $user['email']; ?>">
                                                            <input type="hidden" name="custom"
                                                                   value="<?php echo $user['username']; ?>">
                                                            <input type="hidden" name="success_url"
                                                                   value="<?php echo base_url(); ?>sci/success">
                                                            <input type="hidden" name="cancel_url"
                                                                   value="<?php echo base_url(); ?>sci/fail">
                                                            <input type="hidden" name="want_shipping" value="0">

                                                            <?php echo $this->helper->getPayementGoButton(); ?>
                                                        </form>
                                                    <?php endif; ?>

                                                    <?php if ($skrill['status'] == 1) : ?>
                                                        <form action="https://pay.skrill.com" name="skrill"
                                                              method="post" target="skrill" id="skrill">
                                                            <input type="hidden" name="pay_to_email"
                                                                   value="<?php echo $skrill['merchant_account']; ?>">
                                                            <input type="hidden" name="status_url"
                                                                   value="<?php echo base_url(); ?>ipn/skrill">
                                                            <input type="hidden" name="return_url"
                                                                   value="<?php echo base_url(); ?>sci/success">
                                                            <input type="hidden" name="transaction_id "
                                                                   value="<?php echo $skrill['id_transaction'] ?>">
                                                            <input type="hidden" name="merchant_fields" value="Field1">
                                                            <input type="hidden" name="Field1"
                                                                   value="<?php echo $user['username'] ?>">
                                                            <input type="hidden" name="language" value="EN">
                                                            <input type="hidden" name="amount"
                                                                   value="<?php echo $total_amount; ?>">
                                                            <input type="hidden" name="currency"
                                                                   value="<?php echo $symbol; ?>">
                                                            <input type="hidden" name="detail1_description"
                                                                   value="<?php echo lang('users deposit deposit_for'); ?>:">
                                                            <input type="hidden" name="detail1_text"
                                                                   value="<?php echo $user['username'] ?>">
                                                            <?php echo $this->helper->getPayementGoButton('Pay', 'Pay'); ?>
                                                        </form>
                                                    <?php endif; ?>
                                                </div>
                                            </div>


                                        <?php } ?>

                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-md-6">
                        <i class="icon-shield icons text-success"></i>
                        <small><a href="#" class="text-success"><?php echo lang('users sci under_protect'); ?></a>
                        </small>
                    </div>
                    <div class="col-md-6 text-right">
                        <div class="dropdown dropup">
                            <button id="session-language" class="btn btn-outline-secondary btn-sm dropdown-toggle"
                                    type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <?php echo lang('core button language'); ?>
                            </button>
                            <div id="session-language-dropdown" class="dropdown-menu"
                                 aria-labelledby="session-language">
                                <?php foreach ($this->languages as $key => $name) : ?>
                                    <a class="dropdown-item" href="#" rel="<?php echo $key; ?>">
                                        <?php if ($key == $this->session->language) : ?>
                                            <i class="icon-arrow-right icons"></i>
                                        <?php endif; ?>
                                        <?php echo $name; ?>
                                    </a>
                                <?php endforeach; ?>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3">

    </div>
    <div class="col-md-12 text-center">
        <small><a class="text-muted"
                  href="<?php echo base_url('user/register'); ?>"><?php echo lang('users sci accept'); ?></a></small>
    </div>
    <div class="col-md-12 text-center mb-4">
        <small><a class="text-muted" href="<?php echo base_url('how-it-works'); ?>"><?php echo date('Y') ?>
                , <?php echo $this->settings->site_name; ?></a></small>
    </div>
</div>

<script>
    var forms = document.querySelectorAll('form');
    var radios = document.querySelectorAll('form#check input[type=radio]');
    forms[0].addEventListener("click", function (e) {
        if (e.target && e.target.nodeName == "INPUT") {
            hideFormsButFirst();
            setFormVisible(e.target.value);
        }
    });

    function hideFormsButFirst() {
        for (var i = 0; i < forms.length; ++i) {
            forms[i].style.display = 'none';
        }
        forms[0].style.display = 'block';
    }

    function setFormVisible(id = "paypal") {
        var form = document.getElementById(id);
        form.style.display = 'block';
    }

    function init() {
        hideFormsButFirst();
        setFormVisible();
    }

    init();
</script>