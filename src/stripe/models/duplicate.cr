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
  class Duplicate
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "additional_documentation", type: Stripe::BbposWisePoseSplashscreen?, default: nil, required: false, nullable: false, emit_null: false)]
    getter additional_documentation : Stripe::BbposWisePoseSplashscreen? = nil

    @[JSON::Field(key: "card_statement", type: Stripe::BbposWisePoseSplashscreen?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card_statement : Stripe::BbposWisePoseSplashscreen? = nil

    @[JSON::Field(key: "cash_receipt", type: Stripe::BbposWisePoseSplashscreen?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cash_receipt : Stripe::BbposWisePoseSplashscreen? = nil

    @[JSON::Field(key: "check_image", type: Stripe::BbposWisePoseSplashscreen?, default: nil, required: false, nullable: false, emit_null: false)]
    getter check_image : Stripe::BbposWisePoseSplashscreen? = nil

    @[JSON::Field(key: "explanation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter explanation : String? = nil
    MAX_LENGTH_FOR_EXPLANATION = 1500

    @[JSON::Field(key: "original_transaction", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter original_transaction : String? = nil
    MAX_LENGTH_FOR_ORIGINAL_TRANSACTION = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : Stripe::BbposWisePoseSplashscreen? = nil,
      @card_statement : Stripe::BbposWisePoseSplashscreen? = nil,
      @cash_receipt : Stripe::BbposWisePoseSplashscreen? = nil,
      @check_image : Stripe::BbposWisePoseSplashscreen? = nil,
      @explanation : String? = nil,
      @original_transaction : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_additional_documentation = @additional_documentation).nil?
        invalid_properties.concat(_additional_documentation.list_invalid_properties_for("additional_documentation")) if _additional_documentation.is_a?(OpenApi::Validatable)
      end
      unless (_card_statement = @card_statement).nil?
        invalid_properties.concat(_card_statement.list_invalid_properties_for("card_statement")) if _card_statement.is_a?(OpenApi::Validatable)
      end
      unless (_cash_receipt = @cash_receipt).nil?
        invalid_properties.concat(_cash_receipt.list_invalid_properties_for("cash_receipt")) if _cash_receipt.is_a?(OpenApi::Validatable)
      end
      unless (_check_image = @check_image).nil?
        invalid_properties.concat(_check_image.list_invalid_properties_for("check_image")) if _check_image.is_a?(OpenApi::Validatable)
      end
      unless (_explanation = @explanation).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("explanation", _explanation.to_s.size, MAX_LENGTH_FOR_EXPLANATION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_original_transaction = @original_transaction).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("original_transaction", _original_transaction.to_s.size, MAX_LENGTH_FOR_ORIGINAL_TRANSACTION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_additional_documentation = @additional_documentation).nil?
        return false if _additional_documentation.is_a?(OpenApi::Validatable) && !_additional_documentation.valid?
      end

      unless (_card_statement = @card_statement).nil?
        return false if _card_statement.is_a?(OpenApi::Validatable) && !_card_statement.valid?
      end

      unless (_cash_receipt = @cash_receipt).nil?
        return false if _cash_receipt.is_a?(OpenApi::Validatable) && !_cash_receipt.valid?
      end

      unless (_check_image = @check_image).nil?
        return false if _check_image.is_a?(OpenApi::Validatable) && !_check_image.valid?
      end

      unless (_explanation = @explanation).nil?
        return false if _explanation.to_s.size > MAX_LENGTH_FOR_EXPLANATION
      end

      unless (_original_transaction = @original_transaction).nil?
        return false if _original_transaction.to_s.size > MAX_LENGTH_FOR_ORIGINAL_TRANSACTION
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] additional_documentation Object to be assigned
    def additional_documentation=(new_value : Stripe::BbposWisePoseSplashscreen?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @additional_documentation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_statement Object to be assigned
    def card_statement=(new_value : Stripe::BbposWisePoseSplashscreen?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @card_statement = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cash_receipt Object to be assigned
    def cash_receipt=(new_value : Stripe::BbposWisePoseSplashscreen?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @cash_receipt = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] check_image Object to be assigned
    def check_image=(new_value : Stripe::BbposWisePoseSplashscreen?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @check_image = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] explanation Object to be assigned
    def explanation=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("explanation", new_value.to_s.size, MAX_LENGTH_FOR_EXPLANATION)
      end

      @explanation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] original_transaction Object to be assigned
    def original_transaction=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("original_transaction", new_value.to_s.size, MAX_LENGTH_FOR_ORIGINAL_TRANSACTION)
      end

      @original_transaction = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_documentation, @card_statement, @cash_receipt, @check_image, @explanation, @original_transaction)
  end
end
