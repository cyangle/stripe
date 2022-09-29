#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class CheckoutCustomerBalanceBankTransferPaymentMethodOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "eu_bank_transfer", type: Stripe::PaymentMethodOptionsCustomerBalanceEuBankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eu_bank_transfer : Stripe::PaymentMethodOptionsCustomerBalanceEuBankAccount? = nil

    # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.  Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
    @[JSON::Field(key: "requested_address_types", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter requested_address_types : Array(String)? = nil

    ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES = OpenApi::EnumValidator.new("requested_address_types", "Array(String)", ["iban", "sepa", "sort_code", "spei", "zengin"])

    # The bank transfer type that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, or `mx_bank_transfer`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String? = nil

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    ENUM_VALIDATOR_FOR__TYPE = OpenApi::EnumValidator.new("_type", "String", ["eu_bank_transfer", "gb_bank_transfer", "jp_bank_transfer", "mx_bank_transfer"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @eu_bank_transfer : Stripe::PaymentMethodOptionsCustomerBalanceEuBankAccount? = nil,
      @requested_address_types : Array(String)? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _eu_bank_transfer = @eu_bank_transfer
        invalid_properties.concat(_eu_bank_transfer.list_invalid_properties_for("eu_bank_transfer")) if _eu_bank_transfer.is_a?(OpenApi::Validatable)
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES.error_message) unless ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES.all_valid?(@requested_address_types)

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _eu_bank_transfer = @eu_bank_transfer
        return false if _eu_bank_transfer.is_a?(OpenApi::Validatable) && !_eu_bank_transfer.valid?
      end
      return false unless ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES.all_valid?(@requested_address_types)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eu_bank_transfer Object to be assigned
    def eu_bank_transfer=(eu_bank_transfer : Stripe::PaymentMethodOptionsCustomerBalanceEuBankAccount?)
      if eu_bank_transfer.nil?
        return @eu_bank_transfer = nil
      end
      _eu_bank_transfer = eu_bank_transfer.not_nil!
      _eu_bank_transfer.validate if _eu_bank_transfer.is_a?(OpenApi::Validatable)
      @eu_bank_transfer = _eu_bank_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requested_address_types Object to be assigned
    def requested_address_types=(requested_address_types : Array(String)?)
      if requested_address_types.nil?
        return @requested_address_types = nil
      end
      _requested_address_types = requested_address_types.not_nil!
      ENUM_VALIDATOR_FOR_REQUESTED_ADDRESS_TYPES.all_valid!(_requested_address_types)
      @requested_address_types = _requested_address_types
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        return @_type = nil
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = __type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@eu_bank_transfer, @requested_address_types, @_type, @_type_present)
  end
end
