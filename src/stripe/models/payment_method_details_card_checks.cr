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
  class PaymentMethodDetailsCardChecks
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # If a address line1 was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
    @[JSON::Field(key: "address_line1_check", type: String?, presence: true, ignore_serialize: address_line1_check.nil? && !address_line1_check_present?)]
    getter address_line1_check : String?

    @[JSON::Field(ignore: true)]
    property? address_line1_check_present : Bool = false

    # If a address postal code was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
    @[JSON::Field(key: "address_postal_code_check", type: String?, presence: true, ignore_serialize: address_postal_code_check.nil? && !address_postal_code_check_present?)]
    getter address_postal_code_check : String?

    @[JSON::Field(ignore: true)]
    property? address_postal_code_check_present : Bool = false

    # If a CVC was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
    @[JSON::Field(key: "cvc_check", type: String?, presence: true, ignore_serialize: cvc_check.nil? && !cvc_check_present?)]
    getter cvc_check : String?

    @[JSON::Field(ignore: true)]
    property? cvc_check_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address_line1_check : String? = nil,
      @address_postal_code_check : String? = nil,
      @cvc_check : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@address_line1_check.nil? && @address_line1_check.to_s.size > 5000
        invalid_properties.push("invalid value for \"address_line1_check\", the character length must be smaller than or equal to 5000.")
      end

      if !@address_postal_code_check.nil? && @address_postal_code_check.to_s.size > 5000
        invalid_properties.push("invalid value for \"address_postal_code_check\", the character length must be smaller than or equal to 5000.")
      end

      if !@cvc_check.nil? && @cvc_check.to_s.size > 5000
        invalid_properties.push("invalid value for \"cvc_check\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@address_line1_check.nil? && @address_line1_check.to_s.size > 5000
      return false if !@address_postal_code_check.nil? && @address_postal_code_check.to_s.size > 5000
      return false if !@cvc_check.nil? && @cvc_check.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line1_check Value to be assigned
    def address_line1_check=(address_line1_check)
      if !address_line1_check.nil? && address_line1_check.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"address_line1_check\", the character length must be smaller than or equal to 5000.")
      end

      @address_line1_check = address_line1_check
    end

    # Custom attribute writer method with validation
    # @param [Object] address_postal_code_check Value to be assigned
    def address_postal_code_check=(address_postal_code_check)
      if !address_postal_code_check.nil? && address_postal_code_check.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"address_postal_code_check\", the character length must be smaller than or equal to 5000.")
      end

      @address_postal_code_check = address_postal_code_check
    end

    # Custom attribute writer method with validation
    # @param [Object] cvc_check Value to be assigned
    def cvc_check=(cvc_check)
      if !cvc_check.nil? && cvc_check.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"cvc_check\", the character length must be smaller than or equal to 5000.")
      end

      @cvc_check = cvc_check
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
    def_equals_and_hash(@address_line1_check, @address_postal_code_check, @cvc_check)
  end
end
