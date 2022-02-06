<?php
    // https://test.clictopay.com/payment/rest/register.do
    $userName = $_POST['userName'];
    $amount = $_POST['amount'];
    $orderNumber = $_POST['orderNumber'];
    $password = $_POST['password'];
    
    $content=file_get_contents('https://test.clictopay.com/payment/rest/register.do?amount='.$amount.'&currency=788&language=en&orderNumber='.$orderNumber.'&password='.$password.'&returnUrl=finish.html&userName='.$userName.'');
    $data=json_decode($content);
    
    if(isset($data->formUrl)){
        header("Location: $data->formUrl");
        die();
    }else{
        var_dump($data);die;
    }
    
    //Tools::redirect($data->formUrl);
