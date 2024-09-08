#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account"
require "./account_business_profile1"
require "./account_capabilities"
require "./account_future_requirements"
require "./account_requirements"
require "./account_settings1"
require "./account_tos_acceptance"
require "./account_unification_account_controller"
require "./external_account_list"
require "./legal_entity_company"
require "./person"

module Stripe
  # The ID of the account that the bank account is associated with.
  alias BankAccountAccount = Account | String
end
