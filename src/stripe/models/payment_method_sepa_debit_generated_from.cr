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
  # Information about the object that generated this PaymentMethod.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentMethodSepaDebitGeneratedFrom
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "charge", type: SepaDebitGeneratedFromCharge?, presence: true, ignore_serialize: charge.nil? && !charge_present?)]
    property charge : SepaDebitGeneratedFromCharge?

    @[JSON::Field(ignore: true)]
    property? charge_present : Bool = false

    @[JSON::Field(key: "setup_attempt", type: PaymentMethodCardGeneratedCardSetupAttempt?, presence: true, ignore_serialize: setup_attempt.nil? && !setup_attempt_present?)]
    property setup_attempt : PaymentMethodCardGeneratedCardSetupAttempt?

    @[JSON::Field(ignore: true)]
    property? setup_attempt_present : Bool = false

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::SepaDebitGeneratedFrom,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @charge : SepaDebitGeneratedFromCharge? = nil,
      @setup_attempt : PaymentMethodCardGeneratedCardSetupAttempt? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
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
    def_equals_and_hash(@charge, @setup_attempt)
  end
end