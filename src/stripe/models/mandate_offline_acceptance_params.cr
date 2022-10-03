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
  class MandateOfflineAcceptanceParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "contact_email", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter contact_email : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @contact_email : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"contact_email\" is required and cannot be null") if @contact_email.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @contact_email.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] contact_email Object to be assigned
    def contact_email=(contact_email : String?)
      if contact_email.nil?
        raise ArgumentError.new("\"contact_email\" is required and cannot be null")
      end
      _contact_email = contact_email.not_nil!
      @contact_email = _contact_email
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@contact_email)
  end
end
