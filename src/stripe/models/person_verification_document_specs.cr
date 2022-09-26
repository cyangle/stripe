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
  class PersonVerificationDocumentSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "back", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter back : String? = nil

    @[JSON::Field(key: "front", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter front : String? = nil

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
    def list_invalid_properties
      invalid_properties = Array(String).new
      if _back = @back
        if _back.to_s.size > 500
          invalid_properties.push("invalid value for \"back\", the character length must be smaller than or equal to 500.")
        end
      end
      if _front = @front
        if _front.to_s.size > 500
          invalid_properties.push("invalid value for \"front\", the character length must be smaller than or equal to 500.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _back = @back
        return false if _back.to_s.size > 500
      end
      if _front = @front
        return false if _front.to_s.size > 500
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] back Object to be assigned
    def back=(back : String?)
      if back.nil?
        return @back = nil
      end
      _back = back.not_nil!
      if _back.to_s.size > 500
        raise ArgumentError.new("invalid value for \"back\", the character length must be smaller than or equal to 500.")
      end

      @back = back
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] front Object to be assigned
    def front=(front : String?)
      if front.nil?
        return @front = nil
      end
      _front = front.not_nil!
      if _front.to_s.size > 500
        raise ArgumentError.new("invalid value for \"front\", the character length must be smaller than or equal to 500.")
      end

      @front = front
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@back, @front)
  end
end
