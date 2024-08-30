#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./shipping_rate"
require "./shipping_rate_delivery_estimate"
require "./shipping_rate_fixed_amount"
require "./shipping_rate_tax_code"

module Stripe
  # The ID of the ShippingRate for this order.
  class PaymentPagesCheckoutSessionShippingCostShippingRate
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Whether the shipping rate can be used for new purchases. Defaults to `true`.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property active : Bool? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    @[JSON::Field(key: "delivery_estimate", type: Stripe::ShippingRateDeliveryEstimate?, default: nil, required: true, nullable: false, emit_null: false)]
    property delivery_estimate : Stripe::ShippingRateDeliveryEstimate? = nil

    # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
    @[JSON::Field(key: "display_name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property display_name : String? = nil
    MAX_LENGTH_FOR_DISPLAY_NAME = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    property metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [shipping_rate]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("shipping_rate")

    # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
    @[JSON::Field(key: "tax_behavior", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property tax_behavior : String? = nil
    ERROR_MESSAGE_FOR_TAX_BEHAVIOR = "invalid value for \"tax_behavior\", must be one of [exclusive, inclusive, unspecified]."
    VALID_VALUES_FOR_TAX_BEHAVIOR  = String.static_array("exclusive", "inclusive", "unspecified")

    @[JSON::Field(key: "tax_code", type: Stripe::ShippingRateTaxCode?, default: nil, required: true, nullable: true, emit_null: true)]
    property tax_code : Stripe::ShippingRateTaxCode? = nil

    # The type of calculation to use on the shipping rate.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [fixed_amount]."
    VALID_VALUES_FOR__TYPE  = String.static_array("fixed_amount")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "fixed_amount", type: Stripe::ShippingRateFixedAmount?, default: nil, required: false, nullable: false, emit_null: false)]
    property fixed_amount : Stripe::ShippingRateFixedAmount? = nil

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::ShippingRate,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool? = nil,
      @created : Int64? = nil,
      @delivery_estimate : Stripe::ShippingRateDeliveryEstimate? = nil,
      @display_name : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @tax_behavior : String? = nil,
      @tax_code : Stripe::ShippingRateTaxCode? = nil,
      @_type : String? = nil,
      # Optional properties
      @fixed_amount : Stripe::ShippingRateFixedAmount? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @created, @delivery_estimate, @display_name, @id, @livemode, @metadata, @object, @tax_behavior, @tax_code, @_type, @fixed_amount)
  end
end
