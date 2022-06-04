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
  # Shipping information for this PaymentIntent.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class OptionalFieldsShipping1
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "address", type: OptionalFieldsAddress)]
    property address : OptionalFieldsAddress

    @[JSON::Field(key: "name", type: String)]
    getter name : String

    # Optional properties

    @[JSON::Field(key: "carrier", type: String?, presence: true, ignore_serialize: carrier.nil? && !carrier_present?)]
    getter carrier : String?

    @[JSON::Field(ignore: true)]
    property? carrier_present : Bool = false

    @[JSON::Field(key: "phone", type: String?, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String?

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    @[JSON::Field(key: "tracking_number", type: String?, presence: true, ignore_serialize: tracking_number.nil? && !tracking_number_present?)]
    getter tracking_number : String?

    @[JSON::Field(ignore: true)]
    property? tracking_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address : OptionalFieldsAddress,
      @name : String,
      # Optional properties
      @carrier : String? = nil,
      @phone : String? = nil,
      @tracking_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      if !@carrier.nil? && @carrier.to_s.size > 5000
        invalid_properties.push("invalid value for \"carrier\", the character length must be smaller than or equal to 5000.")
      end

      if !@phone.nil? && @phone.to_s.size > 5000
        invalid_properties.push("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      if !@tracking_number.nil? && @tracking_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"tracking_number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.to_s.size > 5000
      return false if !@carrier.nil? && @carrier.to_s.size > 5000
      return false if !@phone.nil? && @phone.to_s.size > 5000
      return false if !@tracking_number.nil? && @tracking_number.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] carrier Value to be assigned
    def carrier=(carrier)
      if !carrier.nil? && carrier.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"carrier\", the character length must be smaller than or equal to 5000.")
      end

      @carrier = carrier
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      if !phone.nil? && phone.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"phone\", the character length must be smaller than or equal to 5000.")
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] tracking_number Value to be assigned
    def tracking_number=(tracking_number)
      if !tracking_number.nil? && tracking_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"tracking_number\", the character length must be smaller than or equal to 5000.")
      end

      @tracking_number = tracking_number
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
    def_equals_and_hash(@address, @name, @carrier, @phone, @tracking_number)
  end
end