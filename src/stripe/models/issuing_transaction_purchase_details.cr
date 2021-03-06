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
  class IssuingTransactionPurchaseDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "flight", type: IssuingTransactionPurchaseDetailsFlight?, presence: true, ignore_serialize: flight.nil? && !flight_present?)]
    property flight : IssuingTransactionPurchaseDetailsFlight?

    @[JSON::Field(ignore: true)]
    property? flight_present : Bool = false

    @[JSON::Field(key: "fuel", type: IssuingTransactionPurchaseDetailsFuel?, presence: true, ignore_serialize: fuel.nil? && !fuel_present?)]
    property fuel : IssuingTransactionPurchaseDetailsFuel?

    @[JSON::Field(ignore: true)]
    property? fuel_present : Bool = false

    @[JSON::Field(key: "lodging", type: IssuingTransactionPurchaseDetailsLodging?, presence: true, ignore_serialize: lodging.nil? && !lodging_present?)]
    property lodging : IssuingTransactionPurchaseDetailsLodging?

    @[JSON::Field(ignore: true)]
    property? lodging_present : Bool = false

    # The line items in the purchase.
    @[JSON::Field(key: "receipt", type: Array(IssuingTransactionReceiptData)?, presence: true, ignore_serialize: receipt.nil? && !receipt_present?)]
    property receipt : Array(IssuingTransactionReceiptData)?

    @[JSON::Field(ignore: true)]
    property? receipt_present : Bool = false

    # A merchant-specific order number.
    @[JSON::Field(key: "reference", type: String?, presence: true, ignore_serialize: reference.nil? && !reference_present?)]
    getter reference : String?

    @[JSON::Field(ignore: true)]
    property? reference_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @flight : IssuingTransactionPurchaseDetailsFlight? = nil,
      @fuel : IssuingTransactionPurchaseDetailsFuel? = nil,
      @lodging : IssuingTransactionPurchaseDetailsLodging? = nil,
      @receipt : Array(IssuingTransactionReceiptData)? = nil,
      @reference : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@reference.nil? && @reference.to_s.size > 5000
        invalid_properties.push("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@reference.nil? && @reference.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference : String?)
      if !reference.nil? && reference.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      @reference = reference
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
    def_equals_and_hash(@flight, @flight_present, @fuel, @fuel_present, @lodging, @lodging_present, @receipt, @receipt_present, @reference, @reference_present)
  end
end
