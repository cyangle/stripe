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
  class PaymentMethodDetailsCardPresentReceipt
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # The type of account being debited or credited
    @[JSON::Field(key: "account_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_type : String? = nil

    ENUM_VALIDATOR_FOR_ACCOUNT_TYPE = EnumValidator.new("account_type", "String", ["checking", "credit", "prepaid", "unknown"])

    # EMV tag 9F26, cryptogram generated by the integrated circuit chip.
    @[JSON::Field(key: "application_cryptogram", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: application_cryptogram.nil? && !application_cryptogram_present?)]
    getter application_cryptogram : String? = nil

    @[JSON::Field(ignore: true)]
    property? application_cryptogram_present : Bool = false

    # Mnenomic of the Application Identifier.
    @[JSON::Field(key: "application_preferred_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: application_preferred_name.nil? && !application_preferred_name_present?)]
    getter application_preferred_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? application_preferred_name_present : Bool = false

    # Identifier for this transaction.
    @[JSON::Field(key: "authorization_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: authorization_code.nil? && !authorization_code_present?)]
    getter authorization_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? authorization_code_present : Bool = false

    # EMV tag 8A. A code returned by the card issuer.
    @[JSON::Field(key: "authorization_response_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: authorization_response_code.nil? && !authorization_response_code_present?)]
    getter authorization_response_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? authorization_response_code_present : Bool = false

    # How the cardholder verified ownership of the card.
    @[JSON::Field(key: "cardholder_verification_method", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: cardholder_verification_method.nil? && !cardholder_verification_method_present?)]
    getter cardholder_verification_method : String? = nil

    @[JSON::Field(ignore: true)]
    property? cardholder_verification_method_present : Bool = false

    # EMV tag 84. Similar to the application identifier stored on the integrated circuit chip.
    @[JSON::Field(key: "dedicated_file_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: dedicated_file_name.nil? && !dedicated_file_name_present?)]
    getter dedicated_file_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? dedicated_file_name_present : Bool = false

    # The outcome of a series of EMV functions performed by the card reader.
    @[JSON::Field(key: "terminal_verification_results", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: terminal_verification_results.nil? && !terminal_verification_results_present?)]
    getter terminal_verification_results : String? = nil

    @[JSON::Field(ignore: true)]
    property? terminal_verification_results_present : Bool = false

    # An indication of various EMV functions performed during the transaction.
    @[JSON::Field(key: "transaction_status_information", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transaction_status_information.nil? && !transaction_status_information_present?)]
    getter transaction_status_information : String? = nil

    @[JSON::Field(ignore: true)]
    property? transaction_status_information_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_type : String? = nil,
      @application_cryptogram : String? = nil,
      @application_preferred_name : String? = nil,
      @authorization_code : String? = nil,
      @authorization_response_code : String? = nil,
      @cardholder_verification_method : String? = nil,
      @dedicated_file_name : String? = nil,
      @terminal_verification_results : String? = nil,
      @transaction_status_information : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_ACCOUNT_TYPE.error_message) unless ENUM_VALIDATOR_FOR_ACCOUNT_TYPE.valid?(@account_type)
      if _application_cryptogram = @application_cryptogram
        if _application_cryptogram.to_s.size > 5000
          invalid_properties.push("invalid value for \"application_cryptogram\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _application_preferred_name = @application_preferred_name
        if _application_preferred_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"application_preferred_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _authorization_code = @authorization_code
        if _authorization_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"authorization_code\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _authorization_response_code = @authorization_response_code
        if _authorization_response_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"authorization_response_code\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _cardholder_verification_method = @cardholder_verification_method
        if _cardholder_verification_method.to_s.size > 5000
          invalid_properties.push("invalid value for \"cardholder_verification_method\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _dedicated_file_name = @dedicated_file_name
        if _dedicated_file_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"dedicated_file_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _terminal_verification_results = @terminal_verification_results
        if _terminal_verification_results.to_s.size > 5000
          invalid_properties.push("invalid value for \"terminal_verification_results\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _transaction_status_information = @transaction_status_information
        if _transaction_status_information.to_s.size > 5000
          invalid_properties.push("invalid value for \"transaction_status_information\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_ACCOUNT_TYPE.valid?(@account_type)
      if _application_cryptogram = @application_cryptogram
        return false if _application_cryptogram.to_s.size > 5000
      end
      if _application_preferred_name = @application_preferred_name
        return false if _application_preferred_name.to_s.size > 5000
      end
      if _authorization_code = @authorization_code
        return false if _authorization_code.to_s.size > 5000
      end
      if _authorization_response_code = @authorization_response_code
        return false if _authorization_response_code.to_s.size > 5000
      end
      if _cardholder_verification_method = @cardholder_verification_method
        return false if _cardholder_verification_method.to_s.size > 5000
      end
      if _dedicated_file_name = @dedicated_file_name
        return false if _dedicated_file_name.to_s.size > 5000
      end
      if _terminal_verification_results = @terminal_verification_results
        return false if _terminal_verification_results.to_s.size > 5000
      end
      if _transaction_status_information = @transaction_status_information
        return false if _transaction_status_information.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_type Object to be assigned
    def account_type=(account_type : String?)
      if account_type.nil?
        return @account_type = nil
      end
      _account_type = account_type.not_nil!
      ENUM_VALIDATOR_FOR_ACCOUNT_TYPE.valid!(_account_type)
      @account_type = account_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_cryptogram Object to be assigned
    def application_cryptogram=(application_cryptogram : String?)
      if application_cryptogram.nil?
        return @application_cryptogram = nil
      end
      _application_cryptogram = application_cryptogram.not_nil!
      if _application_cryptogram.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"application_cryptogram\", the character length must be smaller than or equal to 5000.")
      end

      @application_cryptogram = application_cryptogram
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_preferred_name Object to be assigned
    def application_preferred_name=(application_preferred_name : String?)
      if application_preferred_name.nil?
        return @application_preferred_name = nil
      end
      _application_preferred_name = application_preferred_name.not_nil!
      if _application_preferred_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"application_preferred_name\", the character length must be smaller than or equal to 5000.")
      end

      @application_preferred_name = application_preferred_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorization_code Object to be assigned
    def authorization_code=(authorization_code : String?)
      if authorization_code.nil?
        return @authorization_code = nil
      end
      _authorization_code = authorization_code.not_nil!
      if _authorization_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"authorization_code\", the character length must be smaller than or equal to 5000.")
      end

      @authorization_code = authorization_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorization_response_code Object to be assigned
    def authorization_response_code=(authorization_response_code : String?)
      if authorization_response_code.nil?
        return @authorization_response_code = nil
      end
      _authorization_response_code = authorization_response_code.not_nil!
      if _authorization_response_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"authorization_response_code\", the character length must be smaller than or equal to 5000.")
      end

      @authorization_response_code = authorization_response_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cardholder_verification_method Object to be assigned
    def cardholder_verification_method=(cardholder_verification_method : String?)
      if cardholder_verification_method.nil?
        return @cardholder_verification_method = nil
      end
      _cardholder_verification_method = cardholder_verification_method.not_nil!
      if _cardholder_verification_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"cardholder_verification_method\", the character length must be smaller than or equal to 5000.")
      end

      @cardholder_verification_method = cardholder_verification_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dedicated_file_name Object to be assigned
    def dedicated_file_name=(dedicated_file_name : String?)
      if dedicated_file_name.nil?
        return @dedicated_file_name = nil
      end
      _dedicated_file_name = dedicated_file_name.not_nil!
      if _dedicated_file_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"dedicated_file_name\", the character length must be smaller than or equal to 5000.")
      end

      @dedicated_file_name = dedicated_file_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] terminal_verification_results Object to be assigned
    def terminal_verification_results=(terminal_verification_results : String?)
      if terminal_verification_results.nil?
        return @terminal_verification_results = nil
      end
      _terminal_verification_results = terminal_verification_results.not_nil!
      if _terminal_verification_results.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"terminal_verification_results\", the character length must be smaller than or equal to 5000.")
      end

      @terminal_verification_results = terminal_verification_results
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_status_information Object to be assigned
    def transaction_status_information=(transaction_status_information : String?)
      if transaction_status_information.nil?
        return @transaction_status_information = nil
      end
      _transaction_status_information = transaction_status_information.not_nil!
      if _transaction_status_information.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"transaction_status_information\", the character length must be smaller than or equal to 5000.")
      end

      @transaction_status_information = transaction_status_information
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
    def_equals_and_hash(@account_type, @application_cryptogram, @application_cryptogram_present, @application_preferred_name, @application_preferred_name_present, @authorization_code, @authorization_code_present, @authorization_response_code, @authorization_response_code_present, @cardholder_verification_method, @cardholder_verification_method_present, @dedicated_file_name, @dedicated_file_name_present, @terminal_verification_results, @terminal_verification_results_present, @transaction_status_information, @transaction_status_information_present)
  end
end
