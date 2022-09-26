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
  # The parameters used to automatically create a Transfer when the payment is captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
  class TransferDataUpdateParams1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      @amount = amount
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
    def_equals_and_hash(@amount)
  end
end
