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
  class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The funding method type used to fund the customer balance. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, or `mx_bank_transfer`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["eu_bank_transfer", "gb_bank_transfer", "jp_bank_transfer", "mx_bank_transfer"])

    # Optional properties

    @[JSON::Field(key: "eu_bank_transfer", type: Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eu_bank_transfer : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer? = nil

    # The user-supplied reference field on the bank transfer.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reference.nil? && !reference_present?)]
    getter reference : String? = nil

    @[JSON::Field(ignore: true)]
    property? reference_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @eu_bank_transfer : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer? = nil,
      @reference : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _eu_bank_transfer = @eu_bank_transfer
        if _eu_bank_transfer.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_eu_bank_transfer.list_invalid_properties_for("eu_bank_transfer"))
        end
      end
      if _reference = @reference
        if _reference.to_s.size > 5000
          invalid_properties.push("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _eu_bank_transfer = @eu_bank_transfer
        if _eu_bank_transfer.is_a?(OpenApi::Validatable)
          return false unless _eu_bank_transfer.valid?
        end
      end
      if _reference = @reference
        return false if _reference.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eu_bank_transfer Object to be assigned
    def eu_bank_transfer=(eu_bank_transfer : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer?)
      if eu_bank_transfer.nil?
        return @eu_bank_transfer = nil
      end
      _eu_bank_transfer = eu_bank_transfer.not_nil!
      if _eu_bank_transfer.is_a?(OpenApi::Validatable)
        _eu_bank_transfer.validate
      end
      @eu_bank_transfer = _eu_bank_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(reference : String?)
      if reference.nil?
        return @reference = nil
      end
      _reference = reference.not_nil!
      if _reference.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      @reference = _reference
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @eu_bank_transfer, @reference, @reference_present)
  end
end
