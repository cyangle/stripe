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
  class IssuingCardholderIndividual
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The first name of this cardholder.
    @[JSON::Field(key: "first_name", type: String)]
    getter first_name : String

    # The last name of this cardholder.
    @[JSON::Field(key: "last_name", type: String)]
    getter last_name : String

    # Optional properties

    @[JSON::Field(key: "dob", type: IssuingCardholderIndividualDob1?, presence: true, ignore_serialize: dob.nil? && !dob_present?)]
    property dob : IssuingCardholderIndividualDob1?

    @[JSON::Field(ignore: true)]
    property? dob_present : Bool = false

    @[JSON::Field(key: "verification", type: IssuingCardholderIndividualVerification?, presence: true, ignore_serialize: verification.nil? && !verification_present?)]
    property verification : IssuingCardholderIndividualVerification?

    @[JSON::Field(ignore: true)]
    property? verification_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @first_name : String, 
      @last_name : String, 
      # Optional properties
      @dob : IssuingCardholderIndividualDob1? = nil, 
      @verification : IssuingCardholderIndividualVerification? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @first_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
      end

      if @last_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_name.to_s.size > 5000
      return false if @last_name.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if first_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"first_name\", the character length must be smaller than or equal to 5000.")
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if last_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last_name\", the character length must be smaller than or equal to 5000.")
      end

      @last_name = last_name
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
    def_equals_and_hash(@first_name, @last_name, @dob, @verification)
  end
end
