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
  class SourceMandateNotificationSepaDebitData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # SEPA creditor ID.
    @[JSON::Field(key: "creditor_identifier", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter creditor_identifier : String? = nil
    MAX_LENGTH_FOR_CREDITOR_IDENTIFIER = 5000

    # Last 4 digits of the account number associated with the debit.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    # Mandate reference associated with the debit.
    @[JSON::Field(key: "mandate_reference", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mandate_reference : String? = nil
    MAX_LENGTH_FOR_MANDATE_REFERENCE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @creditor_identifier : String? = nil,
      @last4 : String? = nil,
      @mandate_reference : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_creditor_identifier = @creditor_identifier).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("creditor_identifier", _creditor_identifier.to_s.size, MAX_LENGTH_FOR_CREDITOR_IDENTIFIER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_mandate_reference = @mandate_reference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("mandate_reference", _mandate_reference.to_s.size, MAX_LENGTH_FOR_MANDATE_REFERENCE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_creditor_identifier = @creditor_identifier).nil?
        return false if _creditor_identifier.to_s.size > MAX_LENGTH_FOR_CREDITOR_IDENTIFIER
      end

      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
      end

      unless (_mandate_reference = @mandate_reference).nil?
        return false if _mandate_reference.to_s.size > MAX_LENGTH_FOR_MANDATE_REFERENCE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] creditor_identifier Object to be assigned
    def creditor_identifier=(creditor_identifier : String?)
      if creditor_identifier.nil?
        return @creditor_identifier = nil
      end
      _creditor_identifier = creditor_identifier.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("creditor_identifier", _creditor_identifier.to_s.size, MAX_LENGTH_FOR_CREDITOR_IDENTIFIER)
      @creditor_identifier = _creditor_identifier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(last4 : String?)
      if last4.nil?
        return @last4 = nil
      end
      _last4 = last4.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
      @last4 = _last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate_reference Object to be assigned
    def mandate_reference=(mandate_reference : String?)
      if mandate_reference.nil?
        return @mandate_reference = nil
      end
      _mandate_reference = mandate_reference.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("mandate_reference", _mandate_reference.to_s.size, MAX_LENGTH_FOR_MANDATE_REFERENCE)
      @mandate_reference = _mandate_reference
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@creditor_identifier, @last4, @mandate_reference)
  end
end
