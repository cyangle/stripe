#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class TreasuryReceivedCreditsResourceSourceFlowsDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The type of the source flow that originated the ReceivedCredit.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [credit_reversal, other, outbound_payment, payout]."
    VALID_VALUES_FOR__TYPE  = String.static_array("credit_reversal", "other", "outbound_payment", "payout")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "credit_reversal", type: Stripe::TreasuryCreditReversal?, default: nil, required: false, nullable: false, emit_null: false)]
    getter credit_reversal : Stripe::TreasuryCreditReversal? = nil

    @[JSON::Field(key: "outbound_payment", type: Stripe::TreasuryOutboundPayment?, default: nil, required: false, nullable: false, emit_null: false)]
    getter outbound_payment : Stripe::TreasuryOutboundPayment? = nil

    @[JSON::Field(key: "payout", type: Stripe::Payout?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payout : Stripe::Payout? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @credit_reversal : Stripe::TreasuryCreditReversal? = nil,
      @outbound_payment : Stripe::TreasuryOutboundPayment? = nil,
      @payout : Stripe::Payout? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_credit_reversal = @credit_reversal).nil?
        invalid_properties.concat(_credit_reversal.list_invalid_properties_for("credit_reversal")) if _credit_reversal.is_a?(OpenApi::Validatable)
      end
      unless (_outbound_payment = @outbound_payment).nil?
        invalid_properties.concat(_outbound_payment.list_invalid_properties_for("outbound_payment")) if _outbound_payment.is_a?(OpenApi::Validatable)
      end
      unless (_payout = @payout).nil?
        invalid_properties.concat(_payout.list_invalid_properties_for("payout")) if _payout.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_credit_reversal = @credit_reversal).nil?
        return false if _credit_reversal.is_a?(OpenApi::Validatable) && !_credit_reversal.valid?
      end

      unless (_outbound_payment = @outbound_payment).nil?
        return false if _outbound_payment.is_a?(OpenApi::Validatable) && !_outbound_payment.valid?
      end

      unless (_payout = @payout).nil?
        return false if _payout.is_a?(OpenApi::Validatable) && !_payout.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credit_reversal Object to be assigned
    def credit_reversal=(credit_reversal : Stripe::TreasuryCreditReversal?)
      if credit_reversal.nil?
        return @credit_reversal = nil
      end
      _credit_reversal = credit_reversal.not_nil!
      _credit_reversal.validate if _credit_reversal.is_a?(OpenApi::Validatable)
      @credit_reversal = _credit_reversal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outbound_payment Object to be assigned
    def outbound_payment=(outbound_payment : Stripe::TreasuryOutboundPayment?)
      if outbound_payment.nil?
        return @outbound_payment = nil
      end
      _outbound_payment = outbound_payment.not_nil!
      _outbound_payment.validate if _outbound_payment.is_a?(OpenApi::Validatable)
      @outbound_payment = _outbound_payment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payout Object to be assigned
    def payout=(payout : Stripe::Payout?)
      if payout.nil?
        return @payout = nil
      end
      _payout = payout.not_nil!
      _payout.validate if _payout.is_a?(OpenApi::Validatable)
      @payout = _payout
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @credit_reversal, @outbound_payment, @payout)
  end
end
