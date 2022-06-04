#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # Encodes whether a FinancialAccount has access to a particular feature, with a status enum and associated `status_details`. Stripe or the platform may control features via the requested field.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class FeatureAccess1
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    @[JSON::Field(key: "card_issuing", type: Access?, presence: true, ignore_serialize: card_issuing.nil? && !card_issuing_present?)]
    property card_issuing : Access?

    @[JSON::Field(ignore: true)]
    property? card_issuing_present : Bool = false

    @[JSON::Field(key: "deposit_insurance", type: Access?, presence: true, ignore_serialize: deposit_insurance.nil? && !deposit_insurance_present?)]
    property deposit_insurance : Access?

    @[JSON::Field(ignore: true)]
    property? deposit_insurance_present : Bool = false

    @[JSON::Field(key: "financial_addresses", type: FinancialAddresses?, presence: true, ignore_serialize: financial_addresses.nil? && !financial_addresses_present?)]
    property financial_addresses : FinancialAddresses?

    @[JSON::Field(ignore: true)]
    property? financial_addresses_present : Bool = false

    @[JSON::Field(key: "inbound_transfers", type: InboundTransfers1?, presence: true, ignore_serialize: inbound_transfers.nil? && !inbound_transfers_present?)]
    property inbound_transfers : InboundTransfers1?

    @[JSON::Field(ignore: true)]
    property? inbound_transfers_present : Bool = false

    @[JSON::Field(key: "intra_stripe_flows", type: Access?, presence: true, ignore_serialize: intra_stripe_flows.nil? && !intra_stripe_flows_present?)]
    property intra_stripe_flows : Access?

    @[JSON::Field(ignore: true)]
    property? intra_stripe_flows_present : Bool = false

    @[JSON::Field(key: "outbound_payments", type: OutboundPayments?, presence: true, ignore_serialize: outbound_payments.nil? && !outbound_payments_present?)]
    property outbound_payments : OutboundPayments?

    @[JSON::Field(ignore: true)]
    property? outbound_payments_present : Bool = false

    @[JSON::Field(key: "outbound_transfers", type: OutboundTransfers?, presence: true, ignore_serialize: outbound_transfers.nil? && !outbound_transfers_present?)]
    property outbound_transfers : OutboundTransfers?

    @[JSON::Field(ignore: true)]
    property? outbound_transfers_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @card_issuing : Access? = nil, 
      @deposit_insurance : Access? = nil, 
      @financial_addresses : FinancialAddresses? = nil, 
      @inbound_transfers : InboundTransfers1? = nil, 
      @intra_stripe_flows : Access? = nil, 
      @outbound_payments : OutboundPayments? = nil, 
      @outbound_transfers : OutboundTransfers? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?

      true
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@card_issuing, @deposit_insurance, @financial_addresses, @inbound_transfers, @intra_stripe_flows, @outbound_payments, @outbound_transfers)
  end
end
