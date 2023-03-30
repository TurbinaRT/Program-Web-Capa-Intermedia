<?php
define('ProPayPal', 0);
if(ProPayPal){
    define("PayPalClientId", "AT0cjjYOoCRopAeAycrehncDoK0PEe2TLjf9zFsv_lseVjNSjOrPHnpgm0kKgZ46K9UpwAv2N547cJcn");
    define("PayPalSecret", "************");
    define("PayPalBaseUrl", "https://api.paypal.com/v1/");
    define("PayPalENV", "production");
} else {
    define("PayPalClientId", "*********");
    define("PayPalSecret", "**********");
    define("PayPalBaseUrl", "http://localhost/dashboard/ejemplosAPIFBPAYPAL/");
    define("PayPalENV", "sandbox");
}
?>