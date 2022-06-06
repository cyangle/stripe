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
  class PaymentMethodAcssDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Name of the bank associated with the bank account.
    @[JSON::Field(key: "bank_name", type: String?, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String?

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    @[JSON::Field(key: "fingerprint", type: String?, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String?

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Institution number of the bank account.
    @[JSON::Field(key: "institution_number", type: String?, presence: true, ignore_serialize: institution_number.nil? && !institution_number_present?)]
    getter institution_number : String?

    @[JSON::Field(ignore: true)]
    property? institution_number_present : Bool = false

    # Last four digits of the bank account number.
    @[JSON::Field(key: "last4", type: String?, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String?

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # Transit number of the bank account.
    @[JSON::Field(key: "transit_number", type: String?, presence: true, ignore_serialize: transit_number.nil? && !transit_number_present?)]
    getter transit_number : String?

    @[JSON::Field(ignore: true)]
    property? transit_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_name : String? = nil,
      @fingerprint : String? = nil,
      @institution_number : String? = nil,
      @last4 : String? = nil,
      @transit_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@bank_name.nil? && @bank_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
        invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      if !@institution_number.nil? && @institution_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"institution_number\", the character length must be smaller than or equal to 5000.")
      end

      if !@last4.nil? && @last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      if !@transit_number.nil? && @transit_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"transit_number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@bank_name.nil? && @bank_name.to_s.size > 5000
      return false if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
      return false if !@institution_number.nil? && @institution_number.to_s.size > 5000
      return false if !@last4.nil? && @last4.to_s.size > 5000
      return false if !@transit_number.nil? && @transit_number.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_name Value to be assigned
    def bank_name=(bank_name : String?)
      if !bank_name.nil? && bank_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      @bank_name = bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] fingerprint Value to be assigned
    def fingerprint=(fingerprint : String?)
      if !fingerprint.nil? && fingerprint.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      @fingerprint = fingerprint
    end

    # Custom attribute writer method with validation
    # @param [Object] institution_number Value to be assigned
    def institution_number=(institution_number : String?)
      if !institution_number.nil? && institution_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"institution_number\", the character length must be smaller than or equal to 5000.")
      end

      @institution_number = institution_number
    end

    # Custom attribute writer method with validation
    # @param [Object] last4 Value to be assigned
    def last4=(last4 : String?)
      if !last4.nil? && last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = last4
    end

    # Custom attribute writer method with validation
    # @param [Object] transit_number Value to be assigned
    def transit_number=(transit_number : String?)
      if !transit_number.nil? && transit_number.to_s.size > 5000
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
    def_equals_and_hash(@bank_name, @bank_name_present, @fingerprint, @fingerprint_present, @institution_number, @institution_number_present, @last4, @last4_present, @transit_number, @transit_number_present)
  end
end
