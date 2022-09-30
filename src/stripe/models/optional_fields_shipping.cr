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
  # Shipping information for the charge. Helps prevent fraud on charges for physical goods.
  class OptionalFieldsShipping
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "address", type: Stripe::OptionalFieldsAddress?, default: nil, required: true, nullable: false, emit_null: false)]
    getter address : Stripe::OptionalFieldsAddress? = nil

    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # Optional properties

    @[JSON::Field(key: "carrier", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter carrier : String? = nil

    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone : String? = nil

    @[JSON::Field(key: "tracking_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tracking_number : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address : Stripe::OptionalFieldsAddress? = nil,
      @name : String? = nil,
      # Optional properties
      @carrier : String? = nil,
      @phone : String? = nil,
      @tracking_number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"address\" is required and cannot be null") if @address.nil?

      if _address = @address
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      if _name = @name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _carrier = @carrier
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("carrier", _carrier.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _phone = @phone
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _tracking_number = @tracking_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tracking_number", _tracking_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @address.nil?
      if _address = @address
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      return false if @name.nil?
      if _name = @name
        return false if _name.to_s.size > 5000
      end

      if _carrier = @carrier
        return false if _carrier.to_s.size > 5000
      end

      if _phone = @phone
        return false if _phone.to_s.size > 5000
      end

      if _tracking_number = @tracking_number
        return false if _tracking_number.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::OptionalFieldsAddress?)
      if address.nil?
        raise ArgumentError.new("\"address\" is required and cannot be null")
      end
      _address = address.not_nil!
      _address.validate if _address.is_a?(OpenApi::Validatable)
      @address = _address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        raise ArgumentError.new("\"name\" is required and cannot be null")
      end
      _name = name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] carrier Object to be assigned
    def carrier=(carrier : String?)
      if carrier.nil?
        return @carrier = nil
      end
      _carrier = carrier.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("carrier", _carrier.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @carrier = _carrier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(phone : String?)
      if phone.nil?
        return @phone = nil
      end
      _phone = phone.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @phone = _phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tracking_number Object to be assigned
    def tracking_number=(tracking_number : String?)
      if tracking_number.nil?
        return @tracking_number = nil
      end
      _tracking_number = tracking_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tracking_number", _tracking_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @tracking_number = _tracking_number
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @name, @carrier, @phone, @tracking_number)
  end
end
