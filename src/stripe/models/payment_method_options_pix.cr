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
  #
  class PaymentMethodOptionsPix
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The number of seconds (between 10 and 1209600) after which Pix payment will expire.
    @[JSON::Field(key: "expires_after_seconds", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: expires_after_seconds.nil? && !expires_after_seconds_present?)]
    getter expires_after_seconds : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? expires_after_seconds_present : Bool = false

    # The timestamp at which the Pix expires.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: expires_at.nil? && !expires_at_present?)]
    getter expires_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? expires_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @expires_after_seconds : Int64? = nil,
      @expires_at : Int64? = nil
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
    # @param [Object] expires_after_seconds Object to be assigned
    def expires_after_seconds=(expires_after_seconds : Int64?)
      if expires_after_seconds.nil?
        return @expires_after_seconds = nil
      end
      _expires_after_seconds = expires_after_seconds.not_nil!
      @expires_after_seconds = _expires_after_seconds
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(expires_at : Int64?)
      if expires_at.nil?
        return @expires_at = nil
      end
      _expires_at = expires_at.not_nil!
      @expires_at = _expires_at
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@expires_after_seconds, @expires_after_seconds_present, @expires_at, @expires_at_present)
  end
end
