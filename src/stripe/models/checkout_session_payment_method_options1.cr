#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./checkout_acss_debit_payment_method_options"
require "./checkout_affirm_payment_method_options"
require "./checkout_afterpay_clearpay_payment_method_options"
require "./checkout_alipay_payment_method_options"
require "./checkout_amazon_pay_payment_method_options"
require "./checkout_au_becs_debit_payment_method_options"
require "./checkout_bacs_debit_payment_method_options"
require "./checkout_bancontact_payment_method_options"
require "./checkout_boleto_payment_method_options"
require "./checkout_card_payment_method_options"
require "./checkout_cashapp_payment_method_options"
require "./checkout_customer_balance_payment_method_options"
require "./checkout_eps_payment_method_options"
require "./checkout_fpx_payment_method_options"
require "./checkout_giropay_payment_method_options"
require "./checkout_grab_pay_payment_method_options"
require "./checkout_ideal_payment_method_options"
require "./checkout_klarna_payment_method_options"
require "./checkout_konbini_payment_method_options"
require "./checkout_link_payment_method_options"
require "./checkout_mobilepay_payment_method_options"
require "./checkout_multibanco_payment_method_options"
require "./checkout_oxxo_payment_method_options"
require "./checkout_p24_payment_method_options"
require "./checkout_paynow_payment_method_options"
require "./checkout_paypal_payment_method_options"
require "./checkout_pix_payment_method_options"
require "./checkout_revolut_pay_payment_method_options"
require "./checkout_sepa_debit_payment_method_options"
require "./checkout_session_payment_method_options"
require "./checkout_sofort_payment_method_options"
require "./checkout_swish_payment_method_options"
require "./checkout_us_bank_account_payment_method_options"

module Stripe
  # Payment-method-specific configuration for the PaymentIntent or SetupIntent of this CheckoutSession.
  alias CheckoutSessionPaymentMethodOptions1 = CheckoutSessionPaymentMethodOptions
end