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
  class PaymentIntentNextActionWechatPayDisplayQrCode
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The data being used to generate QR code
    @[JSON::Field(key: "data", type: String)]
    getter data : String

    # The base64 image data for a pre-generated QR code
    @[JSON::Field(key: "image_data_url", type: String)]
    getter image_data_url : String

    # The image_url_png string used to render QR code
    @[JSON::Field(key: "image_url_png", type: String)]
    getter image_url_png : String

    # The image_url_svg string used to render QR code
    @[JSON::Field(key: "image_url_svg", type: String)]
    getter image_url_svg : String

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @data : String,
      @image_data_url : String,
      @image_url_png : String,
      @image_url_svg : String
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @data.to_s.size > 5000
        invalid_properties.push("invalid value for \"data\", the character length must be smaller than or equal to 5000.")
      end

      if @image_data_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"image_data_url\", the character length must be smaller than or equal to 5000.")
      end

      if @image_url_png.to_s.size > 5000
        invalid_properties.push("invalid value for \"image_url_png\", the character length must be smaller than or equal to 5000.")
      end

      if @image_url_svg.to_s.size > 5000
        invalid_properties.push("invalid value for \"image_url_svg\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @data.to_s.size > 5000
      return false if @image_data_url.to_s.size > 5000
      return false if @image_url_png.to_s.size > 5000
      return false if @image_url_svg.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] data Value to be assigned
    def data=(data)
      if data.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"data\", the character length must be smaller than or equal to 5000.")
      end

      @data = data
    end

    # Custom attribute writer method with validation
    # @param [Object] image_data_url Value to be assigned
    def image_data_url=(image_data_url)
      if image_data_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"image_data_url\", the character length must be smaller than or equal to 5000.")
      end

      @image_data_url = image_data_url
    end

    # Custom attribute writer method with validation
    # @param [Object] image_url_png Value to be assigned
    def image_url_png=(image_url_png)
      if image_url_png.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"image_url_png\", the character length must be smaller than or equal to 5000.")
      end

      @image_url_png = image_url_png
    end

    # Custom attribute writer method with validation
    # @param [Object] image_url_svg Value to be assigned
    def image_url_svg=(image_url_svg)
      if image_url_svg.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"image_url_svg\", the character length must be smaller than or equal to 5000.")
      end

      @image_url_svg = image_url_svg
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
    def_equals_and_hash(@data, @image_data_url, @image_url_png, @image_url_svg)
  end
end
