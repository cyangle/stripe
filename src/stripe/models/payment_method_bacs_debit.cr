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
  class PaymentMethodBacsDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    @[JSON::Field(key: "fingerprint", type: String?, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String?

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Last four digits of the bank account number.
    @[JSON::Field(key: "last4", type: String?, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String?

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # Sort code of the bank account. (e.g., `10-20-30`)
    @[JSON::Field(key: "sort_code", type: String?, presence: true, ignore_serialize: sort_code.nil? && !sort_code_present?)]
    getter sort_code : String?

    @[JSON::Field(ignore: true)]
    property? sort_code_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @fingerprint : String? = nil, 
      @last4 : String? = nil, 
      @sort_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
        invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      if !@last4.nil? && @last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      if !@sort_code.nil? && @sort_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"sort_code\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
      return false if !@last4.nil? && @last4.to_s.size > 5000
      return false if !@sort_code.nil? && @sort_code.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] fingerprint Value to be assigned
    def fingerprint=(fingerprint)
      if !fingerprint.nil? && fingerprint.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      @fingerprint = fingerprint
    end

    # Custom attribute writer method with validation
    # @param [Object] last4 Value to be assigned
    def last4=(last4)
      if !last4.nil? && last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = last4
    end

    # Custom attribute writer method with validation
    # @param [Object] sort_code Value to be assigned
    def sort_code=(sort_code)
      if !sort_code.nil? && sort_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"sort_code\", the character length must be smaller than or equal to 5000.")
      end

      @sort_code = sort_code
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
    def_equals_and_hash(@fingerprint, @last4, @sort_code)
  end
end
