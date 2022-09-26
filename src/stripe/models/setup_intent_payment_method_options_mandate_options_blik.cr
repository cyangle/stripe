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
  class SetupIntentPaymentMethodOptionsMandateOptionsBlik
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # Date at which the mandate expires.
    @[JSON::Field(key: "expires_after", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: expires_after.nil? && !expires_after_present?)]
    getter expires_after : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? expires_after_present : Bool = false

    @[JSON::Field(key: "off_session", type: Stripe::MandateOptionsOffSessionDetailsBlik?, default: nil, required: false, nullable: false, emit_null: false)]
    getter off_session : Stripe::MandateOptionsOffSessionDetailsBlik? = nil

    # Type of the mandate.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String? = nil

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["off_session", "on_session"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @expires_after : Int64? = nil,
      @off_session : Stripe::MandateOptionsOffSessionDetailsBlik? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model off_session : Stripe::MandateOptionsOffSessionDetailsBlik?

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_after Object to be assigned
    def expires_after=(expires_after : Int64?)
      if expires_after.nil?
        return @expires_after = nil
      end
      @expires_after = expires_after
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] off_session Object to be assigned
    def off_session=(off_session : Stripe::MandateOptionsOffSessionDetailsBlik?)
      if off_session.nil?
        return @off_session = nil
      end
      @off_session = off_session
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        return @_type = nil
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = _type
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
    def_equals_and_hash(@expires_after, @expires_after_present, @off_session, @_type, @_type_present)
  end
end