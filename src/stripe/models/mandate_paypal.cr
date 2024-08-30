#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class MandatePaypal
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
    @[JSON::Field(key: "billing_agreement_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter billing_agreement_id : String? = nil
    MAX_LENGTH_FOR_BILLING_AGREEMENT_ID = 5000

    # PayPal account PayerID. This identifier uniquely identifies the PayPal customer.
    @[JSON::Field(key: "payer_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payer_id : String? = nil
    MAX_LENGTH_FOR_PAYER_ID = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @billing_agreement_id : String? = nil,
      @payer_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_billing_agreement_id = @billing_agreement_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("billing_agreement_id", _billing_agreement_id.to_s.size, MAX_LENGTH_FOR_BILLING_AGREEMENT_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_payer_id = @payer_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payer_id", _payer_id.to_s.size, MAX_LENGTH_FOR_PAYER_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_billing_agreement_id = @billing_agreement_id).nil?
        return false if _billing_agreement_id.to_s.size > MAX_LENGTH_FOR_BILLING_AGREEMENT_ID
      end

      unless (_payer_id = @payer_id).nil?
        return false if _payer_id.to_s.size > MAX_LENGTH_FOR_PAYER_ID
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_agreement_id Object to be assigned
    def billing_agreement_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("billing_agreement_id", new_value.to_s.size, MAX_LENGTH_FOR_BILLING_AGREEMENT_ID)
      end

      @billing_agreement_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payer_id Object to be assigned
    def payer_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("payer_id", new_value.to_s.size, MAX_LENGTH_FOR_PAYER_ID)
      end

      @payer_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@billing_agreement_id, @payer_id)
  end
end
