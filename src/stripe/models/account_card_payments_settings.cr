#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_decline_charge_on"

module Stripe
  #
  class AccountCardPaymentsSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
    @[JSON::Field(key: "statement_descriptor_prefix", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter statement_descriptor_prefix : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX = 5000

    # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
    @[JSON::Field(key: "statement_descriptor_prefix_kana", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter statement_descriptor_prefix_kana : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANA = 5000

    # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
    @[JSON::Field(key: "statement_descriptor_prefix_kanji", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter statement_descriptor_prefix_kanji : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANJI = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "decline_on", type: Stripe::AccountDeclineChargeOn?, default: nil, required: false, nullable: false, emit_null: false)]
    getter decline_on : Stripe::AccountDeclineChargeOn? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @statement_descriptor_prefix : String? = nil,
      @statement_descriptor_prefix_kana : String? = nil,
      @statement_descriptor_prefix_kanji : String? = nil,
      # Optional properties
      @decline_on : Stripe::AccountDeclineChargeOn? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_statement_descriptor_prefix = @statement_descriptor_prefix).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_prefix", _statement_descriptor_prefix.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_statement_descriptor_prefix_kana = @statement_descriptor_prefix_kana).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_prefix_kana", _statement_descriptor_prefix_kana.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANA)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_statement_descriptor_prefix_kanji = @statement_descriptor_prefix_kanji).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_prefix_kanji", _statement_descriptor_prefix_kanji.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANJI)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_decline_on = @decline_on).nil?
        invalid_properties.concat(_decline_on.list_invalid_properties_for("decline_on")) if _decline_on.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_statement_descriptor_prefix = @statement_descriptor_prefix).nil?
        return false if _statement_descriptor_prefix.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX
      end

      unless (_statement_descriptor_prefix_kana = @statement_descriptor_prefix_kana).nil?
        return false if _statement_descriptor_prefix_kana.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANA
      end

      unless (_statement_descriptor_prefix_kanji = @statement_descriptor_prefix_kanji).nil?
        return false if _statement_descriptor_prefix_kanji.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANJI
      end

      unless (_decline_on = @decline_on).nil?
        return false if _decline_on.is_a?(OpenApi::Validatable) && !_decline_on.valid?
      end

      true
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
    def statement_descriptor_prefix_kana=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor_prefix_kana", new_value.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANA)
      end

      @statement_descriptor_prefix_kana = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_prefix_kanji Object to be assigned
    def statement_descriptor_prefix_kanji=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor_prefix_kanji", new_value.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANJI)
      end

      @statement_descriptor_prefix_kanji = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] decline_on Object to be assigned
    def decline_on=(new_value : Stripe::AccountDeclineChargeOn?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @decline_on = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@statement_descriptor_prefix, @statement_descriptor_prefix_kana, @statement_descriptor_prefix_kanji, @decline_on)
  end
end
