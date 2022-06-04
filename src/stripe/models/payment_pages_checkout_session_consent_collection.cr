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
  class PaymentPagesCheckoutSessionConsentCollection
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # If set to `auto`, enables the collection of customer consent for promotional communications. The Checkout Session will determine whether to display an option to opt into promotional communication from the merchant depending on the customer's locale. Only available to US merchants.
    @[JSON::Field(key: "promotions", type: String?, presence: true, ignore_serialize: promotions.nil? && !promotions_present?)]
    getter promotions : String?

    @[JSON::Field(ignore: true)]
    property? promotions_present : Bool = false

    ENUM_VALIDATOR_FOR_PROMOTIONS = EnumValidator.new("promotions", "String", ["auto"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @promotions : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_PROMOTIONS.error_message) unless ENUM_VALIDATOR_FOR_PROMOTIONS.valid?(@promotions)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_PROMOTIONS.valid?(@promotions)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promotions Object to be assigned
    def promotions=(promotions)
      ENUM_VALIDATOR_FOR_PROMOTIONS.valid!(promotions)
      @promotions = promotions
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
    def_equals_and_hash(@promotions)
  end
end
