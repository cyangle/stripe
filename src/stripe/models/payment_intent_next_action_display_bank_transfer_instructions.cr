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
  class PaymentIntentNextActionDisplayBankTransferInstructions
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Type of bank transfer
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["jp_bank_transfer"])

    # Optional properties

    # The remaining amount that needs to be transferred to complete the payment.
    @[JSON::Field(key: "amount_remaining", type: Int64?, presence: true, ignore_serialize: amount_remaining.nil? && !amount_remaining_present?)]
    property amount_remaining : Int64?

    @[JSON::Field(ignore: true)]
    property? amount_remaining_present : Bool = false

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    property currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    # A list of financial addresses that can be used to fund the customer balance
    @[JSON::Field(key: "financial_addresses", type: Array(FundingInstructionsBankTransferFinancialAddress)?, presence: true, ignore_serialize: financial_addresses.nil? && !financial_addresses_present?)]
    property financial_addresses : Array(FundingInstructionsBankTransferFinancialAddress)?

    @[JSON::Field(ignore: true)]
    property? financial_addresses_present : Bool = false

    # A link to a hosted page that guides your customer through completing the transfer.
    @[JSON::Field(key: "hosted_instructions_url", type: String?, presence: true, ignore_serialize: hosted_instructions_url.nil? && !hosted_instructions_url_present?)]
    getter hosted_instructions_url : String?

    @[JSON::Field(ignore: true)]
    property? hosted_instructions_url_present : Bool = false

    # A string identifying this payment. Instruct your customer to include this code in the reference or memo field of their bank transfer.
    @[JSON::Field(key: "reference", type: String?, presence: true, ignore_serialize: reference.nil? && !reference_present?)]
    getter reference : String?

    @[JSON::Field(ignore: true)]
    property? reference_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @_type : String, 
      # Optional properties
      @amount_remaining : Int64? = nil, 
      @currency : String? = nil, 
      @financial_addresses : Array(FundingInstructionsBankTransferFinancialAddress)? = nil, 
      @hosted_instructions_url : String? = nil, 
      @reference : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      if !@hosted_instructions_url.nil? && @hosted_instructions_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"hosted_instructions_url\", the character length must be smaller than or equal to 5000.")
      end

      if !@reference.nil? && @reference.to_s.size > 5000
        invalid_properties.push("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false if !@hosted_instructions_url.nil? && @hosted_instructions_url.to_s.size > 5000
      return false if !@reference.nil? && @reference.to_s.size > 5000

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method with validation
    # @param [Object] hosted_instructions_url Value to be assigned
    def hosted_instructions_url=(hosted_instructions_url)
      if !hosted_instructions_url.nil? && hosted_instructions_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"hosted_instructions_url\", the character length must be smaller than or equal to 5000.")
      end

      @hosted_instructions_url = hosted_instructions_url
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if !reference.nil? && reference.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      @reference = reference
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
    def_equals_and_hash(@_type, @amount_remaining, @currency, @financial_addresses, @hosted_instructions_url, @reference)
  end
end
