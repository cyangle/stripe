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
  class PostChargesChargeCaptureRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # The amount to capture, which must be less than or equal to the original amount. Any additional amount will be automatically refunded.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # An application fee to add on to this charge.
    @[JSON::Field(key: "application_fee", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee : Int64? = nil

    # An application fee amount to add on to this charge, which must be less than or equal to the original amount.
    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_amount : Int64? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # The email address to send this charge's receipt to. This will override the previously-specified email address for this charge, if one was set. Receipts will not be sent in test mode.
    @[JSON::Field(key: "receipt_email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter receipt_email : String? = nil

    # For card charges, use `statement_descriptor_suffix` instead. Otherwise, you can use this value as the complete description of a charge on your customers’ statements. Must contain at least one letter, maximum 22 characters.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil

    # Provides information about the charge that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_suffix : String? = nil

    @[JSON::Field(key: "transfer_data", type: Stripe::TransferDataSpecs1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_data : Stripe::TransferDataSpecs1? = nil

    # A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://stripe.com/docs/connect/charges-transfers#transfer-options) for details.
    @[JSON::Field(key: "transfer_group", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_group : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @application_fee : Int64? = nil,
      @application_fee_amount : Int64? = nil,
      @expand : Array(String)? = nil,
      @receipt_email : String? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @transfer_data : Stripe::TransferDataSpecs1? = nil,
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _statement_descriptor = @statement_descriptor
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 22)
          invalid_properties.push(max_length_error)
        end
      end
      if _statement_descriptor_suffix = @statement_descriptor_suffix
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, 22)
          invalid_properties.push(max_length_error)
        end
      end
      if _transfer_data = @transfer_data
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _statement_descriptor = @statement_descriptor
        return false if _statement_descriptor.to_s.size > 22
      end
      if _statement_descriptor_suffix = @statement_descriptor_suffix
        return false if _statement_descriptor_suffix.to_s.size > 22
      end
      if _transfer_data = @transfer_data
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
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
    # @param [Object] application_fee Object to be assigned
    def application_fee=(application_fee : Int64?)
      if application_fee.nil?
        return @application_fee = nil
      end
      _application_fee = application_fee.not_nil!
      @application_fee = _application_fee
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
    # @param [Object] receipt_email Object to be assigned
    def receipt_email=(receipt_email : String?)
      if receipt_email.nil?
        return @receipt_email = nil
      end
      _receipt_email = receipt_email.not_nil!
      @receipt_email = _receipt_email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 22)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor = _statement_descriptor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_suffix Object to be assigned
    def statement_descriptor_suffix=(statement_descriptor_suffix : String?)
      if statement_descriptor_suffix.nil?
        return @statement_descriptor_suffix = nil
      end
      _statement_descriptor_suffix = statement_descriptor_suffix.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, 22)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor_suffix = _statement_descriptor_suffix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::TransferDataSpecs1?)
      if transfer_data.nil?
        return @transfer_data = nil
      end
      _transfer_data = transfer_data.not_nil!
      _transfer_data.validate if _transfer_data.is_a?(OpenApi::Validatable)
      @transfer_data = _transfer_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_group Object to be assigned
    def transfer_group=(transfer_group : String?)
      if transfer_group.nil?
        return @transfer_group = nil
      end
      _transfer_group = transfer_group.not_nil!
      @transfer_group = _transfer_group
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @application_fee, @application_fee_amount, @expand, @receipt_email, @statement_descriptor, @statement_descriptor_suffix, @transfer_data, @transfer_group)
  end
end
