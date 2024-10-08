#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./deleted_terminal_reader"
require "./terminal_reader"
require "./terminal_reader_action"
require "./terminal_reader_location"

module Stripe
  alias GetTerminalReadersReader200Response = DeletedTerminalReader | TerminalReader
end
