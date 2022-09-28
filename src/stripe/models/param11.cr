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
  # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
  class Param11
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "account_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_number : String? = nil

    @[JSON::Field(key: "sort_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sort_code : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_number : String? = nil,
      @sort_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _account_number = @account_number
        if _account_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _sort_code = @sort_code
        if _sort_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"sort_code\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _account_number = @account_number
        return false if _account_number.to_s.size > 5000
      end
      if _sort_code = @sort_code
        return false if _sort_code.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_number Object to be assigned
    def account_number=(account_number : String?)
      if account_number.nil?
        return @account_number = nil
      end
      _account_number = account_number.not_nil!
      if _account_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
      end

      @account_number = _account_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sort_code Object to be assigned
    def sort_code=(sort_code : String?)
      if sort_code.nil?
        return @sort_code = nil
      end
      _sort_code = sort_code.not_nil!
      if _sort_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"sort_code\", the character length must be smaller than or equal to 5000.")
      end

      @sort_code = _sort_code
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_number, @sort_code)
  end
end
