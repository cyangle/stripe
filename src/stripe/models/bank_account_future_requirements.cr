#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_requirements_error"
require "./external_account_requirements"

module Stripe
  # Information about the [upcoming new requirements for the bank account](https://stripe.com/docs/connect/custom-accounts/future-requirements), including what information needs to be collected, and by when.
  alias BankAccountFutureRequirements = ExternalAccountRequirements
end
