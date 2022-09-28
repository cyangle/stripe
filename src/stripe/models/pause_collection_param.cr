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
  class PauseCollectionParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "behavior", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter behavior : String? = nil

    ENUM_VALIDATOR_FOR_BEHAVIOR = EnumValidator.new("behavior", "String", ["keep_as_draft", "mark_uncollectible", "void"])

    # Optional properties

    @[JSON::Field(key: "resumes_at", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter resumes_at : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @behavior : String? = nil,
      # Optional properties
      @resumes_at : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_BEHAVIOR.error_message) unless ENUM_VALIDATOR_FOR_BEHAVIOR.valid?(@behavior, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_BEHAVIOR.valid?(@behavior, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] behavior Object to be assigned
    def behavior=(behavior : String?)
      if behavior.nil?
        raise ArgumentError.new("\"behavior\" is required and cannot be null")
      end
      _behavior = behavior.not_nil!
      ENUM_VALIDATOR_FOR_BEHAVIOR.valid!(_behavior)
      @behavior = _behavior
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resumes_at Object to be assigned
    def resumes_at=(resumes_at : Int64?)
      if resumes_at.nil?
        return @resumes_at = nil
      end
      _resumes_at = resumes_at.not_nil!
      @resumes_at = _resumes_at
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@behavior, @resumes_at)
  end
end
