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
  class CardPaymentsSettingsSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "decline_on", type: Stripe::DeclineChargeOnSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter decline_on : Stripe::DeclineChargeOnSpecs? = nil

    @[JSON::Field(key: "statement_descriptor_prefix", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_prefix : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX = 10

    @[JSON::Field(key: "statement_descriptor_prefix_kana", type: Stripe::CardPaymentsSettingsSpecsStatementDescriptorPrefixKana?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_prefix_kana : Stripe::CardPaymentsSettingsSpecsStatementDescriptorPrefixKana? = nil

    @[JSON::Field(key: "statement_descriptor_prefix_kanji", type: Stripe::CardPaymentsSettingsSpecsStatementDescriptorPrefixKana?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_prefix_kanji : Stripe::CardPaymentsSettingsSpecsStatementDescriptorPrefixKana? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @decline_on : Stripe::DeclineChargeOnSpecs? = nil,
      @statement_descriptor_prefix : String? = nil,
      @statement_descriptor_prefix_kana : Stripe::CardPaymentsSettingsSpecsStatementDescriptorPrefixKana? = nil,
      @statement_descriptor_prefix_kanji : Stripe::CardPaymentsSettingsSpecsStatementDescriptorPrefixKana? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_decline_on = @decline_on).nil?
        invalid_properties.concat(_decline_on.list_invalid_properties_for("decline_on")) if _decline_on.is_a?(OpenApi::Validatable)
      end
      unless (_statement_descriptor_prefix = @statement_descriptor_prefix).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_prefix", _statement_descriptor_prefix.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_statement_descriptor_prefix_kana = @statement_descriptor_prefix_kana).nil?
        invalid_properties.concat(_statement_descriptor_prefix_kana.list_invalid_properties_for("statement_descriptor_prefix_kana")) if _statement_descriptor_prefix_kana.is_a?(OpenApi::Validatable)
      end
      unless (_statement_descriptor_prefix_kanji = @statement_descriptor_prefix_kanji).nil?
        invalid_properties.concat(_statement_descriptor_prefix_kanji.list_invalid_properties_for("statement_descriptor_prefix_kanji")) if _statement_descriptor_prefix_kanji.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_decline_on = @decline_on).nil?
        return false if _decline_on.is_a?(OpenApi::Validatable) && !_decline_on.valid?
      end

      unless (_statement_descriptor_prefix = @statement_descriptor_prefix).nil?
        return false if _statement_descriptor_prefix.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX
      end

      unless (_statement_descriptor_prefix_kana = @statement_descriptor_prefix_kana).nil?
        return false if _statement_descriptor_prefix_kana.is_a?(OpenApi::Validatable) && !_statement_descriptor_prefix_kana.valid?
      end

      unless (_statement_descriptor_prefix_kanji = @statement_descriptor_prefix_kanji).nil?
        return false if _statement_descriptor_prefix_kanji.is_a?(OpenApi::Validatable) && !_statement_descriptor_prefix_kanji.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] decline_on Object to be assigned
    def decline_on=(new_value : Stripe::DeclineChargeOnSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @decline_on = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_prefix Object to be assigned
    def statement_descriptor_prefix=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor_prefix", new_value.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX)
      end

      @statement_descriptor_prefix = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_prefix_kana Object to be assigned
    def statement_descriptor_prefix_kana=(new_value : Stripe::CardPaymentsSettingsSpecsStatementDescriptorPrefixKana?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @statement_descriptor_prefix_kana = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_prefix_kanji Object to be assigned
    def statement_descriptor_prefix_kanji=(new_value : Stripe::CardPaymentsSettingsSpecsStatementDescriptorPrefixKana?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @statement_descriptor_prefix_kanji = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@decline_on, @statement_descriptor_prefix, @statement_descriptor_prefix_kana, @statement_descriptor_prefix_kanji)
  end
end
