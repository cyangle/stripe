#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./method_params"

module Stripe
  class ShippingCost
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) representing the shipping charge. If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes are calculated on top of this amount.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # If provided, the [shipping rate](https://stripe.com/docs/api/shipping_rates/object)'s `amount`, `tax_code` and `tax_behavior` are used. If you provide a shipping rate, then you cannot pass the `amount`, `tax_code`, or `tax_behavior` parameters.
    @[JSON::Field(key: "shipping_rate", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_rate : String? = nil
    MAX_LENGTH_FOR_SHIPPING_RATE = 5000

    @[JSON::Field(key: "shipping_rate_data", type: Stripe::MethodParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_rate_data : Stripe::MethodParams? = nil

    # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes. Defaults to `exclusive`.
    @[JSON::Field(key: "tax_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_behavior : String? = nil
    ERROR_MESSAGE_FOR_TAX_BEHAVIOR = "invalid value for \"tax_behavior\", must be one of [exclusive, inclusive]."
    VALID_VALUES_FOR_TAX_BEHAVIOR  = String.static_array("exclusive", "inclusive")

    # The [tax code](https://stripe.com/docs/tax/tax-categories) used to calculate tax on shipping. If not provided, the default shipping tax code from your [Tax Settings](https://dashboard.stripe.com/settings/tax) is used.
    @[JSON::Field(key: "tax_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_code : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @shipping_rate : String? = nil,
      @shipping_rate_data : Stripe::MethodParams? = nil,
      @tax_behavior : String? = nil,
      @tax_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_shipping_rate = @shipping_rate).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("shipping_rate", _shipping_rate.to_s.size, MAX_LENGTH_FOR_SHIPPING_RATE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_shipping_rate_data = @shipping_rate_data).nil?
        invalid_properties.concat(_shipping_rate_data.list_invalid_properties_for("shipping_rate_data")) if _shipping_rate_data.is_a?(OpenApi::Validatable)
      end
      unless (_tax_behavior = @tax_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TAX_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_shipping_rate = @shipping_rate).nil?
        return false if _shipping_rate.to_s.size > MAX_LENGTH_FOR_SHIPPING_RATE
      end

      unless (_shipping_rate_data = @shipping_rate_data).nil?
        return false if _shipping_rate_data.is_a?(OpenApi::Validatable) && !_shipping_rate_data.valid?
      end

      unless (_tax_behavior = @tax_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Int64?)
      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_rate Object to be assigned
    def shipping_rate=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("shipping_rate", new_value.to_s.size, MAX_LENGTH_FOR_SHIPPING_RATE)
      end

      @shipping_rate = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_rate_data Object to be assigned
    def shipping_rate_data=(new_value : Stripe::MethodParams?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @shipping_rate_data = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_behavior Object to be assigned
    def tax_behavior=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("tax_behavior", new_value, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      @tax_behavior = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_code Object to be assigned
    def tax_code=(new_value : String?)
      @tax_code = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @shipping_rate, @shipping_rate_data, @tax_behavior, @tax_code)
  end
end
