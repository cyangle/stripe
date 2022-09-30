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
  class PostPayoutsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # A positive integer in cents representing how much to payout.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Optional properties

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    # The ID of a bank account or a card to send the payout to. If no destination is supplied, the default external account for the specified currency will be used.
    @[JSON::Field(key: "destination", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter destination : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The method used to send this payout, which can be `standard` or `instant`. `instant` is only supported for payouts to debit cards. (See [Instant payouts for marketplaces for more information](https://stripe.com/blog/instant-payouts-for-marketplaces).)
    @[JSON::Field(key: "method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter method : String? = nil

    VALID_VALUES_FOR_METHOD = StaticArray["instant", "standard"]

    # The balance type of your Stripe balance to draw this payout from. Balances for different payment sources are kept separately. You can find the amounts with the balances API. One of `bank_account`, `card`, or `fpx`.
    @[JSON::Field(key: "source_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter source_type : String? = nil

    VALID_VALUES_FOR_SOURCE_TYPE = StaticArray["bank_account", "card", "fpx"]

    # A string to be displayed on the recipient's bank or card statement. This may be at most 22 characters. Attempting to use a `statement_descriptor` longer than 22 characters will return an error. Note: Most banks will truncate this information and/or display it inconsistently. Some may not display it at all.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      # Optional properties
      @description : String? = nil,
      @destination : String? = nil,
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil,
      @method : String? = nil,
      @source_type : String? = nil,
      @statement_descriptor : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      if _method = @method
        invalid_properties.push(OpenApi::EnumValidator.error_message("method", VALID_VALUES_FOR_METHOD)) unless OpenApi::EnumValidator.valid?(_method, VALID_VALUES_FOR_METHOD)
      end
      if _source_type = @source_type
        invalid_properties.push(OpenApi::EnumValidator.error_message("source_type", VALID_VALUES_FOR_SOURCE_TYPE)) unless OpenApi::EnumValidator.valid?(_source_type, VALID_VALUES_FOR_SOURCE_TYPE)
      end
      if _statement_descriptor = @statement_descriptor
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 22)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @currency.nil?

      if _description = @description
        return false if _description.to_s.size > 5000
      end

      if _method = @method
        return false unless OpenApi::EnumValidator.valid?(_method, VALID_VALUES_FOR_METHOD)
      end

      if _source_type = @source_type
        return false unless OpenApi::EnumValidator.valid?(_source_type, VALID_VALUES_FOR_SOURCE_TYPE)
      end

      if _statement_descriptor = @statement_descriptor
        return false if _statement_descriptor.to_s.size > 22
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        raise ArgumentError.new("\"amount\" is required and cannot be null")
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination Object to be assigned
    def destination=(destination : String?)
      if destination.nil?
        return @destination = nil
      end
      _destination = destination.not_nil!
      @destination = _destination
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
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] method Object to be assigned
    def method=(method : String?)
      if method.nil?
        return @method = nil
      end
      _method = method.not_nil!
      OpenApi::EnumValidator.validate("method", _method, VALID_VALUES_FOR_METHOD)
      @method = _method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_type Object to be assigned
    def source_type=(source_type : String?)
      if source_type.nil?
        return @source_type = nil
      end
      _source_type = source_type.not_nil!
      OpenApi::EnumValidator.validate("source_type", _source_type, VALID_VALUES_FOR_SOURCE_TYPE)
      @source_type = _source_type
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @currency, @description, @destination, @expand, @metadata, @method, @source_type, @statement_descriptor)
  end
end
