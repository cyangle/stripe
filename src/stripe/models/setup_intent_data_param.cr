#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # A subset of parameters to be passed to SetupIntent creation for Checkout Sessions in `setup` mode.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class SetupIntentDataParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "on_behalf_of", type: String?, presence: true, ignore_serialize: on_behalf_of.nil? && !on_behalf_of_present?)]
    property on_behalf_of : String?

    @[JSON::Field(ignore: true)]
    property? on_behalf_of_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @description : String? = nil, 
      @metadata : Hash(String, String)? = nil, 
      @on_behalf_of : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@description.nil? && @description.to_s.size > 1000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@description.nil? && @description.to_s.size > 1000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 1000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 1000.")
      end

      @description = description
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
    def_equals_and_hash(@description, @metadata, @on_behalf_of)
  end
end
