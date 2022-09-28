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
  class SetupIntentPaymentMethodOptionsParam2
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "persistent_token", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter persistent_token : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @persistent_token : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _persistent_token = @persistent_token
        if _persistent_token.to_s.size > 5000
          invalid_properties.push("invalid value for \"persistent_token\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _persistent_token = @persistent_token
        return false if _persistent_token.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] persistent_token Object to be assigned
    def persistent_token=(persistent_token : String?)
      if persistent_token.nil?
        return @persistent_token = nil
      end
      _persistent_token = persistent_token.not_nil!
      if _persistent_token.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"persistent_token\", the character length must be smaller than or equal to 5000.")
      end

      @persistent_token = _persistent_token
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@persistent_token)
  end
end
