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
  class TaxParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "ip_address", type: Stripe::BbposWisePoseSplashscreen?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ip_address : Stripe::BbposWisePoseSplashscreen? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @ip_address : Stripe::BbposWisePoseSplashscreen? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_ip_address = @ip_address).nil?
        invalid_properties.concat(_ip_address.list_invalid_properties_for("ip_address")) if _ip_address.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_ip_address = @ip_address).nil?
        return false if _ip_address.is_a?(OpenApi::Validatable) && !_ip_address.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_address Object to be assigned
    def ip_address=(ip_address : Stripe::BbposWisePoseSplashscreen?)
      if ip_address.nil?
        return @ip_address = nil
      end
      _ip_address = ip_address.not_nil!
      _ip_address.validate if _ip_address.is_a?(OpenApi::Validatable)
      @ip_address = _ip_address
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@ip_address)
  end
end
