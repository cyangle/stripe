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
  class PaymentMethodDetailsInteracPresentReceipt
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The type of account being debited or credited
    @[JSON::Field(key: "account_type", type: String?, presence: true, ignore_serialize: account_type.nil? && !account_type_present?)]
    getter account_type : String?

    @[JSON::Field(ignore: true)]
    property? account_type_present : Bool = false

    ENUM_VALIDATOR_FOR_ACCOUNT_TYPE = EnumValidator.new("account_type", "String", ["checking", "savings", "unknown"])

    # EMV tag 9F26, cryptogram generated by the integrated circuit chip.
    @[JSON::Field(key: "application_cryptogram", type: String?, presence: true, ignore_serialize: application_cryptogram.nil? && !application_cryptogram_present?)]
    getter application_cryptogram : String?

    @[JSON::Field(ignore: true)]
    property? application_cryptogram_present : Bool = false

    # Mnenomic of the Application Identifier.
    @[JSON::Field(key: "application_preferred_name", type: String?, presence: true, ignore_serialize: application_preferred_name.nil? && !application_preferred_name_present?)]
    getter application_preferred_name : String?

    @[JSON::Field(ignore: true)]
    property? application_preferred_name_present : Bool = false

    # Identifier for this transaction.
    @[JSON::Field(key: "authorization_code", type: String?, presence: true, ignore_serialize: authorization_code.nil? && !authorization_code_present?)]
    getter authorization_code : String?

    @[JSON::Field(ignore: true)]
    property? authorization_code_present : Bool = false

    # EMV tag 8A. A code returned by the card issuer.
    @[JSON::Field(key: "authorization_response_code", type: String?, presence: true, ignore_serialize: authorization_response_code.nil? && !authorization_response_code_present?)]
    getter authorization_response_code : String?

    @[JSON::Field(ignore: true)]
    property? authorization_response_code_present : Bool = false

    # How the cardholder verified ownership of the card.
    @[JSON::Field(key: "cardholder_verification_method", type: String?, presence: true, ignore_serialize: cardholder_verification_method.nil? && !cardholder_verification_method_present?)]
    getter cardholder_verification_method : String?

    @[JSON::Field(ignore: true)]
    property? cardholder_verification_method_present : Bool = false

    # EMV tag 84. Similar to the application identifier stored on the integrated circuit chip.
    @[JSON::Field(key: "dedicated_file_name", type: String?, presence: true, ignore_serialize: dedicated_file_name.nil? && !dedicated_file_name_present?)]
    getter dedicated_file_name : String?

    @[JSON::Field(ignore: true)]
    property? dedicated_file_name_present : Bool = false

    # The outcome of a series of EMV functions performed by the card reader.
    @[JSON::Field(key: "terminal_verification_results", type: String?, presence: true, ignore_serialize: terminal_verification_results.nil? && !terminal_verification_results_present?)]
    getter terminal_verification_results : String?

    @[JSON::Field(ignore: true)]
    property? terminal_verification_results_present : Bool = false

    # An indication of various EMV functions performed during the transaction.
    @[JSON::Field(key: "transaction_status_information", type: String?, presence: true, ignore_serialize: transaction_status_information.nil? && !transaction_status_information_present?)]
    getter transaction_status_information : String?

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

      if !@application_cryptogram.nil? && @application_cryptogram.to_s.size > 5000
        invalid_properties.push("invalid value for \"application_cryptogram\", the character length must be smaller than or equal to 5000.")
      end

      if !@application_preferred_name.nil? && @application_preferred_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"application_preferred_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@authorization_code.nil? && @authorization_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"authorization_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@authorization_response_code.nil? && @authorization_response_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"authorization_response_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@cardholder_verification_method.nil? && @cardholder_verification_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"cardholder_verification_method\", the character length must be smaller than or equal to 5000.")
      end

      if !@dedicated_file_name.nil? && @dedicated_file_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"dedicated_file_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@terminal_verification_results.nil? && @terminal_verification_results.to_s.size > 5000
        invalid_properties.push("invalid value for \"terminal_verification_results\", the character length must be smaller than or equal to 5000.")
      end

      if !@transaction_status_information.nil? && @transaction_status_information.to_s.size > 5000
        invalid_properties.push("invalid value for \"transaction_status_information\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_ACCOUNT_TYPE.valid?(@account_type)
      return false if !@application_cryptogram.nil? && @application_cryptogram.to_s.size > 5000
      return false if !@application_preferred_name.nil? && @application_preferred_name.to_s.size > 5000
      return false if !@authorization_code.nil? && @authorization_code.to_s.size > 5000
      return false if !@authorization_response_code.nil? && @authorization_response_code.to_s.size > 5000
      return false if !@cardholder_verification_method.nil? && @cardholder_verification_method.to_s.size > 5000
      return false if !@dedicated_file_name.nil? && @dedicated_file_name.to_s.size > 5000
      return false if !@terminal_verification_results.nil? && @terminal_verification_results.to_s.size > 5000
      return false if !@transaction_status_information.nil? && @transaction_status_information.to_s.size > 5000

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_type Object to be assigned
    def account_type=(account_type : String?)
      ENUM_VALIDATOR_FOR_ACCOUNT_TYPE.valid!(account_type)
      @account_type = account_type
    end

    # Custom attribute writer method with validation
    # @param [Object] application_cryptogram Value to be assigned
    def application_cryptogram=(application_cryptogram : String?)
      if !application_cryptogram.nil? && application_cryptogram.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"application_cryptogram\", the character length must be smaller than or equal to 5000.")
      end

      @application_cryptogram = application_cryptogram
    end

    # Custom attribute writer method with validation
    # @param [Object] application_preferred_name Value to be assigned
    def application_preferred_name=(application_preferred_name : String?)
      if !application_preferred_name.nil? && application_preferred_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"application_preferred_name\", the character length must be smaller than or equal to 5000.")
      end

      @application_preferred_name = application_preferred_name
    end

    # Custom attribute writer method with validation
    # @param [Object] authorization_code Value to be assigned
    def authorization_code=(authorization_code : String?)
      if !authorization_code.nil? && authorization_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"authorization_code\", the character length must be smaller than or equal to 5000.")
      end

      @authorization_code = authorization_code
    end

    # Custom attribute writer method with validation
    # @param [Object] authorization_response_code Value to be assigned
    def authorization_response_code=(authorization_response_code : String?)
      if !authorization_response_code.nil? && authorization_response_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"authorization_response_code\", the character length must be smaller than or equal to 5000.")
      end

      @authorization_response_code = authorization_response_code
    end

    # Custom attribute writer method with validation
    # @param [Object] cardholder_verification_method Value to be assigned
    def cardholder_verification_method=(cardholder_verification_method : String?)
      if !cardholder_verification_method.nil? && cardholder_verification_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"cardholder_verification_method\", the character length must be smaller than or equal to 5000.")
      end

      @cardholder_verification_method = cardholder_verification_method
    end

    # Custom attribute writer method with validation
    # @param [Object] dedicated_file_name Value to be assigned
    def dedicated_file_name=(dedicated_file_name : String?)
      if !dedicated_file_name.nil? && dedicated_file_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"dedicated_file_name\", the character length must be smaller than or equal to 5000.")
      end

      @dedicated_file_name = dedicated_file_name
    end

    # Custom attribute writer method with validation
    # @param [Object] terminal_verification_results Value to be assigned
    def terminal_verification_results=(terminal_verification_results : String?)
      if !terminal_verification_results.nil? && terminal_verification_results.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"terminal_verification_results\", the character length must be smaller than or equal to 5000.")
      end

      @terminal_verification_results = terminal_verification_results
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_status_information Value to be assigned
    def transaction_status_information=(transaction_status_information : String?)
      if !transaction_status_information.nil? && transaction_status_information.to_s.size > 5000
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
    def_equals_and_hash(@account_type, @account_type_present, @application_cryptogram, @application_cryptogram_present, @application_preferred_name, @application_preferred_name_present, @authorization_code, @authorization_code_present, @authorization_response_code, @authorization_response_code_present, @cardholder_verification_method, @cardholder_verification_method_present, @dedicated_file_name, @dedicated_file_name_present, @terminal_verification_results, @terminal_verification_results_present, @transaction_status_information, @transaction_status_information_present)
  end
end
