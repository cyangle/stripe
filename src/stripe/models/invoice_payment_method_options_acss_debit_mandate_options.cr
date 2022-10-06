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
  class InvoicePaymentMethodOptionsAcssDebitMandateOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Transaction type of the mandate.
    @[JSON::Field(key: "transaction_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transaction_type.nil? && !transaction_type_present?)]
    getter transaction_type : String? = nil
    ERROR_MESSAGE_FOR_TRANSACTION_TYPE = "invalid value for \"transaction_type\", must be one of [business, personal]."
    VALID_VALUES_FOR_TRANSACTION_TYPE  = String.static_array("business", "personal")

    @[JSON::Field(ignore: true)]
    property? transaction_type_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @transaction_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_transaction_type = @transaction_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TRANSACTION_TYPE) unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_transaction_type = @transaction_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_type Object to be assigned
    def transaction_type=(transaction_type : String?)
      if transaction_type.nil?
        return @transaction_type = nil
      end
      _transaction_type = transaction_type.not_nil!
      OpenApi::EnumValidator.validate("transaction_type", _transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      @transaction_type = _transaction_type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@transaction_type, @transaction_type_present)
  end
end
