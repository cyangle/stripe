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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class CustomerTaxLocation
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The customer's country as identified by Stripe Tax.
    @[JSON::Field(key: "country", type: String)]
    getter country : String

    # The data source used to infer the customer's location.
    @[JSON::Field(key: "source", type: String)]
    getter source : String

    ENUM_VALIDATOR_FOR_SOURCE = EnumValidator.new("source", "String", ["billing_address", "ip_address", "payment_method", "shipping_destination"])

    # Optional properties

    # The customer's state, county, province, or region as identified by Stripe Tax.
    @[JSON::Field(key: "state", type: String?, presence: true, ignore_serialize: state.nil? && !state_present?)]
    getter state : String?

    @[JSON::Field(ignore: true)]
    property? state_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @country : String,
      @source : String,
      # Optional properties
      @state : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @country.to_s.size > 5000
        invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SOURCE.error_message) unless ENUM_VALIDATOR_FOR_SOURCE.valid?(@source, false)

      if !@state.nil? && @state.to_s.size > 5000
        invalid_properties.push("invalid value for \"state\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @country.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_SOURCE.valid?(@source, false)
      return false if !@state.nil? && @state.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country : String)
      if country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      @country = country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source : String)
      ENUM_VALIDATOR_FOR_SOURCE.valid!(source, false)
      @source = source
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state : String?)
      if !state.nil? && state.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"state\", the character length must be smaller than or equal to 5000.")
      end

      @state = state
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
    def_equals_and_hash(@country, @source, @state, @state_present)
  end
end
