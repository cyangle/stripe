#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./cancellation_details_param"

module Stripe
  class DeleteSubscriptionsSubscriptionExposedIdRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "cancellation_details", type: Stripe::CancellationDetailsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_details : Stripe::CancellationDetailsParam? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Will generate a final invoice that invoices for any un-invoiced metered usage and new/pending proration invoice items. Defaults to `true`.
    @[JSON::Field(key: "invoice_now", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_now : Bool? = nil

    # Will generate a proration invoice item that credits remaining unused time until the subscription period end. Defaults to `false`.
    @[JSON::Field(key: "prorate", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter prorate : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @cancellation_details : Stripe::CancellationDetailsParam? = nil,
      @expand : Array(String)? = nil,
      @invoice_now : Bool? = nil,
      @prorate : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_cancellation_details = @cancellation_details).nil?
        invalid_properties.concat(_cancellation_details.list_invalid_properties_for("cancellation_details")) if _cancellation_details.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_cancellation_details = @cancellation_details).nil?
        return false if _cancellation_details.is_a?(OpenApi::Validatable) && !_cancellation_details.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_details Object to be assigned
    def cancellation_details=(new_value : Stripe::CancellationDetailsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @cancellation_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_now Object to be assigned
    def invoice_now=(new_value : Bool?)
      @invoice_now = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prorate Object to be assigned
    def prorate=(new_value : Bool?)
      @prorate = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@cancellation_details, @expand, @invoice_now, @prorate)
  end
end
