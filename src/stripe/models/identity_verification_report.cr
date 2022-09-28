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
  # A VerificationReport is the result of an attempt to collect and verify data from a user. The collection of verification checks performed is determined from the `type` and `options` parameters used. You can find the result of each verification check performed in the appropriate sub-resource: `document`, `id_number`, `selfie`.  Each VerificationReport contains a copy of any data collected by the user as well as reference IDs which can be used to access collected images through the [FileUpload](https://stripe.com/docs/api/files) API. To configure and create VerificationReports, use the [VerificationSession](https://stripe.com/docs/api/identity/verification_sessions) API.  Related guides: [Accessing verification results](https://stripe.com/docs/identity/verification-sessions#results).
  class IdentityVerificationReport
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["identity.verification_report"])

    @[JSON::Field(key: "options", type: Stripe::GelatoVerificationReportOptions?, default: nil, required: true, nullable: false, emit_null: false)]
    getter options : Stripe::GelatoVerificationReportOptions? = nil

    # Type of report.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["document", "id_number"])

    # Optional properties

    @[JSON::Field(key: "document", type: Stripe::GelatoDocumentReport?, default: nil, required: false, nullable: false, emit_null: false)]
    getter document : Stripe::GelatoDocumentReport? = nil

    @[JSON::Field(key: "id_number", type: Stripe::GelatoIdNumberReport?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number : Stripe::GelatoIdNumberReport? = nil

    @[JSON::Field(key: "selfie", type: Stripe::GelatoSelfieReport?, default: nil, required: false, nullable: false, emit_null: false)]
    getter selfie : Stripe::GelatoSelfieReport? = nil

    # ID of the VerificationSession that created this report.
    @[JSON::Field(key: "verification_session", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: verification_session.nil? && !verification_session_present?)]
    getter verification_session : String? = nil

    @[JSON::Field(ignore: true)]
    property? verification_session_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @options : Stripe::GelatoVerificationReportOptions? = nil,
      @_type : String? = nil,
      # Optional properties
      @document : Stripe::GelatoDocumentReport? = nil,
      @id_number : Stripe::GelatoIdNumberReport? = nil,
      @selfie : Stripe::GelatoSelfieReport? = nil,
      @verification_session : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"options\" is required and cannot be null") if @options.nil?
      if _options = @options
        if _options.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_options.list_invalid_properties_for("options"))
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _document = @document
        if _document.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_document.list_invalid_properties_for("document"))
        end
      end
      if _id_number = @id_number
        if _id_number.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_id_number.list_invalid_properties_for("id_number"))
        end
      end
      if _selfie = @selfie
        if _selfie.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_selfie.list_invalid_properties_for("selfie"))
        end
      end
      if _verification_session = @verification_session
        if _verification_session.to_s.size > 5000
          invalid_properties.push("invalid value for \"verification_session\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?

      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @options.nil?
      if _options = @options
        if _options.is_a?(OpenApi::Validatable)
          return false unless _options.valid?
        end
      end
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _document = @document
        if _document.is_a?(OpenApi::Validatable)
          return false unless _document.valid?
        end
      end
      if _id_number = @id_number
        if _id_number.is_a?(OpenApi::Validatable)
          return false unless _id_number.valid?
        end
      end
      if _selfie = @selfie
        if _selfie.is_a?(OpenApi::Validatable)
          return false unless _selfie.valid?
        end
      end
      if _verification_session = @verification_session
        return false if _verification_session.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] options Object to be assigned
    def options=(options : Stripe::GelatoVerificationReportOptions?)
      if options.nil?
        raise ArgumentError.new("\"options\" is required and cannot be null")
      end
      _options = options.not_nil!
      if _options.is_a?(OpenApi::Validatable)
        _options.validate
      end
      @options = _options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document Object to be assigned
    def document=(document : Stripe::GelatoDocumentReport?)
      if document.nil?
        return @document = nil
      end
      _document = document.not_nil!
      if _document.is_a?(OpenApi::Validatable)
        _document.validate
      end
      @document = _document
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_number Object to be assigned
    def id_number=(id_number : Stripe::GelatoIdNumberReport?)
      if id_number.nil?
        return @id_number = nil
      end
      _id_number = id_number.not_nil!
      if _id_number.is_a?(OpenApi::Validatable)
        _id_number.validate
      end
      @id_number = _id_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] selfie Object to be assigned
    def selfie=(selfie : Stripe::GelatoSelfieReport?)
      if selfie.nil?
        return @selfie = nil
      end
      _selfie = selfie.not_nil!
      if _selfie.is_a?(OpenApi::Validatable)
        _selfie.validate
      end
      @selfie = _selfie
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_session Object to be assigned
    def verification_session=(verification_session : String?)
      if verification_session.nil?
        return @verification_session = nil
      end
      _verification_session = verification_session.not_nil!
      if _verification_session.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"verification_session\", the character length must be smaller than or equal to 5000.")
      end

      @verification_session = _verification_session
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @id, @livemode, @object, @options, @_type, @document, @id_number, @selfie, @verification_session, @verification_session_present)
  end
end
