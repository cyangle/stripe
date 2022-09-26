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
  class Param
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "account_number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_number : String? = nil

    @[JSON::Field(key: "bsb_number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter bsb_number : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_number : String? = nil,
      @bsb_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"account_number\" is required and cannot be null") if @account_number.nil?
      if _account_number = @account_number
        if _account_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"bsb_number\" is required and cannot be null") if @bsb_number.nil?
      if _bsb_number = @bsb_number
        if _bsb_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"bsb_number\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_number.nil?
      if _account_number = @account_number
        return false if _account_number.to_s.size > 5000
      end
      return false if @bsb_number.nil?
      if _bsb_number = @bsb_number
        return false if _bsb_number.to_s.size > 5000
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
      if _account_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
      end

      @account_number = account_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bsb_number Object to be assigned
    def bsb_number=(bsb_number : String?)
      if bsb_number.nil?
        raise ArgumentError.new("\"bsb_number\" is required and cannot be null")
      end
      _bsb_number = bsb_number.not_nil!
      if _bsb_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bsb_number\", the character length must be smaller than or equal to 5000.")
      end

      @bsb_number = bsb_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_number, @bsb_number)
  end
end
