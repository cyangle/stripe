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
  class PostChargesChargeRefundRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "instructions_email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter instructions_email : String? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    @[JSON::Field(key: "payment_intent", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_intent : String? = nil

    @[JSON::Field(key: "reason", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reason : String? = nil

    VALID_VALUES_FOR_REASON = StaticArray["duplicate", "fraudulent", "requested_by_customer"]

    @[JSON::Field(key: "refund_application_fee", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter refund_application_fee : Bool? = nil

    @[JSON::Field(key: "reverse_transfer", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reverse_transfer : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @expand : Array(String)? = nil,
      @instructions_email : String? = nil,
      @metadata : Stripe::PostAccountRequestMetadata? = nil,
      @payment_intent : String? = nil,
      @reason : String? = nil,
      @refund_application_fee : Bool? = nil,
      @reverse_transfer : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _metadata = @metadata
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      if _payment_intent = @payment_intent
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_intent", _payment_intent.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _reason = @reason
        invalid_properties.push(OpenApi::EnumValidator.error_message("reason", VALID_VALUES_FOR_REASON)) unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _metadata = @metadata
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      if _payment_intent = @payment_intent
        return false if _payment_intent.to_s.size > 5000
      end

      if _reason = @reason
        return false unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] instructions_email Object to be assigned
    def instructions_email=(instructions_email : String?)
      if instructions_email.nil?
        return @instructions_email = nil
      end
      _instructions_email = instructions_email.not_nil!
      @instructions_email = _instructions_email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_intent Object to be assigned
    def payment_intent=(payment_intent : String?)
      if payment_intent.nil?
        return @payment_intent = nil
      end
      _payment_intent = payment_intent.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_intent", _payment_intent.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @payment_intent = _payment_intent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason : String?)
      if reason.nil?
        return @reason = nil
      end
      _reason = reason.not_nil!
      OpenApi::EnumValidator.validate("reason", _reason, VALID_VALUES_FOR_REASON)
      @reason = _reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_application_fee Object to be assigned
    def refund_application_fee=(refund_application_fee : Bool?)
      if refund_application_fee.nil?
        return @refund_application_fee = nil
      end
      _refund_application_fee = refund_application_fee.not_nil!
      @refund_application_fee = _refund_application_fee
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reverse_transfer Object to be assigned
    def reverse_transfer=(reverse_transfer : Bool?)
      if reverse_transfer.nil?
        return @reverse_transfer = nil
      end
      _reverse_transfer = reverse_transfer.not_nil!
      @reverse_transfer = _reverse_transfer
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @expand, @instructions_email, @metadata, @payment_intent, @reason, @refund_application_fee, @reverse_transfer)
  end
end
