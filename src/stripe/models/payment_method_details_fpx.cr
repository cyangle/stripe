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
  class PaymentMethodDetailsFpx
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The customer's bank. Can be one of `affin_bank`, `agrobank`, `alliance_bank`, `ambank`, `bank_islam`, `bank_muamalat`, `bank_rakyat`, `bsn`, `cimb`, `hong_leong_bank`, `hsbc`, `kfh`, `maybank2u`, `ocbc`, `public_bank`, `rhb`, `standard_chartered`, `uob`, `deutsche_bank`, `maybank2e`, or `pb_enterprise`.
    @[JSON::Field(key: "bank", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter bank : String? = nil
    ERROR_MESSAGE_FOR_BANK = "invalid value for \"bank\", must be one of [affin_bank, agrobank, alliance_bank, ambank, bank_islam, bank_muamalat, bank_rakyat, bsn, cimb, deutsche_bank, hong_leong_bank, hsbc, kfh, maybank2e, maybank2u, ocbc, pb_enterprise, public_bank, rhb, standard_chartered, uob]."
    VALID_VALUES_FOR_BANK  = StaticArray["affin_bank", "agrobank", "alliance_bank", "ambank", "bank_islam", "bank_muamalat", "bank_rakyat", "bsn", "cimb", "deutsche_bank", "hong_leong_bank", "hsbc", "kfh", "maybank2e", "maybank2u", "ocbc", "pb_enterprise", "public_bank", "rhb", "standard_chartered", "uob"]

    # Optional properties

    # Unique transaction id generated by FPX for every request from the merchant
    @[JSON::Field(key: "transaction_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transaction_id.nil? && !transaction_id_present?)]
    getter transaction_id : String? = nil
    MAX_LENGTH_FOR_TRANSACTION_ID = 5000

    @[JSON::Field(ignore: true)]
    property? transaction_id_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @bank : String? = nil,
      # Optional properties
      @transaction_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"bank\" is required and cannot be null") if @bank.nil?

      if _bank = @bank
        invalid_properties.push(ERROR_MESSAGE_FOR_BANK) unless OpenApi::EnumValidator.valid?(_bank, VALID_VALUES_FOR_BANK)
      end
      if _transaction_id = @transaction_id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("transaction_id", _transaction_id.to_s.size, MAX_LENGTH_FOR_TRANSACTION_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @bank.nil?
      if _bank = @bank
        return false unless OpenApi::EnumValidator.valid?(_bank, VALID_VALUES_FOR_BANK)
      end

      if _transaction_id = @transaction_id
        return false if _transaction_id.to_s.size > MAX_LENGTH_FOR_TRANSACTION_ID
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank Object to be assigned
    def bank=(bank : String?)
      if bank.nil?
        raise ArgumentError.new("\"bank\" is required and cannot be null")
      end
      _bank = bank.not_nil!
      OpenApi::EnumValidator.validate("bank", _bank, VALID_VALUES_FOR_BANK)
      @bank = _bank
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_id Object to be assigned
    def transaction_id=(transaction_id : String?)
      if transaction_id.nil?
        return @transaction_id = nil
      end
      _transaction_id = transaction_id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("transaction_id", _transaction_id.to_s.size, MAX_LENGTH_FOR_TRANSACTION_ID)
      @transaction_id = _transaction_id
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank, @transaction_id, @transaction_id_present)
  end
end
