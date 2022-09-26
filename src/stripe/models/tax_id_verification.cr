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
  class TaxIdVerification
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Verification status, one of `pending`, `verified`, `unverified`, or `unavailable`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["pending", "unavailable", "unverified", "verified"])

    # Optional properties

    # Verified address.
    @[JSON::Field(key: "verified_address", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: verified_address.nil? && !verified_address_present?)]
    getter verified_address : String? = nil

    @[JSON::Field(ignore: true)]
    property? verified_address_present : Bool = false

    # Verified name.
    @[JSON::Field(key: "verified_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: verified_name.nil? && !verified_name_present?)]
    getter verified_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? verified_name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @status : String? = nil,
      # Optional properties
      @verified_address : String? = nil,
      @verified_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      if _verified_address = @verified_address
        if _verified_address.to_s.size > 5000
          invalid_properties.push("invalid value for \"verified_address\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _verified_name = @verified_name
        if _verified_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"verified_name\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      if _verified_address = @verified_address
        return false if _verified_address.to_s.size > 5000
      end
      if _verified_name = @verified_name
        return false if _verified_name.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verified_address Object to be assigned
    def verified_address=(verified_address : String?)
      if verified_address.nil?
        return @verified_address = nil
      end
      _verified_address = verified_address.not_nil!
      if _verified_address.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"verified_address\", the character length must be smaller than or equal to 5000.")
      end

      @verified_address = verified_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verified_name Object to be assigned
    def verified_name=(verified_name : String?)
      if verified_name.nil?
        return @verified_name = nil
      end
      _verified_name = verified_name.not_nil!
      if _verified_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"verified_name\", the character length must be smaller than or equal to 5000.")
      end

      @verified_name = verified_name
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
    def_equals_and_hash(@status, @verified_address, @verified_address_present, @verified_name, @verified_name_present)
  end
end
