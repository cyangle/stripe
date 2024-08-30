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
  class IssuingNetworkTokenMastercard
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The network-unique identifier for the token.
    @[JSON::Field(key: "token_reference_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter token_reference_id : String? = nil
    MAX_LENGTH_FOR_TOKEN_REFERENCE_ID = 5000

    # The ID of the entity requesting tokenization, specific to MasterCard.
    @[JSON::Field(key: "token_requestor_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter token_requestor_id : String? = nil
    MAX_LENGTH_FOR_TOKEN_REQUESTOR_ID = 5000

    # End of Required Properties

    # Optional Properties

    # A unique reference ID from MasterCard to represent the card account number.
    @[JSON::Field(key: "card_reference_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card_reference_id : String? = nil
    MAX_LENGTH_FOR_CARD_REFERENCE_ID = 5000

    # The name of the entity requesting tokenization, if known. This is directly provided from MasterCard.
    @[JSON::Field(key: "token_requestor_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter token_requestor_name : String? = nil
    MAX_LENGTH_FOR_TOKEN_REQUESTOR_NAME = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @token_reference_id : String? = nil,
      @token_requestor_id : String? = nil,
      # Optional properties
      @card_reference_id : String? = nil,
      @token_requestor_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"token_reference_id\" is required and cannot be null") if @token_reference_id.nil?

      unless (_token_reference_id = @token_reference_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("token_reference_id", _token_reference_id.to_s.size, MAX_LENGTH_FOR_TOKEN_REFERENCE_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"token_requestor_id\" is required and cannot be null") if @token_requestor_id.nil?

      unless (_token_requestor_id = @token_requestor_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("token_requestor_id", _token_requestor_id.to_s.size, MAX_LENGTH_FOR_TOKEN_REQUESTOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_card_reference_id = @card_reference_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("card_reference_id", _card_reference_id.to_s.size, MAX_LENGTH_FOR_CARD_REFERENCE_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_token_requestor_name = @token_requestor_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("token_requestor_name", _token_requestor_name.to_s.size, MAX_LENGTH_FOR_TOKEN_REQUESTOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @token_reference_id.nil?
      unless (_token_reference_id = @token_reference_id).nil?
        return false if _token_reference_id.to_s.size > MAX_LENGTH_FOR_TOKEN_REFERENCE_ID
      end

      return false if @token_requestor_id.nil?
      unless (_token_requestor_id = @token_requestor_id).nil?
        return false if _token_requestor_id.to_s.size > MAX_LENGTH_FOR_TOKEN_REQUESTOR_ID
      end

      unless (_card_reference_id = @card_reference_id).nil?
        return false if _card_reference_id.to_s.size > MAX_LENGTH_FOR_CARD_REFERENCE_ID
      end

      unless (_token_requestor_name = @token_requestor_name).nil?
        return false if _token_requestor_name.to_s.size > MAX_LENGTH_FOR_TOKEN_REQUESTOR_NAME
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] token_reference_id Object to be assigned
    def token_reference_id=(new_value : String?)
      raise ArgumentError.new("\"token_reference_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("token_reference_id", new_value.to_s.size, MAX_LENGTH_FOR_TOKEN_REFERENCE_ID)
      end

      @token_reference_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] token_requestor_id Object to be assigned
    def token_requestor_id=(new_value : String?)
      raise ArgumentError.new("\"token_requestor_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("token_requestor_id", new_value.to_s.size, MAX_LENGTH_FOR_TOKEN_REQUESTOR_ID)
      end

      @token_requestor_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_reference_id Object to be assigned
    def card_reference_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("card_reference_id", new_value.to_s.size, MAX_LENGTH_FOR_CARD_REFERENCE_ID)
      end

      @card_reference_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] token_requestor_name Object to be assigned
    def token_requestor_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("token_requestor_name", new_value.to_s.size, MAX_LENGTH_FOR_TOKEN_REQUESTOR_NAME)
      end

      @token_requestor_name = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@token_reference_id, @token_requestor_id, @card_reference_id, @token_requestor_name)
  end
end
