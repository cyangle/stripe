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
  class InvoicesLineItemsProrationDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "credited_items", type: Stripe::InvoicesLineItemsProrationDetailsCreditedItems?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: credited_items.nil? && !credited_items_present?)]
    getter credited_items : Stripe::InvoicesLineItemsProrationDetailsCreditedItems? = nil

    @[JSON::Field(ignore: true)]
    property? credited_items_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @credited_items : Stripe::InvoicesLineItemsProrationDetailsCreditedItems? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _credited_items = @credited_items
        invalid_properties.concat(_credited_items.list_invalid_properties_for("credited_items")) if _credited_items.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _credited_items = @credited_items
        return false if _credited_items.is_a?(OpenApi::Validatable) && !_credited_items.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credited_items Object to be assigned
    def credited_items=(credited_items : Stripe::InvoicesLineItemsProrationDetailsCreditedItems?)
      if credited_items.nil?
        return @credited_items = nil
      end
      _credited_items = credited_items.not_nil!
      _credited_items.validate if _credited_items.is_a?(OpenApi::Validatable)
      @credited_items = _credited_items
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@credited_items, @credited_items_present)
  end
end
