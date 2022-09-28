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
  class BankConnectionsResourceBalanceRefresh
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "last_attempted_at", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter last_attempted_at : Int64? = nil

    # The status of the last refresh attempt.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["failed", "pending", "succeeded"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @last_attempted_at : Int64? = nil,
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"last_attempted_at\" is required and cannot be null") if @last_attempted_at.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @last_attempted_at.nil?

      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_attempted_at Object to be assigned
    def last_attempted_at=(last_attempted_at : Int64?)
      if last_attempted_at.nil?
        raise ArgumentError.new("\"last_attempted_at\" is required and cannot be null")
      end
      _last_attempted_at = last_attempted_at.not_nil!
      @last_attempted_at = _last_attempted_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
      @status = _status
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@last_attempted_at, @status)
  end
end
