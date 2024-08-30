#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class GelatoProvidedDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Email of user being verified
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil
    MAX_LENGTH_FOR_EMAIL = 5000

    # Phone number of user being verified
    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone : String? = nil
    MAX_LENGTH_FOR_PHONE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @email : String? = nil,
      @phone : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_email = @email).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("email", _email.to_s.size, MAX_LENGTH_FOR_EMAIL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_phone = @phone).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, MAX_LENGTH_FOR_PHONE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_email = @email).nil?
        return false if _email.to_s.size > MAX_LENGTH_FOR_EMAIL
      end

      unless (_phone = @phone).nil?
        return false if _phone.to_s.size > MAX_LENGTH_FOR_PHONE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("email", new_value.to_s.size, MAX_LENGTH_FOR_EMAIL)
      end

      @email = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("phone", new_value.to_s.size, MAX_LENGTH_FOR_PHONE)
      end

      @phone = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@email, @phone)
  end
end
