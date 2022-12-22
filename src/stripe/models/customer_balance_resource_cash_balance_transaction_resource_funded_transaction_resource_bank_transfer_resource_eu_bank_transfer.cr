#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The BIC of the bank of the sender of the funding.
    @[JSON::Field(key: "bic", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bic.nil? && !bic_present?)]
    getter bic : String? = nil
    MAX_LENGTH_FOR_BIC = 5000

    @[JSON::Field(ignore: true)]
    property? bic_present : Bool = false

    # The last 4 digits of the IBAN of the sender of the funding.
    @[JSON::Field(key: "iban_last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: iban_last4.nil? && !iban_last4_present?)]
    getter iban_last4 : String? = nil
    MAX_LENGTH_FOR_IBAN_LAST4 = 5000

    @[JSON::Field(ignore: true)]
    property? iban_last4_present : Bool = false

    # The full name of the sender, as supplied by the sending bank.
    @[JSON::Field(key: "sender_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sender_name.nil? && !sender_name_present?)]
    getter sender_name : String? = nil
    MAX_LENGTH_FOR_SENDER_NAME = 5000

    @[JSON::Field(ignore: true)]
    property? sender_name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bic : String? = nil,
      @iban_last4 : String? = nil,
      @sender_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_bic = @bic).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bic", _bic.to_s.size, MAX_LENGTH_FOR_BIC)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_iban_last4 = @iban_last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("iban_last4", _iban_last4.to_s.size, MAX_LENGTH_FOR_IBAN_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_sender_name = @sender_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sender_name", _sender_name.to_s.size, MAX_LENGTH_FOR_SENDER_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_bic = @bic).nil?
        return false if _bic.to_s.size > MAX_LENGTH_FOR_BIC
      end

      unless (_iban_last4 = @iban_last4).nil?
        return false if _iban_last4.to_s.size > MAX_LENGTH_FOR_IBAN_LAST4
      end

      unless (_sender_name = @sender_name).nil?
        return false if _sender_name.to_s.size > MAX_LENGTH_FOR_SENDER_NAME
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bic Object to be assigned
    def bic=(bic : String?)
      if bic.nil?
        return @bic = nil
      end
      _bic = bic.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("bic", _bic.to_s.size, MAX_LENGTH_FOR_BIC)
      @bic = _bic
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iban_last4 Object to be assigned
    def iban_last4=(iban_last4 : String?)
      if iban_last4.nil?
        return @iban_last4 = nil
      end
      _iban_last4 = iban_last4.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("iban_last4", _iban_last4.to_s.size, MAX_LENGTH_FOR_IBAN_LAST4)
      @iban_last4 = _iban_last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sender_name Object to be assigned
    def sender_name=(sender_name : String?)
      if sender_name.nil?
        return @sender_name = nil
      end
      _sender_name = sender_name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("sender_name", _sender_name.to_s.size, MAX_LENGTH_FOR_SENDER_NAME)
      @sender_name = _sender_name
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bic, @bic_present, @iban_last4, @iban_last4_present, @sender_name, @sender_name_present)
  end
end
