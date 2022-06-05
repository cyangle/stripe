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
  # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Param10
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "account_number", type: String)]
    getter account_number : String

    @[JSON::Field(key: "bsb_number", type: String)]
    getter bsb_number : String

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_number : String,
      @bsb_number : String
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @account_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
      end

      if @bsb_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"bsb_number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_number.to_s.size > 5000
      return false if @bsb_number.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if account_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] bsb_number Value to be assigned
    def bsb_number=(bsb_number)
      if bsb_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bsb_number\", the character length must be smaller than or equal to 5000.")
      end

      @bsb_number = bsb_number
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
    def_equals_and_hash(@account_number, @bsb_number)
  end
end
