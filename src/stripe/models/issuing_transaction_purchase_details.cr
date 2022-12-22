#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
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
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

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
    MAX_LENGTH_FOR_REFERENCE = 5000

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_flight = @flight).nil?
        invalid_properties.concat(_flight.list_invalid_properties_for("flight")) if _flight.is_a?(OpenApi::Validatable)
      end
      unless (_fuel = @fuel).nil?
        invalid_properties.concat(_fuel.list_invalid_properties_for("fuel")) if _fuel.is_a?(OpenApi::Validatable)
      end
      unless (_lodging = @lodging).nil?
        invalid_properties.concat(_lodging.list_invalid_properties_for("lodging")) if _lodging.is_a?(OpenApi::Validatable)
      end
      unless (_receipt = @receipt).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "receipt", container: _receipt)) if _receipt.is_a?(Array)
      end
      unless (_reference = @reference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference", _reference.to_s.size, MAX_LENGTH_FOR_REFERENCE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_flight = @flight).nil?
        return false if _flight.is_a?(OpenApi::Validatable) && !_flight.valid?
      end

      unless (_fuel = @fuel).nil?
        return false if _fuel.is_a?(OpenApi::Validatable) && !_fuel.valid?
      end

      unless (_lodging = @lodging).nil?
        return false if _lodging.is_a?(OpenApi::Validatable) && !_lodging.valid?
      end

      unless (_receipt = @receipt).nil?
        return false if _receipt.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _receipt)
      end

      unless (_reference = @reference).nil?
        return false if _reference.to_s.size > MAX_LENGTH_FOR_REFERENCE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flight Object to be assigned
    def flight=(flight : Stripe::IssuingTransactionPurchaseDetailsFlight?)
      if flight.nil?
        return @flight = nil
      end
      _flight = flight.not_nil!
      _flight.validate if _flight.is_a?(OpenApi::Validatable)
      @flight = _flight
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fuel Object to be assigned
    def fuel=(fuel : Stripe::IssuingTransactionPurchaseDetailsFuel?)
      if fuel.nil?
        return @fuel = nil
      end
      _fuel = fuel.not_nil!
      _fuel.validate if _fuel.is_a?(OpenApi::Validatable)
      @fuel = _fuel
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lodging Object to be assigned
    def lodging=(lodging : Stripe::IssuingTransactionPurchaseDetailsLodging?)
      if lodging.nil?
        return @lodging = nil
      end
      _lodging = lodging.not_nil!
      _lodging.validate if _lodging.is_a?(OpenApi::Validatable)
      @lodging = _lodging
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt Object to be assigned
    def receipt=(receipt : Array(Stripe::IssuingTransactionReceiptData)?)
      if receipt.nil?
        return @receipt = nil
      end
      _receipt = receipt.not_nil!
      OpenApi::ContainerValidator.validate(container: _receipt) if _receipt.is_a?(Array)
      @receipt = _receipt
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(reference : String?)
      if reference.nil?
        return @reference = nil
      end
      _reference = reference.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("reference", _reference.to_s.size, MAX_LENGTH_FOR_REFERENCE)
      @reference = _reference
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@flight, @flight_present, @fuel, @fuel_present, @lodging, @lodging_present, @receipt, @receipt_present, @reference, @reference_present)
  end
end
