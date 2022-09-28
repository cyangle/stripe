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
  class AccountholderParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account : String? = nil

    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account : String? = nil,
      @customer : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _account = @account
        if _account.to_s.size > 5000
          invalid_properties.push("invalid value for \"account\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _customer = @customer
        if _customer.to_s.size > 5000
          invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _account = @account
        return false if _account.to_s.size > 5000
      end
      if _customer = @customer
        return false if _customer.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account Object to be assigned
    def account=(account : String?)
      if account.nil?
        return @account = nil
      end
      _account = account.not_nil!
      if _account.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account\", the character length must be smaller than or equal to 5000.")
      end

      @account = _account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : String?)
      if customer.nil?
        return @customer = nil
      end
      _customer = customer.not_nil!
      if _customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = _customer
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account, @customer)
  end
end
