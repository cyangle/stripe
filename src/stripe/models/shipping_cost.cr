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
  class ShippingCost
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "shipping_rate", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_rate : String? = nil

    @[JSON::Field(key: "shipping_rate_data", type: Stripe::MethodParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_rate_data : Stripe::MethodParams? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @shipping_rate : String? = nil,
      @shipping_rate_data : Stripe::MethodParams? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _shipping_rate = @shipping_rate
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("shipping_rate", _shipping_rate.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _shipping_rate_data = @shipping_rate_data
        invalid_properties.concat(_shipping_rate_data.list_invalid_properties_for("shipping_rate_data")) if _shipping_rate_data.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _shipping_rate = @shipping_rate
        return false if _shipping_rate.to_s.size > 5000
      end
      if _shipping_rate_data = @shipping_rate_data
        return false if _shipping_rate_data.is_a?(OpenApi::Validatable) && !_shipping_rate_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_rate Object to be assigned
    def shipping_rate=(shipping_rate : String?)
      if shipping_rate.nil?
        return @shipping_rate = nil
      end
      _shipping_rate = shipping_rate.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("shipping_rate", _shipping_rate.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @shipping_rate = _shipping_rate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_rate_data Object to be assigned
    def shipping_rate_data=(shipping_rate_data : Stripe::MethodParams?)
      if shipping_rate_data.nil?
        return @shipping_rate_data = nil
      end
      _shipping_rate_data = shipping_rate_data.not_nil!
      _shipping_rate_data.validate if _shipping_rate_data.is_a?(OpenApi::Validatable)
      @shipping_rate_data = _shipping_rate_data
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@shipping_rate, @shipping_rate_data)
  end
end
