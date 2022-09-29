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
  class PaymentMethodParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "account_number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_number : String? = nil

    @[JSON::Field(key: "institution_number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter institution_number : String? = nil

    @[JSON::Field(key: "transit_number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transit_number : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_number : String? = nil,
      @institution_number : String? = nil,
      @transit_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"account_number\" is required and cannot be null") if @account_number.nil?
      if _account_number = @account_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_number", _account_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"institution_number\" is required and cannot be null") if @institution_number.nil?
      if _institution_number = @institution_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("institution_number", _institution_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"transit_number\" is required and cannot be null") if @transit_number.nil?
      if _transit_number = @transit_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("transit_number", _transit_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account_number.nil?
      if _account_number = @account_number
        return false if _account_number.to_s.size > 5000
      end
      return false if @institution_number.nil?
      if _institution_number = @institution_number
        return false if _institution_number.to_s.size > 5000
      end
      return false if @transit_number.nil?
      if _transit_number = @transit_number
        return false if _transit_number.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_number Object to be assigned
    def account_number=(account_number : String?)
      if account_number.nil?
        raise ArgumentError.new("\"account_number\" is required and cannot be null")
      end
      _account_number = account_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_number", _account_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @account_number = _account_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution_number Object to be assigned
    def institution_number=(institution_number : String?)
      if institution_number.nil?
        raise ArgumentError.new("\"institution_number\" is required and cannot be null")
      end
      _institution_number = institution_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("institution_number", _institution_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @institution_number = _institution_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transit_number Object to be assigned
    def transit_number=(transit_number : String?)
      if transit_number.nil?
        raise ArgumentError.new("\"transit_number\" is required and cannot be null")
      end
      _transit_number = transit_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("transit_number", _transit_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @transit_number = _transit_number
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_number, @institution_number, @transit_number)
  end
end
