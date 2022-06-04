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
  class PaymentIntentNextActionKonbiniSeicomart
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The payment code.
    @[JSON::Field(key: "payment_code", type: String)]
    getter payment_code : String

    # Optional properties

    # The confirmation number.
    @[JSON::Field(key: "confirmation_number", type: String?, presence: true, ignore_serialize: confirmation_number.nil? && !confirmation_number_present?)]
    getter confirmation_number : String?

    @[JSON::Field(ignore: true)]
    property? confirmation_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @payment_code : String, 
      # Optional properties
      @confirmation_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @payment_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"payment_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@confirmation_number.nil? && @confirmation_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"confirmation_number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @payment_code.to_s.size > 5000
      return false if !@confirmation_number.nil? && @confirmation_number.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_code Value to be assigned
    def payment_code=(payment_code)
      if payment_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_code\", the character length must be smaller than or equal to 5000.")
      end

      @payment_code = payment_code
    end

    # Custom attribute writer method with validation
    # @param [Object] confirmation_number Value to be assigned
    def confirmation_number=(confirmation_number)
      if !confirmation_number.nil? && confirmation_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"confirmation_number\", the character length must be smaller than or equal to 5000.")
      end

      @confirmation_number = confirmation_number
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
    def_equals_and_hash(@payment_code, @confirmation_number)
  end
end
