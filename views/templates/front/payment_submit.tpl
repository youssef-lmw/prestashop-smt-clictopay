{*{$reference}
{$total}
{$url}
{$Devise}
{$sid}
{$affilie}*}

{*/*
* (c) 2017 ExtrumWeb International <info@extrumweb.com>
*
* For the full copyright and license information, please view the LICENSE
* file that was distributed with this source code.
*/*}

<style>
    .centering {
        margin-left: auto;
        margin-right: auto;
        text-align: center;
    }

    img {
        vertical-align: middle;
        height: 330px;
        width: 330px
    }
</style>

<div class="centering">
    <img src="/modules/clictopay/views/img/loading.gif" alt="loading">
    <h2>{l s='Operation in progress, Please wait' mod='clicktopay'}</h2>
</div>

<form name="clicktopay" action="https://ipay.clictopay.com/payment/rest/register.do" method="post">
    <input name="userName" type="hidden" value="0870231000">
    <input name="password" type="hidden" value="d83E9eaAA">
    <input name="orderNumber" type="hidden" value="<?php echo $_SESSION['Reference']; ?>">
    <input name="amount" type="hidden" value="<?php echo str_replace('.', '', $_SESSION['Montant']); ?>">
    <input name="currency" type="hidden" value="788">
    <input name="returnUrl" type="hidden" value="http://www.domain.com/index.php?fc=module&module=clictopay&controller=smtcontrol">
</form>

<script>
    window.onload=function(){
        alert('test');
        //document.forms["clicktopay"].submit();
    }
</script>
