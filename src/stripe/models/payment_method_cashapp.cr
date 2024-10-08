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
  class PaymentMethodCashapp
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A unique and immutable identifier assigned by Cash App to every buyer.
    @[JSON::Field(key: "buyer_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter buyer_id : String? = nil
    MAX_LENGTH_FOR_BUYER_ID = 5000

    # A public identifier for buyers using Cash App.
    @[JSON::Field(key: "cashtag", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter cashtag : String? = nil
    MAX_LENGTH_FOR_CASHTAG = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @buyer_id : String? = nil,
      @cashtag : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_buyer_id = @buyer_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("buyer_id", _buyer_id.to_s.size, MAX_LENGTH_FOR_BUYER_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_cashtag = @cashtag).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cashtag", _cashtag.to_s.size, MAX_LENGTH_FOR_CASHTAG)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_buyer_id = @buyer_id).nil?
        return false if _buyer_id.to_s.size > MAX_LENGTH_FOR_BUYER_ID
      end

      unless (_cashtag = @cashtag).nil?
        return false if _cashtag.to_s.size > MAX_LENGTH_FOR_CASHTAG
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] buyer_id Object to be assigned
    def buyer_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("buyer_id", new_value.to_s.size, MAX_LENGTH_FOR_BUYER_ID)
      end

      @buyer_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cashtag Object to be assigned
    def cashtag=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("cashtag", new_value.to_s.size, MAX_LENGTH_FOR_CASHTAG)
      end

      @cashtag = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@buyer_id, @cashtag)
  end
end
