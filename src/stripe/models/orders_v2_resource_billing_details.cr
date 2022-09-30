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
  class OrdersV2ResourceBillingDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "address", type: Stripe::OrdersV2ResourceBillingDetailsAddress?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: address.nil? && !address_present?)]
    getter address : Stripe::OrdersV2ResourceBillingDetailsAddress? = nil

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    # Email address for the order.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String? = nil

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # Full name for the order.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String? = nil

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # Billing phone number for the order (including extension).
    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: phone.nil? && !phone_present?)]
    getter phone : String? = nil

    @[JSON::Field(ignore: true)]
    property? phone_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::OrdersV2ResourceBillingDetailsAddress? = nil,
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
      if _email = @email
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("email", _email.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _name = @name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _phone = @phone
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, 5000)
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

      if _email = @email
        return false if _email.to_s.size > 5000
      end

      if _name = @name
        return false if _name.to_s.size > 5000
      end

      if _phone = @phone
        return false if _phone.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::OrdersV2ResourceBillingDetailsAddress?)
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("email", _email.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @email = _email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        return @name = nil
      end
      _name = name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @phone = _phone
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @address_present, @email, @email_present, @name, @name_present, @phone, @phone_present)
  end
end
