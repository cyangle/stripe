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
  class DeclineChargeOnSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "avs_failure", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter avs_failure : Bool? = nil

    @[JSON::Field(key: "cvc_failure", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cvc_failure : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @avs_failure : Bool? = nil,
      @cvc_failure : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] avs_failure Object to be assigned
    def avs_failure=(avs_failure : Bool?)
      if avs_failure.nil?
        return @avs_failure = nil
      end
      _avs_failure = avs_failure.not_nil!
      @avs_failure = _avs_failure
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvc_failure Object to be assigned
    def cvc_failure=(cvc_failure : Bool?)
      if cvc_failure.nil?
        return @cvc_failure = nil
      end
      _cvc_failure = cvc_failure.not_nil!
      @cvc_failure = _cvc_failure
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@avs_failure, @cvc_failure)
  end
end
