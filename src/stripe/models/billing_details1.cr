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
  class BillingDetails1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "address", type: Stripe::ValidatedOptionalFieldsAddress?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::ValidatedOptionalFieldsAddress? = nil

    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil

    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil

    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::ValidatedOptionalFieldsAddress? = nil,
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
        if _address.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_address.list_invalid_properties_for("address"))
        end
      end

      if _name = @name
        if _name.to_s.size > 5000
          invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _phone = @phone
        if _phone.to_s.size > 20
          invalid_properties.push("invalid value for \"phone\", the character length must be smaller than or equal to 20.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _address = @address
        if _address.is_a?(OpenApi::Validatable)
          return false unless _address.valid?
        end
      end

      if _name = @name
        return false if _name.to_s.size > 5000
      end
      if _phone = @phone
        return false if _phone.to_s.size > 20
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::ValidatedOptionalFieldsAddress?)
      if address.nil?
        return @address = nil
      end
      _address = address.not_nil!
      if _address.is_a?(OpenApi::Validatable)
        _address.validate
      end
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
      if _name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(phone : String?)
      if phone.nil?
        return @phone = nil
      end
      _phone = phone.not_nil!
      if _phone.to_s.size > 20
        raise ArgumentError.new("invalid value for \"phone\", the character length must be smaller than or equal to 20.")
      end

      @phone = _phone
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @email, @name, @phone)
  end
end
