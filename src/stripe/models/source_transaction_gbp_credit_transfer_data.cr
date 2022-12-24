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
  class SourceTransactionGbpCreditTransferData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Bank account fingerprint associated with the Stripe owned bank account receiving the transfer.
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fingerprint : String? = nil
    MAX_LENGTH_FOR_FINGERPRINT = 5000

    # The credit transfer rails the sender used to push this transfer. The possible rails are: Faster Payments, BACS, CHAPS, and wire transfers. Currently only Faster Payments is supported.
    @[JSON::Field(key: "funding_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter funding_method : String? = nil
    MAX_LENGTH_FOR_FUNDING_METHOD = 5000

    # Last 4 digits of sender account number associated with the transfer.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    # Sender entered arbitrary information about the transfer.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reference : String? = nil
    MAX_LENGTH_FOR_REFERENCE = 5000

    # Sender account number associated with the transfer.
    @[JSON::Field(key: "sender_account_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sender_account_number : String? = nil
    MAX_LENGTH_FOR_SENDER_ACCOUNT_NUMBER = 5000

    # Sender name associated with the transfer.
    @[JSON::Field(key: "sender_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sender_name : String? = nil
    MAX_LENGTH_FOR_SENDER_NAME = 5000

    # Sender sort code associated with the transfer.
    @[JSON::Field(key: "sender_sort_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sender_sort_code : String? = nil
    MAX_LENGTH_FOR_SENDER_SORT_CODE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @fingerprint : String? = nil,
      @funding_method : String? = nil,
      @last4 : String? = nil,
      @reference : String? = nil,
      @sender_account_number : String? = nil,
      @sender_name : String? = nil,
      @sender_sort_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_fingerprint = @fingerprint).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_funding_method = @funding_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("funding_method", _funding_method.to_s.size, MAX_LENGTH_FOR_FUNDING_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_reference = @reference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference", _reference.to_s.size, MAX_LENGTH_FOR_REFERENCE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_sender_account_number = @sender_account_number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sender_account_number", _sender_account_number.to_s.size, MAX_LENGTH_FOR_SENDER_ACCOUNT_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_sender_name = @sender_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sender_name", _sender_name.to_s.size, MAX_LENGTH_FOR_SENDER_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_sender_sort_code = @sender_sort_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sender_sort_code", _sender_sort_code.to_s.size, MAX_LENGTH_FOR_SENDER_SORT_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_fingerprint = @fingerprint).nil?
        return false if _fingerprint.to_s.size > MAX_LENGTH_FOR_FINGERPRINT
      end

      unless (_funding_method = @funding_method).nil?
        return false if _funding_method.to_s.size > MAX_LENGTH_FOR_FUNDING_METHOD
      end

      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
      end

      unless (_reference = @reference).nil?
        return false if _reference.to_s.size > MAX_LENGTH_FOR_REFERENCE
      end

      unless (_sender_account_number = @sender_account_number).nil?
        return false if _sender_account_number.to_s.size > MAX_LENGTH_FOR_SENDER_ACCOUNT_NUMBER
      end

      unless (_sender_name = @sender_name).nil?
        return false if _sender_name.to_s.size > MAX_LENGTH_FOR_SENDER_NAME
      end

      unless (_sender_sort_code = @sender_sort_code).nil?
        return false if _sender_sort_code.to_s.size > MAX_LENGTH_FOR_SENDER_SORT_CODE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("fingerprint", new_value.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
      end

      @fingerprint = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_method Object to be assigned
    def funding_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("funding_method", new_value.to_s.size, MAX_LENGTH_FOR_FUNDING_METHOD)
      end

      @funding_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last4", new_value.to_s.size, MAX_LENGTH_FOR_LAST4)
      end

      @last4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("reference", new_value.to_s.size, MAX_LENGTH_FOR_REFERENCE)
      end

      @reference = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sender_account_number Object to be assigned
    def sender_account_number=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sender_account_number", new_value.to_s.size, MAX_LENGTH_FOR_SENDER_ACCOUNT_NUMBER)
      end

      @sender_account_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sender_name Object to be assigned
    def sender_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sender_name", new_value.to_s.size, MAX_LENGTH_FOR_SENDER_NAME)
      end

      @sender_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sender_sort_code Object to be assigned
    def sender_sort_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sender_sort_code", new_value.to_s.size, MAX_LENGTH_FOR_SENDER_SORT_CODE)
      end

      @sender_sort_code = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@fingerprint, @funding_method, @last4, @reference, @sender_account_number, @sender_name, @sender_sort_code)
  end
end
