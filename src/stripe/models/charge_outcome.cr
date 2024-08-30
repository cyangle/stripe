#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./charge_outcome_rule"

module Stripe
  #
  class ChargeOutcome
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Possible values are `approved_by_network`, `declined_by_network`, `not_sent_to_network`, and `reversed_after_approval`. The value `reversed_after_approval` indicates the payment was [blocked by Stripe](https://stripe.com/docs/declines#blocked-payments) after bank authorization, and may temporarily appear as \"pending\" on a cardholder's statement.
    @[JSON::Field(key: "network_status", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter network_status : String? = nil
    MAX_LENGTH_FOR_NETWORK_STATUS = 5000

    # An enumerated value providing a more detailed explanation of the outcome's `type`. Charges blocked by Radar's default block rule have the value `highest_risk_level`. Charges placed in review by Radar's default review rule have the value `elevated_risk_level`. Charges authorized, blocked, or placed in review by custom rules have the value `rule`. See [understanding declines](https://stripe.com/docs/declines) for more details.
    @[JSON::Field(key: "reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter reason : String? = nil
    MAX_LENGTH_FOR_REASON = 5000

    # A human-readable description of the outcome type and reason, designed for you (the recipient of the payment), not your customer.
    @[JSON::Field(key: "seller_message", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter seller_message : String? = nil
    MAX_LENGTH_FOR_SELLER_MESSAGE = 5000

    # Possible values are `authorized`, `manual_review`, `issuer_declined`, `blocked`, and `invalid`. See [understanding declines](https://stripe.com/docs/declines) and [Radar reviews](https://stripe.com/docs/radar/reviews) for details.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    MAX_LENGTH_FOR__TYPE = 5000

    # End of Required Properties

    # Optional Properties

    # Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are `normal`, `elevated`, `highest`. For non-card payments, and card-based payments predating the public assignment of risk levels, this field will have the value `not_assessed`. In the event of an error in the evaluation, this field will have the value `unknown`. This field is only available with Radar.
    @[JSON::Field(key: "risk_level", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter risk_level : String? = nil
    MAX_LENGTH_FOR_RISK_LEVEL = 5000

    # Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are between 0 and 100. For non-card payments, card-based payments predating the public assignment of risk scores, or in the event of an error during evaluation, this field will not be present. This field is only available with Radar for Fraud Teams.
    @[JSON::Field(key: "risk_score", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter risk_score : Int64? = nil

    @[JSON::Field(key: "rule", type: Stripe::ChargeOutcomeRule?, default: nil, required: false, nullable: false, emit_null: false)]
    getter rule : Stripe::ChargeOutcomeRule? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @network_status : String? = nil,
      @reason : String? = nil,
      @seller_message : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @risk_level : String? = nil,
      @risk_score : Int64? = nil,
      @rule : Stripe::ChargeOutcomeRule? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_network_status = @network_status).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("network_status", _network_status.to_s.size, MAX_LENGTH_FOR_NETWORK_STATUS)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_reason = @reason).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reason", _reason.to_s.size, MAX_LENGTH_FOR_REASON)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_seller_message = @seller_message).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("seller_message", _seller_message.to_s.size, MAX_LENGTH_FOR_SELLER_MESSAGE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, MAX_LENGTH_FOR__TYPE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_risk_level = @risk_level).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("risk_level", _risk_level.to_s.size, MAX_LENGTH_FOR_RISK_LEVEL)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_rule = @rule).nil?
        invalid_properties.concat(_rule.list_invalid_properties_for("rule")) if _rule.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_network_status = @network_status).nil?
        return false if _network_status.to_s.size > MAX_LENGTH_FOR_NETWORK_STATUS
      end

      unless (_reason = @reason).nil?
        return false if _reason.to_s.size > MAX_LENGTH_FOR_REASON
      end

      unless (_seller_message = @seller_message).nil?
        return false if _seller_message.to_s.size > MAX_LENGTH_FOR_SELLER_MESSAGE
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false if __type.to_s.size > MAX_LENGTH_FOR__TYPE
      end

      unless (_risk_level = @risk_level).nil?
        return false if _risk_level.to_s.size > MAX_LENGTH_FOR_RISK_LEVEL
      end

      unless (_rule = @rule).nil?
        return false if _rule.is_a?(OpenApi::Validatable) && !_rule.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network_status Object to be assigned
    def network_status=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("network_status", new_value.to_s.size, MAX_LENGTH_FOR_NETWORK_STATUS)
      end

      @network_status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("reason", new_value.to_s.size, MAX_LENGTH_FOR_REASON)
      end

      @reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] seller_message Object to be assigned
    def seller_message=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("seller_message", new_value.to_s.size, MAX_LENGTH_FOR_SELLER_MESSAGE)
      end

      @seller_message = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("_type", new_value.to_s.size, MAX_LENGTH_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] risk_level Object to be assigned
    def risk_level=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("risk_level", new_value.to_s.size, MAX_LENGTH_FOR_RISK_LEVEL)
      end

      @risk_level = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] risk_score Object to be assigned
    def risk_score=(new_value : Int64?)
      @risk_score = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rule Object to be assigned
    def rule=(new_value : Stripe::ChargeOutcomeRule?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @rule = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@network_status, @reason, @seller_message, @_type, @risk_level, @risk_score, @rule)
  end
end
