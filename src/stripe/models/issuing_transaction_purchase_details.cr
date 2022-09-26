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
  #
  class IssuingTransactionPurchaseDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "flight", type: Stripe::IssuingTransactionPurchaseDetailsFlight?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: flight.nil? && !flight_present?)]
    getter flight : Stripe::IssuingTransactionPurchaseDetailsFlight? = nil

    @[JSON::Field(ignore: true)]
    property? flight_present : Bool = false

    @[JSON::Field(key: "fuel", type: Stripe::IssuingTransactionPurchaseDetailsFuel?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fuel.nil? && !fuel_present?)]
    getter fuel : Stripe::IssuingTransactionPurchaseDetailsFuel? = nil

    @[JSON::Field(ignore: true)]
    property? fuel_present : Bool = false

    @[JSON::Field(key: "lodging", type: Stripe::IssuingTransactionPurchaseDetailsLodging?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: lodging.nil? && !lodging_present?)]
    getter lodging : Stripe::IssuingTransactionPurchaseDetailsLodging? = nil

    @[JSON::Field(ignore: true)]
    property? lodging_present : Bool = false

    # The line items in the purchase.
    @[JSON::Field(key: "receipt", type: Array(Stripe::IssuingTransactionReceiptData)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: receipt.nil? && !receipt_present?)]
    getter receipt : Array(Stripe::IssuingTransactionReceiptData)? = nil

    @[JSON::Field(ignore: true)]
    property? receipt_present : Bool = false

    # A merchant-specific order number.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reference.nil? && !reference_present?)]
    getter reference : String? = nil

    @[JSON::Field(ignore: true)]
    property? reference_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @flight : Stripe::IssuingTransactionPurchaseDetailsFlight? = nil,
      @fuel : Stripe::IssuingTransactionPurchaseDetailsFuel? = nil,
      @lodging : Stripe::IssuingTransactionPurchaseDetailsLodging? = nil,
      @receipt : Array(Stripe::IssuingTransactionReceiptData)? = nil,
      @reference : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model flight : Stripe::IssuingTransactionPurchaseDetailsFlight?
      # This is a model fuel : Stripe::IssuingTransactionPurchaseDetailsFuel?
      # This is a model lodging : Stripe::IssuingTransactionPurchaseDetailsLodging?
      # Container receipt array has values of Stripe::IssuingTransactionReceiptData
      if _reference = @reference
        if _reference.to_s.size > 5000
          invalid_properties.push("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _reference = @reference
        return false if _reference.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flight Object to be assigned
    def flight=(flight : Stripe::IssuingTransactionPurchaseDetailsFlight?)
      if flight.nil?
        return @flight = nil
      end
      @flight = flight
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fuel Object to be assigned
    def fuel=(fuel : Stripe::IssuingTransactionPurchaseDetailsFuel?)
      if fuel.nil?
        return @fuel = nil
      end
      @fuel = fuel
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lodging Object to be assigned
    def lodging=(lodging : Stripe::IssuingTransactionPurchaseDetailsLodging?)
      if lodging.nil?
        return @lodging = nil
      end
      @lodging = lodging
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt Object to be assigned
    def receipt=(receipt : Array(Stripe::IssuingTransactionReceiptData)?)
      if receipt.nil?
        return @receipt = nil
      end
      @receipt = receipt
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(reference : String?)
      if reference.nil?
        return @reference = nil
      end
      _reference = reference.not_nil!
      if _reference.to_s.size > 5000
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
