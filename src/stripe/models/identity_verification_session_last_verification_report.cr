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
  # ID of the most recent VerificationReport. [Learn more about accessing detailed verification results.](https://stripe.com/docs/identity/verification-sessions#results)
  @[JSON::Serializable::Options(emit_nulls: true)]
  class IdentityVerificationSessionLastVerificationReport
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?)]
    property created : Int64?

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?)]
    getter id : String?

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?)]
    property livemode : Bool?

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?)]
    getter object : String?

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["identity.verification_report"])

    @[JSON::Field(key: "options", type: GelatoVerificationReportOptions?)]
    property options : GelatoVerificationReportOptions?

    # Type of report.
    @[JSON::Field(key: "type", type: String?)]
    getter _type : String?

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["document", "id_number"])

    # Optional properties

    @[JSON::Field(key: "document", type: GelatoDocumentReport?, presence: true, ignore_serialize: document.nil? && !document_present?)]
    property document : GelatoDocumentReport?

    @[JSON::Field(ignore: true)]
    property? document_present : Bool = false

    @[JSON::Field(key: "id_number", type: GelatoIdNumberReport?, presence: true, ignore_serialize: id_number.nil? && !id_number_present?)]
    property id_number : GelatoIdNumberReport?

    @[JSON::Field(ignore: true)]
    property? id_number_present : Bool = false

    @[JSON::Field(key: "selfie", type: GelatoSelfieReport?, presence: true, ignore_serialize: selfie.nil? && !selfie_present?)]
    property selfie : GelatoSelfieReport?

    @[JSON::Field(ignore: true)]
    property? selfie_present : Bool = false

    # ID of the VerificationSession that created this report.
    @[JSON::Field(key: "verification_session", type: String?, presence: true, ignore_serialize: verification_session.nil? && !verification_session_present?)]
    getter verification_session : String?

    @[JSON::Field(ignore: true)]
    property? verification_session_present : Bool = false

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::IdentityVerificationReport,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @options : GelatoVerificationReportOptions? = nil,
      @_type : String? = nil,
      # Optional properties
      @document : GelatoDocumentReport? = nil,
      @id_number : GelatoIdNumberReport? = nil,
      @selfie : GelatoSelfieReport? = nil,
      @verification_session : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      if !@verification_session.nil? && @verification_session.to_s.size > 5000
        invalid_properties.push("invalid value for \"verification_session\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false if !@verification_session.nil? && @verification_session.to_s.size > 5000

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

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method with validation
    # @param [Object] verification_session Value to be assigned
    def verification_session=(verification_session)
      if !verification_session.nil? && verification_session.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"verification_session\", the character length must be smaller than or equal to 5000.")
      end

      @verification_session = verification_session
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
    def_equals_and_hash(@created, @id, @livemode, @object, @options, @_type, @document, @id_number, @selfie, @verification_session)
  end
end