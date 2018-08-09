Rails.configuration.stripe = {
    :publishable_key => 'pk_test_uPyoBcl4TCPN5hEiclc75fLT',
    :secret_key => 'sk_test_bNG7b9zQhtr8WCjD3tm81G62'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]