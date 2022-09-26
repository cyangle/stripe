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
  class SourceCodeVerificationFlow
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # The number of attempts remaining to authenticate the source object with a verification code.
    @[JSON::Field(key: "attempts_remaining", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter attempts_remaining : Int64? = nil

    # The status of the code verification, either `pending` (awaiting verification, `attempts_remaining` should be greater than 0), `succeeded` (successful verification) or `failed` (failed verification, cannot be verified anymore as `attempts_remaining` should be 0).
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @attempts_remaining : Int64? = nil,
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"attempts_remaining\" is required and cannot be null") if @attempts_remaining.nil?
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?
      if _status = @status
        if _status.to_s.size > 5000
          invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @attempts_remaining.nil?
      return false if @status.nil?
      if _status = @status
        return false if _status.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] attempts_remaining Object to be assigned
    def attempts_remaining=(attempts_remaining : Int64?)
      if attempts_remaining.nil?
        raise ArgumentError.new("\"attempts_remaining\" is required and cannot be null")
      end
      @attempts_remaining = attempts_remaining
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      if _status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
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
    def_equals_and_hash(@attempts_remaining, @status)
  end
end
