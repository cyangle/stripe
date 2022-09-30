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
  class UsBankAccountSourceParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "account_holder_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_holder_name : String? = nil

    @[JSON::Field(key: "account_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_number : String? = nil

    @[JSON::Field(key: "routing_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter routing_number : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_holder_name : String? = nil,
      @account_number : String? = nil,
      @routing_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _account_holder_name = @account_holder_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_holder_name", _account_holder_name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _account_number = @account_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_number", _account_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _routing_number = @routing_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("routing_number", _routing_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _account_holder_name = @account_holder_name
        return false if _account_holder_name.to_s.size > 5000
      end

      if _account_number = @account_number
        return false if _account_number.to_s.size > 5000
      end

      if _routing_number = @routing_number
        return false if _routing_number.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder_name Object to be assigned
    def account_holder_name=(account_holder_name : String?)
      if account_holder_name.nil?
        return @account_holder_name = nil
      end
      _account_holder_name = account_holder_name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_holder_name", _account_holder_name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @account_holder_name = _account_holder_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_number Object to be assigned
    def account_number=(account_number : String?)
      if account_number.nil?
        return @account_number = nil
      end
      _account_number = account_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_number", _account_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @account_number = _account_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing_number Object to be assigned
    def routing_number=(routing_number : String?)
      if routing_number.nil?
        return @routing_number = nil
      end
      _routing_number = routing_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("routing_number", _routing_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @routing_number = _routing_number
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_holder_name, @account_number, @routing_number)
  end
end
