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
  class BillingThresholdsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "amount_gte", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount_gte : Int64? = nil

    @[JSON::Field(key: "reset_billing_cycle_anchor", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reset_billing_cycle_anchor : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount_gte : Int64? = nil,
      @reset_billing_cycle_anchor : Bool? = nil
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
    # @param [Object] amount_gte Object to be assigned
    def amount_gte=(new_value : Int64?)
      @amount_gte = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reset_billing_cycle_anchor Object to be assigned
    def reset_billing_cycle_anchor=(new_value : Bool?)
      @reset_billing_cycle_anchor = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_gte, @reset_billing_cycle_anchor)
  end
end
