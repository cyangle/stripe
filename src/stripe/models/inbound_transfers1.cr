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
  class InboundTransfers1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "ach", type: Stripe::Access?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ach : Stripe::Access? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @ach : Stripe::Access? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _ach = @ach
        invalid_properties.concat(_ach.list_invalid_properties_for("ach")) if _ach.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _ach = @ach
        return false if _ach.is_a?(OpenApi::Validatable) && !_ach.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ach Object to be assigned
    def ach=(ach : Stripe::Access?)
      if ach.nil?
        return @ach = nil
      end
      _ach = ach.not_nil!
      _ach.validate if _ach.is_a?(OpenApi::Validatable)
      @ach = _ach
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@ach)
  end
end
