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
  # Iban Records contain E.U. bank account details per the SEPA format.
  class FundingInstructionsBankTransferIbanRecord
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The name of the person or business that owns the bank account
    @[JSON::Field(key: "account_holder_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_holder_name : String? = nil
    MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME = 5000

    # The BIC/SWIFT code of the account.
    @[JSON::Field(key: "bic", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter bic : String? = nil
    MAX_LENGTH_FOR_BIC = 5000

    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # The IBAN of the account.
    @[JSON::Field(key: "iban", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter iban : String? = nil
    MAX_LENGTH_FOR_IBAN = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_holder_name : String? = nil,
      @bic : String? = nil,
      @country : String? = nil,
      @iban : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account_holder_name\" is required and cannot be null") if @account_holder_name.nil?

      if _account_holder_name = @account_holder_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account_holder_name", _account_holder_name.to_s.size, MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"bic\" is required and cannot be null") if @bic.nil?

      if _bic = @bic
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bic", _bic.to_s.size, MAX_LENGTH_FOR_BIC)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"country\" is required and cannot be null") if @country.nil?

      if _country = @country
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"iban\" is required and cannot be null") if @iban.nil?

      if _iban = @iban
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("iban", _iban.to_s.size, MAX_LENGTH_FOR_IBAN)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account_holder_name.nil?
      if _account_holder_name = @account_holder_name
        return false if _account_holder_name.to_s.size > MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME
      end

      return false if @bic.nil?
      if _bic = @bic
        return false if _bic.to_s.size > MAX_LENGTH_FOR_BIC
      end

      return false if @country.nil?
      if _country = @country
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      return false if @iban.nil?
      if _iban = @iban
        return false if _iban.to_s.size > MAX_LENGTH_FOR_IBAN
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_holder_name Object to be assigned
    def account_holder_name=(account_holder_name : String?)
      if account_holder_name.nil?
        raise ArgumentError.new("\"account_holder_name\" is required and cannot be null")
      end
      _account_holder_name = account_holder_name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("account_holder_name", _account_holder_name.to_s.size, MAX_LENGTH_FOR_ACCOUNT_HOLDER_NAME)
      @account_holder_name = _account_holder_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bic Object to be assigned
    def bic=(bic : String?)
      if bic.nil?
        raise ArgumentError.new("\"bic\" is required and cannot be null")
      end
      _bic = bic.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("bic", _bic.to_s.size, MAX_LENGTH_FOR_BIC)
      @bic = _bic
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        raise ArgumentError.new("\"country\" is required and cannot be null")
      end
      _country = country.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iban Object to be assigned
    def iban=(iban : String?)
      if iban.nil?
        raise ArgumentError.new("\"iban\" is required and cannot be null")
      end
      _iban = iban.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("iban", _iban.to_s.size, MAX_LENGTH_FOR_IBAN)
      @iban = _iban
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_holder_name, @bic, @country, @iban)
  end
end
