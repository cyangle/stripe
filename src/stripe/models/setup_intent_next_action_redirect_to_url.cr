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
  class SetupIntentNextActionRedirectToUrl
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
    @[JSON::Field(key: "return_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: return_url.nil? && !return_url_present?)]
    getter return_url : String? = nil
    MAX_LENGTH_FOR_RETURN_URL = 5000

    @[JSON::Field(ignore: true)]
    property? return_url_present : Bool = false

    # The URL you must redirect your customer to in order to authenticate.
    @[JSON::Field(key: "url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: url.nil? && !url_present?)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    @[JSON::Field(ignore: true)]
    property? url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @return_url : String? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_return_url = @return_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("return_url", _return_url.to_s.size, MAX_LENGTH_FOR_RETURN_URL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_url = @url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_return_url = @return_url).nil?
        return false if _return_url.to_s.size > MAX_LENGTH_FOR_RETURN_URL
      end

      unless (_url = @url).nil?
        return false if _url.to_s.size > MAX_LENGTH_FOR_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_url Object to be assigned
    def return_url=(return_url : String?)
      if return_url.nil?
        return @return_url = nil
      end
      _return_url = return_url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("return_url", _return_url.to_s.size, MAX_LENGTH_FOR_RETURN_URL)
      @return_url = _return_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(url : String?)
      if url.nil?
        return @url = nil
      end
      _url = url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
      @url = _url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@return_url, @return_url_present, @url, @url_present)
  end
end
