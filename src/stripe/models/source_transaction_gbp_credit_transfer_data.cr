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
  class SourceTransactionGbpCreditTransferData
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Bank account fingerprint associated with the Stripe owned bank account receiving the transfer.
    @[JSON::Field(key: "fingerprint", type: String?, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String?

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # The credit transfer rails the sender used to push this transfer. The possible rails are: Faster Payments, BACS, CHAPS, and wire transfers. Currently only Faster Payments is supported.
    @[JSON::Field(key: "funding_method", type: String?, presence: true, ignore_serialize: funding_method.nil? && !funding_method_present?)]
    getter funding_method : String?

    @[JSON::Field(ignore: true)]
    property? funding_method_present : Bool = false

    # Last 4 digits of sender account number associated with the transfer.
    @[JSON::Field(key: "last4", type: String?, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String?

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # Sender entered arbitrary information about the transfer.
    @[JSON::Field(key: "reference", type: String?, presence: true, ignore_serialize: reference.nil? && !reference_present?)]
    getter reference : String?

    @[JSON::Field(ignore: true)]
    property? reference_present : Bool = false

    # Sender account number associated with the transfer.
    @[JSON::Field(key: "sender_account_number", type: String?, presence: true, ignore_serialize: sender_account_number.nil? && !sender_account_number_present?)]
    getter sender_account_number : String?

    @[JSON::Field(ignore: true)]
    property? sender_account_number_present : Bool = false

    # Sender name associated with the transfer.
    @[JSON::Field(key: "sender_name", type: String?, presence: true, ignore_serialize: sender_name.nil? && !sender_name_present?)]
    getter sender_name : String?

    @[JSON::Field(ignore: true)]
    property? sender_name_present : Bool = false

    # Sender sort code associated with the transfer.
    @[JSON::Field(key: "sender_sort_code", type: String?, presence: true, ignore_serialize: sender_sort_code.nil? && !sender_sort_code_present?)]
    getter sender_sort_code : String?

    @[JSON::Field(ignore: true)]
    property? sender_sort_code_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @fingerprint : String? = nil,
      @funding_method : String? = nil,
      @last4 : String? = nil,
      @reference : String? = nil,
      @sender_account_number : String? = nil,
      @sender_name : String? = nil,
      @sender_sort_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
        invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      if !@funding_method.nil? && @funding_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"funding_method\", the character length must be smaller than or equal to 5000.")
      end

      if !@last4.nil? && @last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      if !@reference.nil? && @reference.to_s.size > 5000
        invalid_properties.push("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      if !@sender_account_number.nil? && @sender_account_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"sender_account_number\", the character length must be smaller than or equal to 5000.")
      end

      if !@sender_name.nil? && @sender_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"sender_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@sender_sort_code.nil? && @sender_sort_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"sender_sort_code\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
      return false if !@funding_method.nil? && @funding_method.to_s.size > 5000
      return false if !@last4.nil? && @last4.to_s.size > 5000
      return false if !@reference.nil? && @reference.to_s.size > 5000
      return false if !@sender_account_number.nil? && @sender_account_number.to_s.size > 5000
      return false if !@sender_name.nil? && @sender_name.to_s.size > 5000
      return false if !@sender_sort_code.nil? && @sender_sort_code.to_s.size > 5000

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
    # @param [Object] funding_method Value to be assigned
    def funding_method=(funding_method)
      if !funding_method.nil? && funding_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"funding_method\", the character length must be smaller than or equal to 5000.")
      end

      @funding_method = funding_method
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
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if !reference.nil? && reference.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      @reference = reference
    end

    # Custom attribute writer method with validation
    # @param [Object] sender_account_number Value to be assigned
    def sender_account_number=(sender_account_number)
      if !sender_account_number.nil? && sender_account_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"sender_account_number\", the character length must be smaller than or equal to 5000.")
      end

      @sender_account_number = sender_account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] sender_name Value to be assigned
    def sender_name=(sender_name)
      if !sender_name.nil? && sender_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"sender_name\", the character length must be smaller than or equal to 5000.")
      end

      @sender_name = sender_name
    end

    # Custom attribute writer method with validation
    # @param [Object] sender_sort_code Value to be assigned
    def sender_sort_code=(sender_sort_code)
      if !sender_sort_code.nil? && sender_sort_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"sender_sort_code\", the character length must be smaller than or equal to 5000.")
      end

      @sender_sort_code = sender_sort_code
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
    def_equals_and_hash(@fingerprint, @funding_method, @last4, @reference, @sender_account_number, @sender_name, @sender_sort_code)
  end
end
