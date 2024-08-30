#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_intent_data_update_params_metadata"

module Stripe
  class PaymentIntentDataUpdateParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    ERROR_MESSAGE_FOR_DESCRIPTION = "invalid value for \"description\", must be one of []."
    VALID_VALUES_FOR_DESCRIPTION  = String.static_array("")

    @[JSON::Field(key: "metadata", type: Stripe::PaymentIntentDataUpdateParamsMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PaymentIntentDataUpdateParamsMetadata? = nil

    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil
    ERROR_MESSAGE_FOR_STATEMENT_DESCRIPTOR = "invalid value for \"statement_descriptor\", must be one of []."
    VALID_VALUES_FOR_STATEMENT_DESCRIPTOR  = String.static_array("")

    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_suffix : String? = nil
    ERROR_MESSAGE_FOR_STATEMENT_DESCRIPTOR_SUFFIX = "invalid value for \"statement_descriptor_suffix\", must be one of []."
    VALID_VALUES_FOR_STATEMENT_DESCRIPTOR_SUFFIX  = String.static_array("")

    @[JSON::Field(key: "transfer_group", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_group : String? = nil
    ERROR_MESSAGE_FOR_TRANSFER_GROUP = "invalid value for \"transfer_group\", must be one of []."
    VALID_VALUES_FOR_TRANSFER_GROUP  = String.static_array("")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @description : String? = nil,
      @metadata : Stripe::PaymentIntentDataUpdateParamsMetadata? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_description = @description).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_DESCRIPTION) unless OpenApi::EnumValidator.valid?(_description, VALID_VALUES_FOR_DESCRIPTION)
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_statement_descriptor = @statement_descriptor).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATEMENT_DESCRIPTOR) unless OpenApi::EnumValidator.valid?(_statement_descriptor, VALID_VALUES_FOR_STATEMENT_DESCRIPTOR)
      end
      unless (_statement_descriptor_suffix = @statement_descriptor_suffix).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATEMENT_DESCRIPTOR_SUFFIX) unless OpenApi::EnumValidator.valid?(_statement_descriptor_suffix, VALID_VALUES_FOR_STATEMENT_DESCRIPTOR_SUFFIX)
      end
      unless (_transfer_group = @transfer_group).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TRANSFER_GROUP) unless OpenApi::EnumValidator.valid?(_transfer_group, VALID_VALUES_FOR_TRANSFER_GROUP)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_description = @description).nil?
        return false unless OpenApi::EnumValidator.valid?(_description, VALID_VALUES_FOR_DESCRIPTION)
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        return false unless OpenApi::EnumValidator.valid?(_statement_descriptor, VALID_VALUES_FOR_STATEMENT_DESCRIPTOR)
      end

      unless (_statement_descriptor_suffix = @statement_descriptor_suffix).nil?
        return false unless OpenApi::EnumValidator.valid?(_statement_descriptor_suffix, VALID_VALUES_FOR_STATEMENT_DESCRIPTOR_SUFFIX)
      end

      unless (_transfer_group = @transfer_group).nil?
        return false unless OpenApi::EnumValidator.valid?(_transfer_group, VALID_VALUES_FOR_TRANSFER_GROUP)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("description", new_value, VALID_VALUES_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Stripe::PaymentIntentDataUpdateParamsMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("statement_descriptor", new_value, VALID_VALUES_FOR_STATEMENT_DESCRIPTOR)
      end

      @statement_descriptor = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_suffix Object to be assigned
    def statement_descriptor_suffix=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("statement_descriptor_suffix", new_value, VALID_VALUES_FOR_STATEMENT_DESCRIPTOR_SUFFIX)
      end

      @statement_descriptor_suffix = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_group Object to be assigned
    def transfer_group=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("transfer_group", new_value, VALID_VALUES_FOR_TRANSFER_GROUP)
      end

      @transfer_group = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@description, @metadata, @statement_descriptor, @statement_descriptor_suffix, @transfer_group)
  end
end
