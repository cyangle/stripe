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
  class PostPaymentIntentsIntentCaptureRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The amount to capture from the PaymentIntent, which must be less than or equal to the original amount. Any additional amount will be automatically refunded. Defaults to the full `amount_capturable` if not provided.
    @[JSON::Field(key: "amount_to_capture", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount_to_capture : Int64? = nil

    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_amount : Int64? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # For non-card charges, you can use this value as the complete description that appears on your customers’ statements. Must contain at least one letter, maximum 22 characters.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 22

    # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_suffix : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX = 22

    @[JSON::Field(key: "transfer_data", type: Stripe::TransferDataUpdateParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_data : Stripe::TransferDataUpdateParams? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount_to_capture : Int64? = nil,
      @application_fee_amount : Int64? = nil,
      @expand : Array(String)? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @transfer_data : Stripe::TransferDataUpdateParams? = nil
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
      unless (_statement_descriptor_suffix = @statement_descriptor_suffix).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_transfer_data = @transfer_data).nil?
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
      end

      unless (_statement_descriptor_suffix = @statement_descriptor_suffix).nil?
        return false if _statement_descriptor_suffix.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX
      end

      unless (_transfer_data = @transfer_data).nil?
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_to_capture Object to be assigned
    def amount_to_capture=(amount_to_capture : Int64?)
      if amount_to_capture.nil?
        return @amount_to_capture = nil
      end
      _amount_to_capture = amount_to_capture.not_nil!
      @amount_to_capture = _amount_to_capture
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_amount Object to be assigned
    def application_fee_amount=(application_fee_amount : Int64?)
      if application_fee_amount.nil?
        return @application_fee_amount = nil
      end
      _application_fee_amount = application_fee_amount.not_nil!
      @application_fee_amount = _application_fee_amount
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
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
      @statement_descriptor = _statement_descriptor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_suffix Object to be assigned
    def statement_descriptor_suffix=(statement_descriptor_suffix : String?)
      if statement_descriptor_suffix.nil?
        return @statement_descriptor_suffix = nil
      end
      _statement_descriptor_suffix = statement_descriptor_suffix.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX)
      @statement_descriptor_suffix = _statement_descriptor_suffix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::TransferDataUpdateParams?)
      if transfer_data.nil?
        return @transfer_data = nil
      end
      _transfer_data = transfer_data.not_nil!
      _transfer_data.validate if _transfer_data.is_a?(OpenApi::Validatable)
      @transfer_data = _transfer_data
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_to_capture, @application_fee_amount, @expand, @statement_descriptor, @statement_descriptor_suffix, @transfer_data)
  end
end
