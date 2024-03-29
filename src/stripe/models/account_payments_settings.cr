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
  class AccountPaymentsSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 5000

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only)
    @[JSON::Field(key: "statement_descriptor_kana", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor_kana.nil? && !statement_descriptor_kana_present?)]
    getter statement_descriptor_kana : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_KANA = 5000

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_kana_present : Bool = false

    # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only)
    @[JSON::Field(key: "statement_descriptor_kanji", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor_kanji.nil? && !statement_descriptor_kanji_present?)]
    getter statement_descriptor_kanji : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_KANJI = 5000

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_kanji_present : Bool = false

    # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
    @[JSON::Field(key: "statement_descriptor_prefix_kana", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor_prefix_kana.nil? && !statement_descriptor_prefix_kana_present?)]
    getter statement_descriptor_prefix_kana : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANA = 5000

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_prefix_kana_present : Bool = false

    # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
    @[JSON::Field(key: "statement_descriptor_prefix_kanji", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor_prefix_kanji.nil? && !statement_descriptor_prefix_kanji_present?)]
    getter statement_descriptor_prefix_kanji : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANJI = 5000

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_prefix_kanji_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @statement_descriptor : String? = nil,
      @statement_descriptor_kana : String? = nil,
      @statement_descriptor_kanji : String? = nil,
      @statement_descriptor_prefix_kana : String? = nil,
      @statement_descriptor_prefix_kanji : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_statement_descriptor = @statement_descriptor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_statement_descriptor_kana = @statement_descriptor_kana).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_kana", _statement_descriptor_kana.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_KANA)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_statement_descriptor_kanji = @statement_descriptor_kanji).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_kanji", _statement_descriptor_kanji.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_KANJI)
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
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
      end

      unless (_statement_descriptor_kana = @statement_descriptor_kana).nil?
        return false if _statement_descriptor_kana.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_KANA
      end

      unless (_statement_descriptor_kanji = @statement_descriptor_kanji).nil?
        return false if _statement_descriptor_kanji.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_KANJI
      end

      unless (_statement_descriptor_prefix_kana = @statement_descriptor_prefix_kana).nil?
        return false if _statement_descriptor_prefix_kana.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANA
      end

      unless (_statement_descriptor_prefix_kanji = @statement_descriptor_prefix_kanji).nil?
        return false if _statement_descriptor_prefix_kanji.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_PREFIX_KANJI
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor", new_value.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
      end

      @statement_descriptor = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_kana Object to be assigned
    def statement_descriptor_kana=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor_kana", new_value.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_KANA)
      end

      @statement_descriptor_kana = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_kanji Object to be assigned
    def statement_descriptor_kanji=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor_kanji", new_value.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_KANJI)
      end

      @statement_descriptor_kanji = new_value
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@statement_descriptor, @statement_descriptor_present, @statement_descriptor_kana, @statement_descriptor_kana_present, @statement_descriptor_kanji, @statement_descriptor_kanji_present, @statement_descriptor_prefix_kana, @statement_descriptor_prefix_kana_present, @statement_descriptor_prefix_kanji, @statement_descriptor_prefix_kanji_present)
  end
end
