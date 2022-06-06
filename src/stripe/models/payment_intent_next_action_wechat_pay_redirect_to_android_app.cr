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
  class PaymentIntentNextActionWechatPayRedirectToAndroidApp
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # app_id is the APP ID registered on WeChat open platform
    @[JSON::Field(key: "app_id", type: String)]
    getter app_id : String

    # nonce_str is a random string
    @[JSON::Field(key: "nonce_str", type: String)]
    getter nonce_str : String

    # package is static value
    @[JSON::Field(key: "package", type: String)]
    getter package : String

    # an unique merchant ID assigned by WeChat Pay
    @[JSON::Field(key: "partner_id", type: String)]
    getter partner_id : String

    # an unique trading ID assigned by WeChat Pay
    @[JSON::Field(key: "prepay_id", type: String)]
    getter prepay_id : String

    # A signature
    @[JSON::Field(key: "sign", type: String)]
    getter sign : String

    # Specifies the current time in epoch format
    @[JSON::Field(key: "timestamp", type: String)]
    getter timestamp : String

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @app_id : String,
      @nonce_str : String,
      @package : String,
      @partner_id : String,
      @prepay_id : String,
      @sign : String,
      @timestamp : String
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @app_id.to_s.size > 5000
        invalid_properties.push("invalid value for \"app_id\", the character length must be smaller than or equal to 5000.")
      end

      if @nonce_str.to_s.size > 5000
        invalid_properties.push("invalid value for \"nonce_str\", the character length must be smaller than or equal to 5000.")
      end

      if @package.to_s.size > 5000
        invalid_properties.push("invalid value for \"package\", the character length must be smaller than or equal to 5000.")
      end

      if @partner_id.to_s.size > 5000
        invalid_properties.push("invalid value for \"partner_id\", the character length must be smaller than or equal to 5000.")
      end

      if @prepay_id.to_s.size > 5000
        invalid_properties.push("invalid value for \"prepay_id\", the character length must be smaller than or equal to 5000.")
      end

      if @sign.to_s.size > 5000
        invalid_properties.push("invalid value for \"sign\", the character length must be smaller than or equal to 5000.")
      end

      if @timestamp.to_s.size > 5000
        invalid_properties.push("invalid value for \"timestamp\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @app_id.to_s.size > 5000
      return false if @nonce_str.to_s.size > 5000
      return false if @package.to_s.size > 5000
      return false if @partner_id.to_s.size > 5000
      return false if @prepay_id.to_s.size > 5000
      return false if @sign.to_s.size > 5000
      return false if @timestamp.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] app_id Value to be assigned
    def app_id=(app_id : String)
      if app_id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"app_id\", the character length must be smaller than or equal to 5000.")
      end

      @app_id = app_id
    end

    # Custom attribute writer method with validation
    # @param [Object] nonce_str Value to be assigned
    def nonce_str=(nonce_str : String)
      if nonce_str.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"nonce_str\", the character length must be smaller than or equal to 5000.")
      end

      @nonce_str = nonce_str
    end

    # Custom attribute writer method with validation
    # @param [Object] package Value to be assigned
    def package=(package : String)
      if package.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"package\", the character length must be smaller than or equal to 5000.")
      end

      @package = package
    end

    # Custom attribute writer method with validation
    # @param [Object] partner_id Value to be assigned
    def partner_id=(partner_id : String)
      if partner_id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"partner_id\", the character length must be smaller than or equal to 5000.")
      end

      @partner_id = partner_id
    end

    # Custom attribute writer method with validation
    # @param [Object] prepay_id Value to be assigned
    def prepay_id=(prepay_id : String)
      if prepay_id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"prepay_id\", the character length must be smaller than or equal to 5000.")
      end

      @prepay_id = prepay_id
    end

    # Custom attribute writer method with validation
    # @param [Object] sign Value to be assigned
    def sign=(sign : String)
      if sign.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"sign\", the character length must be smaller than or equal to 5000.")
      end

      @sign = sign
    end

    # Custom attribute writer method with validation
    # @param [Object] timestamp Value to be assigned
    def timestamp=(timestamp : String)
      if timestamp.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"timestamp\", the character length must be smaller than or equal to 5000.")
      end

      @timestamp = timestamp
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
    def_equals_and_hash(@app_id, @nonce_str, @package, @partner_id, @prepay_id, @sign, @timestamp)
  end
end
