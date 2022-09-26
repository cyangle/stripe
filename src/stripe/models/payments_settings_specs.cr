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
  class PaymentsSettingsSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil

    @[JSON::Field(key: "statement_descriptor_kana", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_kana : String? = nil

    @[JSON::Field(key: "statement_descriptor_kanji", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_kanji : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @statement_descriptor : String? = nil,
      @statement_descriptor_kana : String? = nil,
      @statement_descriptor_kanji : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if _statement_descriptor = @statement_descriptor
        if _statement_descriptor.to_s.size > 22
          invalid_properties.push("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
        end
      end
      if _statement_descriptor_kana = @statement_descriptor_kana
        if _statement_descriptor_kana.to_s.size > 22
          invalid_properties.push("invalid value for \"statement_descriptor_kana\", the character length must be smaller than or equal to 22.")
        end
      end
      if _statement_descriptor_kanji = @statement_descriptor_kanji
        if _statement_descriptor_kanji.to_s.size > 22
          invalid_properties.push("invalid value for \"statement_descriptor_kanji\", the character length must be smaller than or equal to 22.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _statement_descriptor = @statement_descriptor
        return false if _statement_descriptor.to_s.size > 22
      end
      if _statement_descriptor_kana = @statement_descriptor_kana
        return false if _statement_descriptor_kana.to_s.size > 22
      end
      if _statement_descriptor_kanji = @statement_descriptor_kanji
        return false if _statement_descriptor_kanji.to_s.size > 22
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
      if _statement_descriptor.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor = statement_descriptor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_kana Object to be assigned
    def statement_descriptor_kana=(statement_descriptor_kana : String?)
      if statement_descriptor_kana.nil?
        return @statement_descriptor_kana = nil
      end
      _statement_descriptor_kana = statement_descriptor_kana.not_nil!
      if _statement_descriptor_kana.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor_kana\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor_kana = statement_descriptor_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_kanji Object to be assigned
    def statement_descriptor_kanji=(statement_descriptor_kanji : String?)
      if statement_descriptor_kanji.nil?
        return @statement_descriptor_kanji = nil
      end
      _statement_descriptor_kanji = statement_descriptor_kanji.not_nil!
      if _statement_descriptor_kanji.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor_kanji\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor_kanji = statement_descriptor_kanji
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@statement_descriptor, @statement_descriptor_kana, @statement_descriptor_kanji)
  end
end
