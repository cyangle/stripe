#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # Encodes whether a FinancialAccount has access to a particular feature, with a status enum and associated `status_details`. Stripe or the platform may control features via the requested field.
  class FeatureAccess1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "card_issuing", type: Stripe::Access?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card_issuing : Stripe::Access? = nil

    @[JSON::Field(key: "deposit_insurance", type: Stripe::Access?, default: nil, required: false, nullable: false, emit_null: false)]
    getter deposit_insurance : Stripe::Access? = nil

    @[JSON::Field(key: "financial_addresses", type: Stripe::FinancialAddresses?, default: nil, required: false, nullable: false, emit_null: false)]
    getter financial_addresses : Stripe::FinancialAddresses? = nil

    @[JSON::Field(key: "inbound_transfers", type: Stripe::InboundTransfers1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter inbound_transfers : Stripe::InboundTransfers1? = nil

    @[JSON::Field(key: "intra_stripe_flows", type: Stripe::Access?, default: nil, required: false, nullable: false, emit_null: false)]
    getter intra_stripe_flows : Stripe::Access? = nil

    @[JSON::Field(key: "outbound_payments", type: Stripe::OutboundPayments?, default: nil, required: false, nullable: false, emit_null: false)]
    getter outbound_payments : Stripe::OutboundPayments? = nil

    @[JSON::Field(key: "outbound_transfers", type: Stripe::OutboundTransfers?, default: nil, required: false, nullable: false, emit_null: false)]
    getter outbound_transfers : Stripe::OutboundTransfers? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @card_issuing : Stripe::Access? = nil,
      @deposit_insurance : Stripe::Access? = nil,
      @financial_addresses : Stripe::FinancialAddresses? = nil,
      @inbound_transfers : Stripe::InboundTransfers1? = nil,
      @intra_stripe_flows : Stripe::Access? = nil,
      @outbound_payments : Stripe::OutboundPayments? = nil,
      @outbound_transfers : Stripe::OutboundTransfers? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _card_issuing = @card_issuing
        invalid_properties.concat(_card_issuing.list_invalid_properties_for("card_issuing")) if _card_issuing.is_a?(OpenApi::Validatable)
      end
      if _deposit_insurance = @deposit_insurance
        invalid_properties.concat(_deposit_insurance.list_invalid_properties_for("deposit_insurance")) if _deposit_insurance.is_a?(OpenApi::Validatable)
      end
      if _financial_addresses = @financial_addresses
        invalid_properties.concat(_financial_addresses.list_invalid_properties_for("financial_addresses")) if _financial_addresses.is_a?(OpenApi::Validatable)
      end
      if _inbound_transfers = @inbound_transfers
        invalid_properties.concat(_inbound_transfers.list_invalid_properties_for("inbound_transfers")) if _inbound_transfers.is_a?(OpenApi::Validatable)
      end
      if _intra_stripe_flows = @intra_stripe_flows
        invalid_properties.concat(_intra_stripe_flows.list_invalid_properties_for("intra_stripe_flows")) if _intra_stripe_flows.is_a?(OpenApi::Validatable)
      end
      if _outbound_payments = @outbound_payments
        invalid_properties.concat(_outbound_payments.list_invalid_properties_for("outbound_payments")) if _outbound_payments.is_a?(OpenApi::Validatable)
      end
      if _outbound_transfers = @outbound_transfers
        invalid_properties.concat(_outbound_transfers.list_invalid_properties_for("outbound_transfers")) if _outbound_transfers.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _card_issuing = @card_issuing
        return false if _card_issuing.is_a?(OpenApi::Validatable) && !_card_issuing.valid?
      end
      if _deposit_insurance = @deposit_insurance
        return false if _deposit_insurance.is_a?(OpenApi::Validatable) && !_deposit_insurance.valid?
      end
      if _financial_addresses = @financial_addresses
        return false if _financial_addresses.is_a?(OpenApi::Validatable) && !_financial_addresses.valid?
      end
      if _inbound_transfers = @inbound_transfers
        return false if _inbound_transfers.is_a?(OpenApi::Validatable) && !_inbound_transfers.valid?
      end
      if _intra_stripe_flows = @intra_stripe_flows
        return false if _intra_stripe_flows.is_a?(OpenApi::Validatable) && !_intra_stripe_flows.valid?
      end
      if _outbound_payments = @outbound_payments
        return false if _outbound_payments.is_a?(OpenApi::Validatable) && !_outbound_payments.valid?
      end
      if _outbound_transfers = @outbound_transfers
        return false if _outbound_transfers.is_a?(OpenApi::Validatable) && !_outbound_transfers.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_issuing Object to be assigned
    def card_issuing=(card_issuing : Stripe::Access?)
      if card_issuing.nil?
        return @card_issuing = nil
      end
      _card_issuing = card_issuing.not_nil!
      _card_issuing.validate if _card_issuing.is_a?(OpenApi::Validatable)
      @card_issuing = _card_issuing
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deposit_insurance Object to be assigned
    def deposit_insurance=(deposit_insurance : Stripe::Access?)
      if deposit_insurance.nil?
        return @deposit_insurance = nil
      end
      _deposit_insurance = deposit_insurance.not_nil!
      _deposit_insurance.validate if _deposit_insurance.is_a?(OpenApi::Validatable)
      @deposit_insurance = _deposit_insurance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_addresses Object to be assigned
    def financial_addresses=(financial_addresses : Stripe::FinancialAddresses?)
      if financial_addresses.nil?
        return @financial_addresses = nil
      end
      _financial_addresses = financial_addresses.not_nil!
      _financial_addresses.validate if _financial_addresses.is_a?(OpenApi::Validatable)
      @financial_addresses = _financial_addresses
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inbound_transfers Object to be assigned
    def inbound_transfers=(inbound_transfers : Stripe::InboundTransfers1?)
      if inbound_transfers.nil?
        return @inbound_transfers = nil
      end
      _inbound_transfers = inbound_transfers.not_nil!
      _inbound_transfers.validate if _inbound_transfers.is_a?(OpenApi::Validatable)
      @inbound_transfers = _inbound_transfers
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] intra_stripe_flows Object to be assigned
    def intra_stripe_flows=(intra_stripe_flows : Stripe::Access?)
      if intra_stripe_flows.nil?
        return @intra_stripe_flows = nil
      end
      _intra_stripe_flows = intra_stripe_flows.not_nil!
      _intra_stripe_flows.validate if _intra_stripe_flows.is_a?(OpenApi::Validatable)
      @intra_stripe_flows = _intra_stripe_flows
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outbound_payments Object to be assigned
    def outbound_payments=(outbound_payments : Stripe::OutboundPayments?)
      if outbound_payments.nil?
        return @outbound_payments = nil
      end
      _outbound_payments = outbound_payments.not_nil!
      _outbound_payments.validate if _outbound_payments.is_a?(OpenApi::Validatable)
      @outbound_payments = _outbound_payments
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outbound_transfers Object to be assigned
    def outbound_transfers=(outbound_transfers : Stripe::OutboundTransfers?)
      if outbound_transfers.nil?
        return @outbound_transfers = nil
      end
      _outbound_transfers = outbound_transfers.not_nil!
      _outbound_transfers.validate if _outbound_transfers.is_a?(OpenApi::Validatable)
      @outbound_transfers = _outbound_transfers
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@card_issuing, @deposit_insurance, @financial_addresses, @inbound_transfers, @intra_stripe_flows, @outbound_payments, @outbound_transfers)
  end
end
