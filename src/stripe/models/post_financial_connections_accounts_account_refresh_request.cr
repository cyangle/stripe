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
  class PostFinancialConnectionsAccountsAccountRefreshRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # The list of account features that you would like to refresh.
    @[JSON::Field(key: "features", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter features : Array(String)? = nil

    ENUM_VALIDATOR_FOR_FEATURES = EnumValidator.new("features", "Array(String)", ["balance", "ownership"])

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @features : Array(String)? = nil,
      # Optional properties
      @expand : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_FEATURES.error_message) unless ENUM_VALIDATOR_FOR_FEATURES.all_valid?(@features, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_FEATURES.all_valid?(@features, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] features Object to be assigned
    def features=(features : Array(String)?)
      if features.nil?
        raise ArgumentError.new("\"features\" is required and cannot be null")
      end
      _features = features.not_nil!
      ENUM_VALIDATOR_FOR_FEATURES.all_valid!(_features)
      @features = features
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      @expand = expand
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
    def_equals_and_hash(@features, @expand)
  end
end
