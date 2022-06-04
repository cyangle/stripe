#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PauseCollectionParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "behavior", type: String)]
    getter behavior : String

    ENUM_VALIDATOR_FOR_BEHAVIOR = EnumValidator.new("behavior", "String", ["keep_as_draft", "mark_uncollectible", "void"])

    # Optional properties

    @[JSON::Field(key: "resumes_at", type: Int64?, presence: true, ignore_serialize: resumes_at.nil? && !resumes_at_present?)]
    property resumes_at : Int64?

    @[JSON::Field(ignore: true)]
    property? resumes_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @behavior : String, 
      # Optional properties
      @resumes_at : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_BEHAVIOR.error_message) unless ENUM_VALIDATOR_FOR_BEHAVIOR.valid?(@behavior, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_BEHAVIOR.valid?(@behavior, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] behavior Object to be assigned
    def behavior=(behavior)
      ENUM_VALIDATOR_FOR_BEHAVIOR.valid!(behavior, false)
      @behavior = behavior
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@behavior, @resumes_at)
  end
end
