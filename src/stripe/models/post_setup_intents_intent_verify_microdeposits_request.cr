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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostSetupIntentsIntentVerifyMicrodepositsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
    @[JSON::Field(key: "amounts", type: Array(Int64)?, presence: true, ignore_serialize: amounts.nil? && !amounts_present?)]
    property amounts : Array(Int64)?

    @[JSON::Field(ignore: true)]
    property? amounts_present : Bool = false

    # The client secret of the SetupIntent.
    @[JSON::Field(key: "client_secret", type: String?, presence: true, ignore_serialize: client_secret.nil? && !client_secret_present?)]
    getter client_secret : String?

    @[JSON::Field(ignore: true)]
    property? client_secret_present : Bool = false

    # A six-character code starting with SM present in the microdeposit sent to the bank account.
    @[JSON::Field(key: "descriptor_code", type: String?, presence: true, ignore_serialize: descriptor_code.nil? && !descriptor_code_present?)]
    getter descriptor_code : String?

    @[JSON::Field(ignore: true)]
    property? descriptor_code_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amounts : Array(Int64)? = nil,
      @client_secret : String? = nil,
      @descriptor_code : String? = nil,
      @expand : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@client_secret.nil? && @client_secret.to_s.size > 5000
        invalid_properties.push("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      if !@descriptor_code.nil? && @descriptor_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"descriptor_code\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@client_secret.nil? && @client_secret.to_s.size > 5000
      return false if !@descriptor_code.nil? && @descriptor_code.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] client_secret Value to be assigned
    def client_secret=(client_secret)
      if !client_secret.nil? && client_secret.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      @client_secret = client_secret
    end

    # Custom attribute writer method with validation
    # @param [Object] descriptor_code Value to be assigned
    def descriptor_code=(descriptor_code)
      if !descriptor_code.nil? && descriptor_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"descriptor_code\", the character length must be smaller than or equal to 5000.")
      end

      @descriptor_code = descriptor_code
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
    def_equals_and_hash(@amounts, @client_secret, @descriptor_code, @expand)
  end
end
