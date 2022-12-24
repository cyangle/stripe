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
  #
  class AccountSepaDebitPaymentsSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # SEPA creditor identifier that identifies the company making the payment.
    @[JSON::Field(key: "creditor_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter creditor_id : String? = nil
    MAX_LENGTH_FOR_CREDITOR_ID = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @creditor_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_creditor_id = @creditor_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("creditor_id", _creditor_id.to_s.size, MAX_LENGTH_FOR_CREDITOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_creditor_id = @creditor_id).nil?
        return false if _creditor_id.to_s.size > MAX_LENGTH_FOR_CREDITOR_ID
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] creditor_id Object to be assigned
    def creditor_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("creditor_id", new_value.to_s.size, MAX_LENGTH_FOR_CREDITOR_ID)
      end

      @creditor_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@creditor_id)
  end
end
