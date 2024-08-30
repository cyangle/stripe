#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./paypal_seller_protection"

module Stripe
  #
  class PaymentMethodDetailsPaypal
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Owner's email. Values are provided by PayPal directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "payer_email", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payer_email : String? = nil
    MAX_LENGTH_FOR_PAYER_EMAIL = 5000

    # PayPal account PayerID. This identifier uniquely identifies the PayPal customer.
    @[JSON::Field(key: "payer_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payer_id : String? = nil
    MAX_LENGTH_FOR_PAYER_ID = 5000

    # Owner's full name. Values provided by PayPal directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "payer_name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payer_name : String? = nil
    MAX_LENGTH_FOR_PAYER_NAME = 5000

    @[JSON::Field(key: "seller_protection", type: Stripe::PaypalSellerProtection?, default: nil, required: true, nullable: true, emit_null: true)]
    getter seller_protection : Stripe::PaypalSellerProtection? = nil

    # A unique ID generated by PayPal for this transaction.
    @[JSON::Field(key: "transaction_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter transaction_id : String? = nil
    MAX_LENGTH_FOR_TRANSACTION_ID = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @payer_email : String? = nil,
      @payer_id : String? = nil,
      @payer_name : String? = nil,
      @seller_protection : Stripe::PaypalSellerProtection? = nil,
      @transaction_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_payer_email = @payer_email).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payer_email", _payer_email.to_s.size, MAX_LENGTH_FOR_PAYER_EMAIL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_payer_id = @payer_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payer_id", _payer_id.to_s.size, MAX_LENGTH_FOR_PAYER_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_payer_name = @payer_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payer_name", _payer_name.to_s.size, MAX_LENGTH_FOR_PAYER_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_seller_protection = @seller_protection).nil?
        invalid_properties.concat(_seller_protection.list_invalid_properties_for("seller_protection")) if _seller_protection.is_a?(OpenApi::Validatable)
      end
      unless (_transaction_id = @transaction_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("transaction_id", _transaction_id.to_s.size, MAX_LENGTH_FOR_TRANSACTION_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_payer_email = @payer_email).nil?
        return false if _payer_email.to_s.size > MAX_LENGTH_FOR_PAYER_EMAIL
      end

      unless (_payer_id = @payer_id).nil?
        return false if _payer_id.to_s.size > MAX_LENGTH_FOR_PAYER_ID
      end

      unless (_payer_name = @payer_name).nil?
        return false if _payer_name.to_s.size > MAX_LENGTH_FOR_PAYER_NAME
      end

      unless (_seller_protection = @seller_protection).nil?
        return false if _seller_protection.is_a?(OpenApi::Validatable) && !_seller_protection.valid?
      end

      unless (_transaction_id = @transaction_id).nil?
        return false if _transaction_id.to_s.size > MAX_LENGTH_FOR_TRANSACTION_ID
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payer_email Object to be assigned
    def payer_email=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("payer_email", new_value.to_s.size, MAX_LENGTH_FOR_PAYER_EMAIL)
      end

      @payer_email = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payer_id Object to be assigned
    def payer_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("payer_id", new_value.to_s.size, MAX_LENGTH_FOR_PAYER_ID)
      end

      @payer_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payer_name Object to be assigned
    def payer_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("payer_name", new_value.to_s.size, MAX_LENGTH_FOR_PAYER_NAME)
      end

      @payer_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] seller_protection Object to be assigned
    def seller_protection=(new_value : Stripe::PaypalSellerProtection?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @seller_protection = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_id Object to be assigned
    def transaction_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("transaction_id", new_value.to_s.size, MAX_LENGTH_FOR_TRANSACTION_ID)
      end

      @transaction_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@payer_email, @payer_id, @payer_name, @seller_protection, @transaction_id)
  end
end