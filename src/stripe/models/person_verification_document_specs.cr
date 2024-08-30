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
  class PersonVerificationDocumentSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
    @[JSON::Field(key: "back", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter back : String? = nil
    MAX_LENGTH_FOR_BACK = 500

    # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
    @[JSON::Field(key: "front", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter front : String? = nil
    MAX_LENGTH_FOR_FRONT = 500

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @back : String? = nil,
      @front : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_back = @back).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("back", _back.to_s.size, MAX_LENGTH_FOR_BACK)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_front = @front).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("front", _front.to_s.size, MAX_LENGTH_FOR_FRONT)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_back = @back).nil?
        return false if _back.to_s.size > MAX_LENGTH_FOR_BACK
      end

      unless (_front = @front).nil?
        return false if _front.to_s.size > MAX_LENGTH_FOR_FRONT
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] back Object to be assigned
    def back=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("back", new_value.to_s.size, MAX_LENGTH_FOR_BACK)
      end

      @back = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] front Object to be assigned
    def front=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("front", new_value.to_s.size, MAX_LENGTH_FOR_FRONT)
      end

      @front = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@back, @front)
  end
end
