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
  class PostTestHelpersTreasuryInboundTransfersIdFailRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "failure_details", type: Stripe::FailureDetailsParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter failure_details : Stripe::FailureDetailsParams? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @expand : Array(String)? = nil,
      @failure_details : Stripe::FailureDetailsParams? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_failure_details = @failure_details).nil?
        invalid_properties.concat(_failure_details.list_invalid_properties_for("failure_details")) if _failure_details.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_failure_details = @failure_details).nil?
        return false if _failure_details.is_a?(OpenApi::Validatable) && !_failure_details.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_details Object to be assigned
    def failure_details=(new_value : Stripe::FailureDetailsParams?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @failure_details = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@expand, @failure_details)
  end
end
