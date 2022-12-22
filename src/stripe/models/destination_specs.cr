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
  class DestinationSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "account", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account : String? = nil
    MAX_LENGTH_FOR_ACCOUNT = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account : String? = nil,
      # Optional properties
      @amount : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account\" is required and cannot be null") if @account.nil?

      unless (_account = @account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account", _account.to_s.size, MAX_LENGTH_FOR_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account.nil?
      unless (_account = @account).nil?
        return false if _account.to_s.size > MAX_LENGTH_FOR_ACCOUNT
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account Object to be assigned
    def account=(account : String?)
      if account.nil?
        raise ArgumentError.new("\"account\" is required and cannot be null")
      end
      _account = account.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("account", _account.to_s.size, MAX_LENGTH_FOR_ACCOUNT)
      @account = _account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account, @amount)
  end
end
