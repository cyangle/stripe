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
  class Owner
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "address", type: Stripe::SourceAddress?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::SourceAddress? = nil

    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil

    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone : String? = nil
    MAX_LENGTH_FOR_PHONE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::SourceAddress? = nil,
      @email : String? = nil,
      @name : String? = nil,
      @phone : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _address = @address
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end

      if _name = @name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      if _phone = @phone
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, MAX_LENGTH_FOR_PHONE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _address = @address
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      if _name = @name
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      if _phone = @phone
        return false if _phone.to_s.size > MAX_LENGTH_FOR_PHONE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::SourceAddress?)
      if address.nil?
        return @address = nil
      end
      _address = address.not_nil!
      _address.validate if _address.is_a?(OpenApi::Validatable)
      @address = _address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(email : String?)
      if email.nil?
        return @email = nil
      end
      _email = email.not_nil!
      @email = _email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        return @name = nil
      end
      _name = name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(phone : String?)
      if phone.nil?
        return @phone = nil
      end
      _phone = phone.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("phone", _phone.to_s.size, MAX_LENGTH_FOR_PHONE)
      @phone = _phone
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @email, @name, @phone)
  end
end
