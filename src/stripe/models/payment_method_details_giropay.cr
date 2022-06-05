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
  class PaymentMethodDetailsGiropay
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Bank code of bank associated with the bank account.
    @[JSON::Field(key: "bank_code", type: String?, presence: true, ignore_serialize: bank_code.nil? && !bank_code_present?)]
    getter bank_code : String?

    @[JSON::Field(ignore: true)]
    property? bank_code_present : Bool = false

    # Name of the bank associated with the bank account.
    @[JSON::Field(key: "bank_name", type: String?, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String?

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    # Bank Identifier Code of the bank associated with the bank account.
    @[JSON::Field(key: "bic", type: String?, presence: true, ignore_serialize: bic.nil? && !bic_present?)]
    getter bic : String?

    @[JSON::Field(ignore: true)]
    property? bic_present : Bool = false

    # Owner's verified full name. Values are verified or provided by Giropay directly (if supported) at the time of authorization or settlement. They cannot be set or mutated. Giropay rarely provides this information so the attribute is usually empty.
    @[JSON::Field(key: "verified_name", type: String?, presence: true, ignore_serialize: verified_name.nil? && !verified_name_present?)]
    getter verified_name : String?

    @[JSON::Field(ignore: true)]
    property? verified_name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_code : String? = nil,
      @bank_name : String? = nil,
      @bic : String? = nil,
      @verified_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@bank_code.nil? && @bank_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"bank_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@bank_name.nil? && @bank_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@bic.nil? && @bic.to_s.size > 5000
        invalid_properties.push("invalid value for \"bic\", the character length must be smaller than or equal to 5000.")
      end

      if !@verified_name.nil? && @verified_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"verified_name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@bank_code.nil? && @bank_code.to_s.size > 5000
      return false if !@bank_name.nil? && @bank_name.to_s.size > 5000
      return false if !@bic.nil? && @bic.to_s.size > 5000
      return false if !@verified_name.nil? && @verified_name.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_code Value to be assigned
    def bank_code=(bank_code)
      if !bank_code.nil? && bank_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_code\", the character length must be smaller than or equal to 5000.")
      end

      @bank_code = bank_code
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_name Value to be assigned
    def bank_name=(bank_name)
      if !bank_name.nil? && bank_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      @bank_name = bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] bic Value to be assigned
    def bic=(bic)
      if !bic.nil? && bic.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bic\", the character length must be smaller than or equal to 5000.")
      end

      @bic = bic
    end

    # Custom attribute writer method with validation
    # @param [Object] verified_name Value to be assigned
    def verified_name=(verified_name)
      if !verified_name.nil? && verified_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"verified_name\", the character length must be smaller than or equal to 5000.")
      end

      @verified_name = verified_name
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
    def_equals_and_hash(@bank_code, @bank_name, @bic, @verified_name)
  end
end
