#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./bank_account"
require "./bank_account_future_requirements"
require "./bank_account_requirements"
require "./card"
require "./card_account"
require "./source"
require "./source_code_verification_flow"
require "./source_order"
require "./source_owner1"
require "./source_receiver_flow"
require "./source_redirect_flow"
require "./source_type_ach_credit_transfer"
require "./source_type_ach_debit"
require "./source_type_acss_debit"
require "./source_type_alipay"
require "./source_type_au_becs_debit"
require "./source_type_bancontact"
require "./source_type_card"
require "./source_type_card_present"
require "./source_type_eps"
require "./source_type_giropay"
require "./source_type_ideal"
require "./source_type_klarna"
require "./source_type_multibanco"
require "./source_type_p24"
require "./source_type_sepa_credit_transfer"
require "./source_type_sepa_debit"
require "./source_type_sofort"
require "./source_type_three_d_secure"
require "./source_type_wechat"
require "./token_card_networks"

module Stripe
  alias PostCustomersCustomerSourcesId200Response = BankAccount | Card | Source
end
