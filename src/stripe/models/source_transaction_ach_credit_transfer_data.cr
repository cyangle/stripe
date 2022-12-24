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
  class SourceTransactionAchCreditTransferData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Customer data associated with the transfer.
    @[JSON::Field(key: "customer_data", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_data : String? = nil
    MAX_LENGTH_FOR_CUSTOMER_DATA = 5000

    # Bank account fingerprint associated with the transfer.
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fingerprint : String? = nil
    MAX_LENGTH_FOR_FINGERPRINT = 5000

    # Last 4 digits of the account number associated with the transfer.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    # Routing number associated with the transfer.
    @[JSON::Field(key: "routing_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter routing_number : String? = nil
    MAX_LENGTH_FOR_ROUTING_NUMBER = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @customer_data : String? = nil,
      @fingerprint : String? = nil,
      @last4 : String? = nil,
      @routing_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_customer_data = @customer_data).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer_data", _customer_data.to_s.size, MAX_LENGTH_FOR_CUSTOMER_DATA)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_fingerprint = @fingerprint).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_routing_number = @routing_number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("routing_number", _routing_number.to_s.size, MAX_LENGTH_FOR_ROUTING_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_customer_data = @customer_data).nil?
        return false if _customer_data.to_s.size > MAX_LENGTH_FOR_CUSTOMER_DATA
      end

      unless (_fingerprint = @fingerprint).nil?
        return false if _fingerprint.to_s.size > MAX_LENGTH_FOR_FINGERPRINT
      end

      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
      end

      unless (_routing_number = @routing_number).nil?
        return false if _routing_number.to_s.size > MAX_LENGTH_FOR_ROUTING_NUMBER
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_data Object to be assigned
    def customer_data=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("customer_data", new_value.to_s.size, MAX_LENGTH_FOR_CUSTOMER_DATA)
      end

      @customer_data = new_value
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
    # @param [Object] last4 Object to be assigned
    def last4=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last4", new_value.to_s.size, MAX_LENGTH_FOR_LAST4)
      end

      @last4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing_number Object to be assigned
    def routing_number=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("routing_number", new_value.to_s.size, MAX_LENGTH_FOR_ROUTING_NUMBER)
      end

      @routing_number = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@customer_data, @fingerprint, @last4, @routing_number)
  end
end
