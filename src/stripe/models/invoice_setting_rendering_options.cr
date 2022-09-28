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
  class InvoiceSettingRenderingOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
    @[JSON::Field(key: "amount_tax_display", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount_tax_display.nil? && !amount_tax_display_present?)]
    getter amount_tax_display : String? = nil

    @[JSON::Field(ignore: true)]
    property? amount_tax_display_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount_tax_display : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _amount_tax_display = @amount_tax_display
        if _amount_tax_display.to_s.size > 5000
          invalid_properties.push("invalid value for \"amount_tax_display\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _amount_tax_display = @amount_tax_display
        return false if _amount_tax_display.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_tax_display Object to be assigned
    def amount_tax_display=(amount_tax_display : String?)
      if amount_tax_display.nil?
        return @amount_tax_display = nil
      end
      _amount_tax_display = amount_tax_display.not_nil!
      if _amount_tax_display.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"amount_tax_display\", the character length must be smaller than or equal to 5000.")
      end

      @amount_tax_display = _amount_tax_display
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_tax_display, @amount_tax_display_present)
  end
end
