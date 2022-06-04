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
  # 
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentMethodLink
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # Account owner's email address.
    @[JSON::Field(key: "email", type: String?, presence: true, ignore_serialize: email.nil? && !email_present?)]
    getter email : String?

    @[JSON::Field(ignore: true)]
    property? email_present : Bool = false

    # Token used for persistent Link logins.
    @[JSON::Field(key: "persistent_token", type: String?, presence: true, ignore_serialize: persistent_token.nil? && !persistent_token_present?)]
    getter persistent_token : String?

    @[JSON::Field(ignore: true)]
    property? persistent_token_present : Bool = false

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
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@email.nil? && @email.to_s.size > 5000
        invalid_properties.push("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      if !@persistent_token.nil? && @persistent_token.to_s.size > 5000
        invalid_properties.push("invalid value for \"persistent_token\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@email.nil? && @email.to_s.size > 5000
      return false if !@persistent_token.nil? && @persistent_token.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"email\", the character length must be smaller than or equal to 5000.")
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] persistent_token Value to be assigned
    def persistent_token=(persistent_token)
      if !persistent_token.nil? && persistent_token.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"persistent_token\", the character length must be smaller than or equal to 5000.")
      end

      @persistent_token = persistent_token
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
    def_equals_and_hash(@email, @persistent_token)
  end
end
