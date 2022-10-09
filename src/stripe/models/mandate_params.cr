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
  class MandateParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "acceptance", type: Stripe::MandateAcceptanceParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acceptance : Stripe::MandateAcceptanceParams? = nil

    @[JSON::Field(key: "amount", type: Stripe::MandateParamsAmount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Stripe::MandateParamsAmount? = nil

    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "interval", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interval : String? = nil
    MAX_LENGTH_FOR_INTERVAL    = 5000
    ERROR_MESSAGE_FOR_INTERVAL = "invalid value for \"interval\", must be one of [one_time, scheduled, variable]."
    VALID_VALUES_FOR_INTERVAL  = String.static_array("one_time", "scheduled", "variable")

    @[JSON::Field(key: "notification_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter notification_method : String? = nil
    MAX_LENGTH_FOR_NOTIFICATION_METHOD    = 5000
    ERROR_MESSAGE_FOR_NOTIFICATION_METHOD = "invalid value for \"notification_method\", must be one of [deprecated_none, email, manual, none, stripe_email]."
    VALID_VALUES_FOR_NOTIFICATION_METHOD  = String.static_array("deprecated_none", "email", "manual", "none", "stripe_email")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acceptance : Stripe::MandateAcceptanceParams? = nil,
      @amount : Stripe::MandateParamsAmount? = nil,
      @currency : String? = nil,
      @interval : String? = nil,
      @notification_method : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_acceptance = @acceptance).nil?
        invalid_properties.concat(_acceptance.list_invalid_properties_for("acceptance")) if _acceptance.is_a?(OpenApi::Validatable)
      end
      unless (_amount = @amount).nil?
        invalid_properties.concat(_amount.list_invalid_properties_for("amount")) if _amount.is_a?(OpenApi::Validatable)
      end

      unless (_interval = @interval).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_INTERVAL) unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end
      unless (_notification_method = @notification_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_NOTIFICATION_METHOD) unless OpenApi::EnumValidator.valid?(_notification_method, VALID_VALUES_FOR_NOTIFICATION_METHOD)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_acceptance = @acceptance).nil?
        return false if _acceptance.is_a?(OpenApi::Validatable) && !_acceptance.valid?
      end

      unless (_amount = @amount).nil?
        return false if _amount.is_a?(OpenApi::Validatable) && !_amount.valid?
      end

      unless (_interval = @interval).nil?
        return false unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end

      unless (_notification_method = @notification_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_notification_method, VALID_VALUES_FOR_NOTIFICATION_METHOD)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acceptance Object to be assigned
    def acceptance=(acceptance : Stripe::MandateAcceptanceParams?)
      if acceptance.nil?
        return @acceptance = nil
      end
      _acceptance = acceptance.not_nil!
      _acceptance.validate if _acceptance.is_a?(OpenApi::Validatable)
      @acceptance = _acceptance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Stripe::MandateParamsAmount?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      _amount.validate if _amount.is_a?(OpenApi::Validatable)
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        return @currency = nil
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval : String?)
      if interval.nil?
        return @interval = nil
      end
      _interval = interval.not_nil!
      OpenApi::EnumValidator.validate("interval", _interval, VALID_VALUES_FOR_INTERVAL)
      @interval = _interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] notification_method Object to be assigned
    def notification_method=(notification_method : String?)
      if notification_method.nil?
        return @notification_method = nil
      end
      _notification_method = notification_method.not_nil!
      OpenApi::EnumValidator.validate("notification_method", _notification_method, VALID_VALUES_FOR_NOTIFICATION_METHOD)
      @notification_method = _notification_method
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@acceptance, @amount, @currency, @interval, @notification_method)
  end
end
