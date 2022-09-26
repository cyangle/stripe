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
  class SourceTransactionSepaCreditTransferData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # Reference associated with the transfer.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reference : String? = nil

    # Sender's bank account IBAN.
    @[JSON::Field(key: "sender_iban", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sender_iban : String? = nil

    # Sender's name.
    @[JSON::Field(key: "sender_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sender_name : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @reference : String? = nil,
      @sender_iban : String? = nil,
      @sender_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if _reference = @reference
        if _reference.to_s.size > 5000
          invalid_properties.push("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _sender_iban = @sender_iban
        if _sender_iban.to_s.size > 5000
          invalid_properties.push("invalid value for \"sender_iban\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _sender_name = @sender_name
        if _sender_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"sender_name\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _reference = @reference
        return false if _reference.to_s.size > 5000
      end
      if _sender_iban = @sender_iban
        return false if _sender_iban.to_s.size > 5000
      end
      if _sender_name = @sender_name
        return false if _sender_name.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(reference : String?)
      if reference.nil?
        return @reference = nil
      end
      _reference = reference.not_nil!
      if _reference.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      @reference = reference
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sender_iban Object to be assigned
    def sender_iban=(sender_iban : String?)
      if sender_iban.nil?
        return @sender_iban = nil
      end
      _sender_iban = sender_iban.not_nil!
      if _sender_iban.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"sender_iban\", the character length must be smaller than or equal to 5000.")
      end

      @sender_iban = sender_iban
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sender_name Object to be assigned
    def sender_name=(sender_name : String?)
      if sender_name.nil?
        return @sender_name = nil
      end
      _sender_name = sender_name.not_nil!
      if _sender_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"sender_name\", the character length must be smaller than or equal to 5000.")
      end

      @sender_name = sender_name
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
    def_equals_and_hash(@reference, @sender_iban, @sender_name)
  end
end
