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
  class AccountCardPaymentsSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "decline_on", type: Stripe::AccountDeclineChargeOn?, default: nil, required: false, nullable: false, emit_null: false)]
    getter decline_on : Stripe::AccountDeclineChargeOn? = nil

    # The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
    @[JSON::Field(key: "statement_descriptor_prefix", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor_prefix.nil? && !statement_descriptor_prefix_present?)]
    getter statement_descriptor_prefix : String? = nil

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_prefix_present : Bool = false

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
      @decline_on : Stripe::AccountDeclineChargeOn? = nil,
      @statement_descriptor_prefix : String? = nil,
      @statement_descriptor_prefix_kana : String? = nil,
      @statement_descriptor_prefix_kanji : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model decline_on : Stripe::AccountDeclineChargeOn?
      if _statement_descriptor_prefix = @statement_descriptor_prefix
        if _statement_descriptor_prefix.to_s.size > 5000
          invalid_properties.push("invalid value for \"statement_descriptor_prefix\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _statement_descriptor_prefix_kana = @statement_descriptor_prefix_kana
        if _statement_descriptor_prefix_kana.to_s.size > 5000
          invalid_properties.push("invalid value for \"statement_descriptor_prefix_kana\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _statement_descriptor_prefix_kanji = @statement_descriptor_prefix_kanji
        if _statement_descriptor_prefix_kanji.to_s.size > 5000
          invalid_properties.push("invalid value for \"statement_descriptor_prefix_kanji\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _statement_descriptor_prefix = @statement_descriptor_prefix
        return false if _statement_descriptor_prefix.to_s.size > 5000
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
    # @param [Object] decline_on Object to be assigned
    def decline_on=(decline_on : Stripe::AccountDeclineChargeOn?)
      if decline_on.nil?
        return @decline_on = nil
      end
      @decline_on = decline_on
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_prefix Object to be assigned
    def statement_descriptor_prefix=(statement_descriptor_prefix : String?)
      if statement_descriptor_prefix.nil?
        return @statement_descriptor_prefix = nil
      end
      _statement_descriptor_prefix = statement_descriptor_prefix.not_nil!
      if _statement_descriptor_prefix.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"statement_descriptor_prefix\", the character length must be smaller than or equal to 5000.")
      end

      @statement_descriptor_prefix = statement_descriptor_prefix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_prefix_kana Object to be assigned
    def statement_descriptor_prefix_kana=(statement_descriptor_prefix_kana : String?)
      if statement_descriptor_prefix_kana.nil?
        return @statement_descriptor_prefix_kana = nil
      end
      _statement_descriptor_prefix_kana = statement_descriptor_prefix_kana.not_nil!
      if _statement_descriptor_prefix_kana.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"statement_descriptor_prefix_kana\", the character length must be smaller than or equal to 5000.")
      end

      @statement_descriptor_prefix_kana = statement_descriptor_prefix_kana
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_prefix_kanji Object to be assigned
    def statement_descriptor_prefix_kanji=(statement_descriptor_prefix_kanji : String?)
      if statement_descriptor_prefix_kanji.nil?
        return @statement_descriptor_prefix_kanji = nil
      end
      _statement_descriptor_prefix_kanji = statement_descriptor_prefix_kanji.not_nil!
      if _statement_descriptor_prefix_kanji.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"statement_descriptor_prefix_kanji\", the character length must be smaller than or equal to 5000.")
      end

      @statement_descriptor_prefix_kanji = statement_descriptor_prefix_kanji
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
    def_equals_and_hash(@decline_on, @statement_descriptor_prefix, @statement_descriptor_prefix_present, @statement_descriptor_prefix_kana, @statement_descriptor_prefix_kana_present, @statement_descriptor_prefix_kanji, @statement_descriptor_prefix_kanji_present)
  end
end
