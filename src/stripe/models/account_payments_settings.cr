#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
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

    # Optional properties

    # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String? = nil

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only)
    @[JSON::Field(key: "statement_descriptor_kana", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor_kana.nil? && !statement_descriptor_kana_present?)]
    getter statement_descriptor_kana : String? = nil

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_kana_present : Bool = false

    # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only)
    @[JSON::Field(key: "statement_descriptor_kanji", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor_kanji.nil? && !statement_descriptor_kanji_present?)]
    getter statement_descriptor_kanji : String? = nil

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_kanji_present : Bool = false

    # The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
    @[JSON::Field(key: "statement_descriptor_prefix_kana", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor_prefix_kana.nil? && !statement_descriptor_prefix_kana_present?)]
    getter statement_descriptor_prefix_kana : String? = nil

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_prefix_kana_present : Bool = false

    # The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
    @[JSON::Field(key: "statement_descriptor_prefix_kanji", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor_prefix_kanji.nil? && !statement_descriptor_prefix_kanji_present?)]
    getter statement_descriptor_prefix_kanji : String? = nil

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
      if _statement_descriptor = @statement_descriptor
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _statement_descriptor_kana = @statement_descriptor_kana
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_kana", _statement_descriptor_kana.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _statement_descriptor_kanji = @statement_descriptor_kanji
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_kanji", _statement_descriptor_kanji.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _statement_descriptor_prefix_kana = @statement_descriptor_prefix_kana
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_prefix_kana", _statement_descriptor_prefix_kana.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _statement_descriptor_prefix_kanji = @statement_descriptor_prefix_kanji
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_prefix_kanji", _statement_descriptor_prefix_kanji.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _statement_descriptor = @statement_descriptor
        return false if _statement_descriptor.to_s.size > 5000
      end
      if _statement_descriptor_kana = @statement_descriptor_kana
        return false if _statement_descriptor_kana.to_s.size > 5000
      end
      if _statement_descriptor_kanji = @statement_descriptor_kanji
        return false if _statement_descriptor_kanji.to_s.size > 5000
      end
      if _statement_descriptor_prefix_kana = @statement_descriptor_prefix_kana
        return false if _statement_descriptor_prefix_kana.to_s.size > 5000
      end
      if _statement_descriptor_prefix_kanji = @statement_descriptor_prefix_kanji
        return false if _statement_descriptor_prefix_kanji.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor = _statement_descriptor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_kana Object to be assigned
    def statement_descriptor_kana=(statement_descriptor_kana : String?)
      if statement_descriptor_kana.nil?
        return @statement_descriptor_kana = nil
      end
      _statement_descriptor_kana = statement_descriptor_kana.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_kana", _statement_descriptor_kana.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor_kana = _statement_descriptor_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_kanji Object to be assigned
    def statement_descriptor_kanji=(statement_descriptor_kanji : String?)
      if statement_descriptor_kanji.nil?
        return @statement_descriptor_kanji = nil
      end
      _statement_descriptor_kanji = statement_descriptor_kanji.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_kanji", _statement_descriptor_kanji.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor_kanji = _statement_descriptor_kanji
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_prefix_kana Object to be assigned
    def statement_descriptor_prefix_kana=(statement_descriptor_prefix_kana : String?)
      if statement_descriptor_prefix_kana.nil?
        return @statement_descriptor_prefix_kana = nil
      end
      _statement_descriptor_prefix_kana = statement_descriptor_prefix_kana.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_prefix_kana", _statement_descriptor_prefix_kana.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor_prefix_kana = _statement_descriptor_prefix_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_prefix_kanji Object to be assigned
    def statement_descriptor_prefix_kanji=(statement_descriptor_prefix_kanji : String?)
      if statement_descriptor_prefix_kanji.nil?
        return @statement_descriptor_prefix_kanji = nil
      end
      _statement_descriptor_prefix_kanji = statement_descriptor_prefix_kanji.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_prefix_kanji", _statement_descriptor_prefix_kanji.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor_prefix_kanji = _statement_descriptor_prefix_kanji
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@statement_descriptor, @statement_descriptor_present, @statement_descriptor_kana, @statement_descriptor_kana_present, @statement_descriptor_kanji, @statement_descriptor_kanji_present, @statement_descriptor_prefix_kana, @statement_descriptor_prefix_kana_present, @statement_descriptor_prefix_kanji, @statement_descriptor_prefix_kanji_present)
  end
end
