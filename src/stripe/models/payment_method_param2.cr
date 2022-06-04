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
  # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentMethodParam2
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "account_number", type: String)]
    getter account_number : String

    @[JSON::Field(key: "institution_number", type: String)]
    getter institution_number : String

    @[JSON::Field(key: "transit_number", type: String)]
    getter transit_number : String

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_number : String,
      @institution_number : String,
      @transit_number : String
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @account_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_number\", the character length must be smaller than or equal to 5000.")
      end

      if @institution_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"institution_number\", the character length must be smaller than or equal to 5000.")
      end

      if @transit_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"transit_number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_number.to_s.size > 5000
      return false if @institution_number.to_s.size > 5000
      return false if @transit_number.to_s.size > 5000

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
    # @param [Object] institution_number Value to be assigned
    def institution_number=(institution_number)
      if institution_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"institution_number\", the character length must be smaller than or equal to 5000.")
      end

      @institution_number = institution_number
    end

    # Custom attribute writer method with validation
    # @param [Object] transit_number Value to be assigned
    def transit_number=(transit_number)
      if transit_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"transit_number\", the character length must be smaller than or equal to 5000.")
      end

      @transit_number = transit_number
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
    def_equals_and_hash(@account_number, @institution_number, @transit_number)
  end
end