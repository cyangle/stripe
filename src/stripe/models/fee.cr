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
  class Fee
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Amount of the fee, in cents.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Type of the fee, one of: `application_fee`, `stripe_fee` or `tax`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    # Optional properties

    # ID of the Connect application that earned the fee.
    @[JSON::Field(key: "application", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: application.nil? && !application_present?)]
    getter application : String? = nil

    @[JSON::Field(ignore: true)]
    property? application_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @application : String? = nil,
      @description : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?
      if __type = @_type
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _application = @application
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("application", _application.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
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

      return false if @_type.nil?
      if __type = @_type
        return false if __type.to_s.size > 5000
      end
      if _application = @application
        return false if _application.to_s.size > 5000
      end
      if _description = @description
        return false if _description.to_s.size > 5000
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
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application Object to be assigned
    def application=(application : String?)
      if application.nil?
        return @application = nil
      end
      _application = application.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("application", _application.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @application = _application
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @currency, @_type, @application, @application_present, @description, @description_present)
  end
end
