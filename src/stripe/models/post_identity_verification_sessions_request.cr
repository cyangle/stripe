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
  class PostIdentityVerificationSessionsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The type of [verification check](https://stripe.com/docs/identity/verification-checks) to be performed.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [document, id_number]."
    VALID_VALUES_FOR__TYPE  = String.static_array("document", "id_number")

    # End of Required Properties

    # Optional Properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "options", type: Stripe::SessionOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter options : Stripe::SessionOptionsParam? = nil

    # The URL that the user will be redirected to upon completing the verification flow.
    @[JSON::Field(key: "return_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter return_url : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil,
      @options : Stripe::SessionOptionsParam? = nil,
      @return_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_options = @options).nil?
        invalid_properties.concat(_options.list_invalid_properties_for("options")) if _options.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_options = @options).nil?
        return false if _options.is_a?(OpenApi::Validatable) && !_options.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] options Object to be assigned
    def options=(options : Stripe::SessionOptionsParam?)
      if options.nil?
        return @options = nil
      end
      _options = options.not_nil!
      _options.validate if _options.is_a?(OpenApi::Validatable)
      @options = _options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_url Object to be assigned
    def return_url=(return_url : String?)
      if return_url.nil?
        return @return_url = nil
      end
      _return_url = return_url.not_nil!
      @return_url = _return_url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @expand, @metadata, @options, @return_url)
  end
end
