#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./treasury_outbound_transfers_resource_ach_tracking_details"
require "./treasury_outbound_transfers_resource_outbound_transfer_resource_tracking_details"
require "./treasury_outbound_transfers_resource_us_domestic_wire_tracking_details"

module Stripe
  # Details about network-specific tracking information if available.
  alias TreasuryOutboundTransferTrackingDetails = TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetails
end
