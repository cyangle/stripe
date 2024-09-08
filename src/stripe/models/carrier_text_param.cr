#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./carrier_text_param_footer_body"
require "./carrier_text_param_footer_title"
require "./carrier_text_param_header_body"
require "./carrier_text_param_header_title"

module Stripe
  class CarrierTextParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "footer_body", type: Stripe::CarrierTextParamFooterBody?, default: nil, required: false, nullable: false, emit_null: false)]
    getter footer_body : Stripe::CarrierTextParamFooterBody? = nil

    @[JSON::Field(key: "footer_title", type: Stripe::CarrierTextParamFooterTitle?, default: nil, required: false, nullable: false, emit_null: false)]
    getter footer_title : Stripe::CarrierTextParamFooterTitle? = nil

    @[JSON::Field(key: "header_body", type: Stripe::CarrierTextParamHeaderBody?, default: nil, required: false, nullable: false, emit_null: false)]
    getter header_body : Stripe::CarrierTextParamHeaderBody? = nil

    @[JSON::Field(key: "header_title", type: Stripe::CarrierTextParamHeaderTitle?, default: nil, required: false, nullable: false, emit_null: false)]
    getter header_title : Stripe::CarrierTextParamHeaderTitle? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @footer_body : Stripe::CarrierTextParamFooterBody? = nil,
      @footer_title : Stripe::CarrierTextParamFooterTitle? = nil,
      @header_body : Stripe::CarrierTextParamHeaderBody? = nil,
      @header_title : Stripe::CarrierTextParamHeaderTitle? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_footer_body = @footer_body).nil?
        invalid_properties.concat(_footer_body.list_invalid_properties_for("footer_body")) if _footer_body.is_a?(OpenApi::Validatable)
      end
      unless (_footer_title = @footer_title).nil?
        invalid_properties.concat(_footer_title.list_invalid_properties_for("footer_title")) if _footer_title.is_a?(OpenApi::Validatable)
      end
      unless (_header_body = @header_body).nil?
        invalid_properties.concat(_header_body.list_invalid_properties_for("header_body")) if _header_body.is_a?(OpenApi::Validatable)
      end
      unless (_header_title = @header_title).nil?
        invalid_properties.concat(_header_title.list_invalid_properties_for("header_title")) if _header_title.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_footer_body = @footer_body).nil?
        return false if _footer_body.is_a?(OpenApi::Validatable) && !_footer_body.valid?
      end

      unless (_footer_title = @footer_title).nil?
        return false if _footer_title.is_a?(OpenApi::Validatable) && !_footer_title.valid?
      end

      unless (_header_body = @header_body).nil?
        return false if _header_body.is_a?(OpenApi::Validatable) && !_header_body.valid?
      end

      unless (_header_title = @header_title).nil?
        return false if _header_title.is_a?(OpenApi::Validatable) && !_header_title.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] footer_body Object to be assigned
    def footer_body=(new_value : Stripe::CarrierTextParamFooterBody?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @footer_body = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] footer_title Object to be assigned
    def footer_title=(new_value : Stripe::CarrierTextParamFooterTitle?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @footer_title = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] header_body Object to be assigned
    def header_body=(new_value : Stripe::CarrierTextParamHeaderBody?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @header_body = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] header_title Object to be assigned
    def header_title=(new_value : Stripe::CarrierTextParamHeaderTitle?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @header_title = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@footer_body, @footer_title, @header_body, @header_title)
  end
end