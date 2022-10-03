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
  class PaymentIntentNextActionPaynowDisplayQrCode
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The raw data string used to generate QR code, it should be used together with QR code library.
    @[JSON::Field(key: "data", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter data : String? = nil
    MAX_LENGTH_FOR_DATA = 5000

    # The image_url_png string used to render QR code
    @[JSON::Field(key: "image_url_png", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter image_url_png : String? = nil
    MAX_LENGTH_FOR_IMAGE_URL_PNG = 5000

    # The image_url_svg string used to render QR code
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
    def data=(data : String?)
      if data.nil?
        raise ArgumentError.new("\"data\" is required and cannot be null")
      end
      _data = data.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("data", _data.to_s.size, MAX_LENGTH_FOR_DATA)
      @data = _data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] image_url_png Object to be assigned
    def image_url_png=(image_url_png : String?)
      if image_url_png.nil?
        raise ArgumentError.new("\"image_url_png\" is required and cannot be null")
      end
      _image_url_png = image_url_png.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("image_url_png", _image_url_png.to_s.size, MAX_LENGTH_FOR_IMAGE_URL_PNG)
      @image_url_png = _image_url_png
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] image_url_svg Object to be assigned
    def image_url_svg=(image_url_svg : String?)
      if image_url_svg.nil?
        raise ArgumentError.new("\"image_url_svg\" is required and cannot be null")
      end
      _image_url_svg = image_url_svg.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("image_url_svg", _image_url_svg.to_s.size, MAX_LENGTH_FOR_IMAGE_URL_SVG)
      @image_url_svg = _image_url_svg
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@data, @image_url_png, @image_url_svg)
  end
end
