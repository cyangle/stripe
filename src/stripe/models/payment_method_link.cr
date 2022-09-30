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
  class PaymentMethodLink
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Account owner's email address.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String? = nil

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # Token used for persistent Link logins.
    @[JSON::Field(key: "persistent_token", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter persistent_token : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @email : String? = nil,
      @persistent_token : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _email = @email
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("email", _email.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _persistent_token = @persistent_token
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("persistent_token", _persistent_token.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _email = @email
        return false if _email.to_s.size > 5000
      end

      if _persistent_token = @persistent_token
        return false if _persistent_token.to_s.size > 5000
      end

      true
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
    # @param [Object] persistent_token Object to be assigned
    def persistent_token=(persistent_token : String?)
      if persistent_token.nil?
        return @persistent_token = nil
      end
      _persistent_token = persistent_token.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("persistent_token", _persistent_token.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @persistent_token = _persistent_token
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@email, @email_present, @persistent_token)
  end
end
