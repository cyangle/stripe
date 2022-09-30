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
  #
  class ChargeOutcome
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Possible values are `authorized`, `manual_review`, `issuer_declined`, `blocked`, and `invalid`. See [understanding declines](https://stripe.com/docs/declines) and [Radar reviews](https://stripe.com/docs/radar/reviews) for details.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    # Optional properties

    # Possible values are `approved_by_network`, `declined_by_network`, `not_sent_to_network`, and `reversed_after_approval`. The value `reversed_after_approval` indicates the payment was [blocked by Stripe](https://stripe.com/docs/declines#blocked-payments) after bank authorization, and may temporarily appear as \"pending\" on a cardholder's statement.
    @[JSON::Field(key: "network_status", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: network_status.nil? && !network_status_present?)]
    getter network_status : String? = nil

    @[JSON::Field(ignore: true)]
    property? network_status_present : Bool = false

    # An enumerated value providing a more detailed explanation of the outcome's `type`. Charges blocked by Radar's default block rule have the value `highest_risk_level`. Charges placed in review by Radar's default review rule have the value `elevated_risk_level`. Charges authorized, blocked, or placed in review by custom rules have the value `rule`. See [understanding declines](https://stripe.com/docs/declines) for more details.
    @[JSON::Field(key: "reason", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reason.nil? && !reason_present?)]
    getter reason : String? = nil

    @[JSON::Field(ignore: true)]
    property? reason_present : Bool = false

    # Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are `normal`, `elevated`, `highest`. For non-card payments, and card-based payments predating the public assignment of risk levels, this field will have the value `not_assessed`. In the event of an error in the evaluation, this field will have the value `unknown`. This field is only available with Radar.
    @[JSON::Field(key: "risk_level", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter risk_level : String? = nil

    # Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are between 0 and 100. For non-card payments, card-based payments predating the public assignment of risk scores, or in the event of an error during evaluation, this field will not be present. This field is only available with Radar for Fraud Teams.
    @[JSON::Field(key: "risk_score", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter risk_score : Int64? = nil

    @[JSON::Field(key: "rule", type: Stripe::ChargeOutcomeRule?, default: nil, required: false, nullable: false, emit_null: false)]
    getter rule : Stripe::ChargeOutcomeRule? = nil

    # A human-readable description of the outcome type and reason, designed for you (the recipient of the payment), not your customer.
    @[JSON::Field(key: "seller_message", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: seller_message.nil? && !seller_message_present?)]
    getter seller_message : String? = nil

    @[JSON::Field(ignore: true)]
    property? seller_message_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @network_status : String? = nil,
      @reason : String? = nil,
      @risk_level : String? = nil,
      @risk_score : Int64? = nil,
      @rule : Stripe::ChargeOutcomeRule? = nil,
      @seller_message : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      if __type = @_type
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _network_status = @network_status
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("network_status", _network_status.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _reason = @reason
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reason", _reason.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _risk_level = @risk_level
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("risk_level", _risk_level.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      if _rule = @rule
        invalid_properties.concat(_rule.list_invalid_properties_for("rule")) if _rule.is_a?(OpenApi::Validatable)
      end
      if _seller_message = @seller_message
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("seller_message", _seller_message.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      if __type = @_type
        return false if __type.to_s.size > 5000
      end

      if _network_status = @network_status
        return false if _network_status.to_s.size > 5000
      end

      if _reason = @reason
        return false if _reason.to_s.size > 5000
      end

      if _risk_level = @risk_level
        return false if _risk_level.to_s.size > 5000
      end

      if _rule = @rule
        return false if _rule.is_a?(OpenApi::Validatable) && !_rule.valid?
      end

      if _seller_message = @seller_message
        return false if _seller_message.to_s.size > 5000
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network_status Object to be assigned
    def network_status=(network_status : String?)
      if network_status.nil?
        return @network_status = nil
      end
      _network_status = network_status.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("network_status", _network_status.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @network_status = _network_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason : String?)
      if reason.nil?
        return @reason = nil
      end
      _reason = reason.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reason", _reason.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @reason = _reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] risk_level Object to be assigned
    def risk_level=(risk_level : String?)
      if risk_level.nil?
        return @risk_level = nil
      end
      _risk_level = risk_level.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("risk_level", _risk_level.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @risk_level = _risk_level
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] risk_score Object to be assigned
    def risk_score=(risk_score : Int64?)
      if risk_score.nil?
        return @risk_score = nil
      end
      _risk_score = risk_score.not_nil!
      @risk_score = _risk_score
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rule Object to be assigned
    def rule=(rule : Stripe::ChargeOutcomeRule?)
      if rule.nil?
        return @rule = nil
      end
      _rule = rule.not_nil!
      _rule.validate if _rule.is_a?(OpenApi::Validatable)
      @rule = _rule
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] seller_message Object to be assigned
    def seller_message=(seller_message : String?)
      if seller_message.nil?
        return @seller_message = nil
      end
      _seller_message = seller_message.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("seller_message", _seller_message.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @seller_message = _seller_message
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @network_status, @network_status_present, @reason, @reason_present, @risk_level, @risk_score, @rule, @seller_message, @seller_message_present)
  end
end
