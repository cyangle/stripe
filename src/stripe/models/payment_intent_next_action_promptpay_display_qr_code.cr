#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class PaymentIntentNextActionPromptpayDisplayQrCode
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The raw data string used to generate QR code, it should be used together with QR code library.
    @[JSON::Field(key: "data", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter data : String? = nil
    MAX_LENGTH_FOR_DATA = 5000

    # The URL to the hosted PromptPay instructions page, which allows customers to view the PromptPay QR code.
    @[JSON::Field(key: "hosted_instructions_url", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter hosted_instructions_url : String? = nil
    MAX_LENGTH_FOR_HOSTED_INSTRUCTIONS_URL = 5000

    # The PNG path used to render the QR code, can be used as the source in an HTML img tag
    @[JSON::Field(key: "image_url_png", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter image_url_png : String? = nil
    MAX_LENGTH_FOR_IMAGE_URL_PNG = 5000

    # The SVG path used to render the QR code, can be used as the source in an HTML img tag
    @[JSON::Field(key: "image_url_svg", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter image_url_svg : String? = nil
    MAX_LENGTH_FOR_IMAGE_URL_SVG = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @data : String? = nil,
      @hosted_instructions_url : String? = nil,
      @image_url_png : String? = nil,
      @image_url_svg : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"data\" is required and cannot be null") if @data.nil?

      unless (_data = @data).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("data", _data.to_s.size, MAX_LENGTH_FOR_DATA)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"hosted_instructions_url\" is required and cannot be null") if @hosted_instructions_url.nil?

      unless (_hosted_instructions_url = @hosted_instructions_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("hosted_instructions_url", _hosted_instructions_url.to_s.size, MAX_LENGTH_FOR_HOSTED_INSTRUCTIONS_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"image_url_png\" is required and cannot be null") if @image_url_png.nil?

      unless (_image_url_png = @image_url_png).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("image_url_png", _image_url_png.to_s.size, MAX_LENGTH_FOR_IMAGE_URL_PNG)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"image_url_svg\" is required and cannot be null") if @image_url_svg.nil?

      unless (_image_url_svg = @image_url_svg).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("image_url_svg", _image_url_svg.to_s.size, MAX_LENGTH_FOR_IMAGE_URL_SVG)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @data.nil?
      unless (_data = @data).nil?
        return false if _data.to_s.size > MAX_LENGTH_FOR_DATA
      end

      return false if @hosted_instructions_url.nil?
      unless (_hosted_instructions_url = @hosted_instructions_url).nil?
        return false if _hosted_instructions_url.to_s.size > MAX_LENGTH_FOR_HOSTED_INSTRUCTIONS_URL
      end

      return false if @image_url_png.nil?
      unless (_image_url_png = @image_url_png).nil?
        return false if _image_url_png.to_s.size > MAX_LENGTH_FOR_IMAGE_URL_PNG
      end

      return false if @image_url_svg.nil?
      unless (_image_url_svg = @image_url_svg).nil?
        return false if _image_url_svg.to_s.size > MAX_LENGTH_FOR_IMAGE_URL_SVG
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data Object to be assigned
    def data=(new_value : String?)
      raise ArgumentError.new("\"data\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("data", new_value.to_s.size, MAX_LENGTH_FOR_DATA)
      end

      @data = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hosted_instructions_url Object to be assigned
    def hosted_instructions_url=(new_value : String?)
      raise ArgumentError.new("\"hosted_instructions_url\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("hosted_instructions_url", new_value.to_s.size, MAX_LENGTH_FOR_HOSTED_INSTRUCTIONS_URL)
      end

      @hosted_instructions_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] image_url_png Object to be assigned
    def image_url_png=(new_value : String?)
      raise ArgumentError.new("\"image_url_png\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("image_url_png", new_value.to_s.size, MAX_LENGTH_FOR_IMAGE_URL_PNG)
      end

      @image_url_png = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] image_url_svg Object to be assigned
    def image_url_svg=(new_value : String?)
      raise ArgumentError.new("\"image_url_svg\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("image_url_svg", new_value.to_s.size, MAX_LENGTH_FOR_IMAGE_URL_SVG)
      end

      @image_url_svg = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@data, @hosted_instructions_url, @image_url_png, @image_url_svg)
  end
end
