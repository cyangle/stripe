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
  class PaymentMethodOptionsParam20
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "confirmation_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter confirmation_number : String? = nil

    @[JSON::Field(key: "expires_after_days", type: Stripe::UpdateParams1ApplicationFeeAmount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expires_after_days : Stripe::UpdateParams1ApplicationFeeAmount? = nil

    @[JSON::Field(key: "expires_at", type: Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expires_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil

    @[JSON::Field(key: "product_description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product_description : String? = nil

    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = OpenApi::EnumValidator.new("setup_future_usage", "String", ["none"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @confirmation_number : String? = nil,
      @expires_after_days : Stripe::UpdateParams1ApplicationFeeAmount? = nil,
      @expires_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil,
      @product_description : String? = nil,
      @setup_future_usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _confirmation_number = @confirmation_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("confirmation_number", _confirmation_number.to_s.size, 11)
          invalid_properties.push(max_length_error)
        end
      end
      if _expires_after_days = @expires_after_days
        invalid_properties.concat(_expires_after_days.list_invalid_properties_for("expires_after_days")) if _expires_after_days.is_a?(OpenApi::Validatable)
      end
      if _expires_at = @expires_at
        invalid_properties.concat(_expires_at.list_invalid_properties_for("expires_at")) if _expires_at.is_a?(OpenApi::Validatable)
      end
      if _product_description = @product_description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product_description", _product_description.to_s.size, 22)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _confirmation_number = @confirmation_number
        return false if _confirmation_number.to_s.size > 11
      end
      if _expires_after_days = @expires_after_days
        return false if _expires_after_days.is_a?(OpenApi::Validatable) && !_expires_after_days.valid?
      end
      if _expires_at = @expires_at
        return false if _expires_at.is_a?(OpenApi::Validatable) && !_expires_at.valid?
      end
      if _product_description = @product_description
        return false if _product_description.to_s.size > 22
      end
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] confirmation_number Object to be assigned
    def confirmation_number=(confirmation_number : String?)
      if confirmation_number.nil?
        return @confirmation_number = nil
      end
      _confirmation_number = confirmation_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("confirmation_number", _confirmation_number.to_s.size, 11)
        raise ArgumentError.new(max_length_error)
      end

      @confirmation_number = _confirmation_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_after_days Object to be assigned
    def expires_after_days=(expires_after_days : Stripe::UpdateParams1ApplicationFeeAmount?)
      if expires_after_days.nil?
        return @expires_after_days = nil
      end
      _expires_after_days = expires_after_days.not_nil!
      _expires_after_days.validate if _expires_after_days.is_a?(OpenApi::Validatable)
      @expires_after_days = _expires_after_days
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(expires_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?)
      if expires_at.nil?
        return @expires_at = nil
      end
      _expires_at = expires_at.not_nil!
      _expires_at.validate if _expires_at.is_a?(OpenApi::Validatable)
      @expires_at = _expires_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_description Object to be assigned
    def product_description=(product_description : String?)
      if product_description.nil?
        return @product_description = nil
      end
      _product_description = product_description.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product_description", _product_description.to_s.size, 22)
        raise ArgumentError.new(max_length_error)
      end

      @product_description = _product_description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      if setup_future_usage.nil?
        return @setup_future_usage = nil
      end
      _setup_future_usage = setup_future_usage.not_nil!
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(_setup_future_usage)
      @setup_future_usage = _setup_future_usage
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@confirmation_number, @expires_after_days, @expires_at, @product_description, @setup_future_usage)
  end
end
