#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./identity_verification_session_last_error"
require "./identity_verification_session_last_verification_report"
require "./identity_verification_session_options"
require "./identity_verification_session_provided_details"
require "./identity_verification_session_redaction"
require "./identity_verification_session_verified_outputs"

module Stripe
  # A VerificationSession guides you through the process of collecting and verifying the identities of your users. It contains details about the type of verification, such as what [verification check](/docs/identity/verification-checks) to perform. Only create one VerificationSession for each verification in your system.  A VerificationSession transitions through [multiple statuses](/docs/identity/how-sessions-work) throughout its lifetime as it progresses through the verification flow. The VerificationSession contains the user's verified data after verification checks are complete.  Related guide: [The Verification Sessions API](https://stripe.com/docs/identity/verification-sessions)
  class IdentityVerificationSession
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
    @[JSON::Field(key: "client_reference_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter client_reference_id : String? = nil
    MAX_LENGTH_FOR_CLIENT_REFERENCE_ID = 5000

    # The short-lived client secret used by Stripe.js to [show a verification modal](https://stripe.com/docs/js/identity/modal) inside your app. This client secret expires after 24 hours and can only be used once. Don’t store it, log it, embed it in a URL, or expose it to anyone other than the user. Make sure that you have TLS enabled on any page that includes the client secret. Refer to our docs on [passing the client secret to the frontend](https://stripe.com/docs/identity/verification-sessions#client-secret) to learn more.
    @[JSON::Field(key: "client_secret", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter client_secret : String? = nil
    MAX_LENGTH_FOR_CLIENT_SECRET = 5000

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "last_error", type: Stripe::IdentityVerificationSessionLastError?, default: nil, required: true, nullable: true, emit_null: true)]
    getter last_error : Stripe::IdentityVerificationSessionLastError? = nil

    @[JSON::Field(key: "last_verification_report", type: Stripe::IdentityVerificationSessionLastVerificationReport?, default: nil, required: true, nullable: true, emit_null: true)]
    getter last_verification_report : Stripe::IdentityVerificationSessionLastVerificationReport? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [identity.verification_session]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("identity.verification_session")

    @[JSON::Field(key: "options", type: Stripe::IdentityVerificationSessionOptions?, default: nil, required: true, nullable: true, emit_null: true)]
    getter options : Stripe::IdentityVerificationSessionOptions? = nil

    @[JSON::Field(key: "redaction", type: Stripe::IdentityVerificationSessionRedaction?, default: nil, required: true, nullable: true, emit_null: true)]
    getter redaction : Stripe::IdentityVerificationSessionRedaction? = nil

    # Token referencing a Customer resource.
    @[JSON::Field(key: "related_customer", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter related_customer : String? = nil
    MAX_LENGTH_FOR_RELATED_CUSTOMER = 5000

    # Status of this VerificationSession. [Learn more about the lifecycle of sessions](https://stripe.com/docs/identity/how-sessions-work).
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [canceled, processing, requires_input, verified]."
    VALID_VALUES_FOR_STATUS  = String.static_array("canceled", "processing", "requires_input", "verified")

    # The type of [verification check](https://stripe.com/docs/identity/verification-checks) to be performed.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [document, id_number, verification_flow]."
    VALID_VALUES_FOR__TYPE  = String.static_array("document", "id_number", "verification_flow")

    # The short-lived URL that you use to redirect a user to Stripe to submit their identity information. This URL expires after 48 hours and can only be used once. Don’t store it, log it, send it in emails or expose it to anyone other than the user. Refer to our docs on [verifying identity documents](https://stripe.com/docs/identity/verify-identity-documents?platform=web&type=redirect) to learn how to redirect users to Stripe.
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "provided_details", type: Stripe::IdentityVerificationSessionProvidedDetails?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: provided_details.nil? && !provided_details_present?)]
    getter provided_details : Stripe::IdentityVerificationSessionProvidedDetails? = nil

    @[JSON::Field(ignore: true)]
    property? provided_details_present : Bool = false

    # The configuration token of a Verification Flow from the dashboard.
    @[JSON::Field(key: "verification_flow", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification_flow : String? = nil
    MAX_LENGTH_FOR_VERIFICATION_FLOW = 5000

    @[JSON::Field(key: "verified_outputs", type: Stripe::IdentityVerificationSessionVerifiedOutputs?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: verified_outputs.nil? && !verified_outputs_present?)]
    getter verified_outputs : Stripe::IdentityVerificationSessionVerifiedOutputs? = nil

    @[JSON::Field(ignore: true)]
    property? verified_outputs_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @client_reference_id : String? = nil,
      @client_secret : String? = nil,
      @created : Int64? = nil,
      @id : String? = nil,
      @last_error : Stripe::IdentityVerificationSessionLastError? = nil,
      @last_verification_report : Stripe::IdentityVerificationSessionLastVerificationReport? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @options : Stripe::IdentityVerificationSessionOptions? = nil,
      @redaction : Stripe::IdentityVerificationSessionRedaction? = nil,
      @related_customer : String? = nil,
      @status : String? = nil,
      @_type : String? = nil,
      @url : String? = nil,
      # Optional properties
      @provided_details : Stripe::IdentityVerificationSessionProvidedDetails? = nil,
      @verification_flow : String? = nil,
      @verified_outputs : Stripe::IdentityVerificationSessionVerifiedOutputs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_client_reference_id = @client_reference_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("client_reference_id", _client_reference_id.to_s.size, MAX_LENGTH_FOR_CLIENT_REFERENCE_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_client_secret = @client_secret).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("client_secret", _client_secret.to_s.size, MAX_LENGTH_FOR_CLIENT_SECRET)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_last_error = @last_error).nil?
        invalid_properties.concat(_last_error.list_invalid_properties_for("last_error")) if _last_error.is_a?(OpenApi::Validatable)
      end
      unless (_last_verification_report = @last_verification_report).nil?
        invalid_properties.concat(_last_verification_report.list_invalid_properties_for("last_verification_report")) if _last_verification_report.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      unless (_options = @options).nil?
        invalid_properties.concat(_options.list_invalid_properties_for("options")) if _options.is_a?(OpenApi::Validatable)
      end
      unless (_redaction = @redaction).nil?
        invalid_properties.concat(_redaction.list_invalid_properties_for("redaction")) if _redaction.is_a?(OpenApi::Validatable)
      end
      unless (_related_customer = @related_customer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("related_customer", _related_customer.to_s.size, MAX_LENGTH_FOR_RELATED_CUSTOMER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_url = @url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_provided_details = @provided_details).nil?
        invalid_properties.concat(_provided_details.list_invalid_properties_for("provided_details")) if _provided_details.is_a?(OpenApi::Validatable)
      end
      unless (_verification_flow = @verification_flow).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("verification_flow", _verification_flow.to_s.size, MAX_LENGTH_FOR_VERIFICATION_FLOW)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_verified_outputs = @verified_outputs).nil?
        invalid_properties.concat(_verified_outputs.list_invalid_properties_for("verified_outputs")) if _verified_outputs.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_client_reference_id = @client_reference_id).nil?
        return false if _client_reference_id.to_s.size > MAX_LENGTH_FOR_CLIENT_REFERENCE_ID
      end

      unless (_client_secret = @client_secret).nil?
        return false if _client_secret.to_s.size > MAX_LENGTH_FOR_CLIENT_SECRET
      end

      return false if @created.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      unless (_last_error = @last_error).nil?
        return false if _last_error.is_a?(OpenApi::Validatable) && !_last_error.valid?
      end

      unless (_last_verification_report = @last_verification_report).nil?
        return false if _last_verification_report.is_a?(OpenApi::Validatable) && !_last_verification_report.valid?
      end

      return false if @livemode.nil?

      return false if @metadata.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      unless (_options = @options).nil?
        return false if _options.is_a?(OpenApi::Validatable) && !_options.valid?
      end

      unless (_redaction = @redaction).nil?
        return false if _redaction.is_a?(OpenApi::Validatable) && !_redaction.valid?
      end

      unless (_related_customer = @related_customer).nil?
        return false if _related_customer.to_s.size > MAX_LENGTH_FOR_RELATED_CUSTOMER
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_url = @url).nil?
        return false if _url.to_s.size > MAX_LENGTH_FOR_URL
      end

      unless (_provided_details = @provided_details).nil?
        return false if _provided_details.is_a?(OpenApi::Validatable) && !_provided_details.valid?
      end

      unless (_verification_flow = @verification_flow).nil?
        return false if _verification_flow.to_s.size > MAX_LENGTH_FOR_VERIFICATION_FLOW
      end

      unless (_verified_outputs = @verified_outputs).nil?
        return false if _verified_outputs.is_a?(OpenApi::Validatable) && !_verified_outputs.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_reference_id Object to be assigned
    def client_reference_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("client_reference_id", new_value.to_s.size, MAX_LENGTH_FOR_CLIENT_REFERENCE_ID)
      end

      @client_reference_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_secret Object to be assigned
    def client_secret=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("client_secret", new_value.to_s.size, MAX_LENGTH_FOR_CLIENT_SECRET)
      end

      @client_secret = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_error Object to be assigned
    def last_error=(new_value : Stripe::IdentityVerificationSessionLastError?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @last_error = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_verification_report Object to be assigned
    def last_verification_report=(new_value : Stripe::IdentityVerificationSessionLastVerificationReport?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @last_verification_report = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      raise ArgumentError.new("\"metadata\" is required and cannot be null") if new_value.nil?

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] options Object to be assigned
    def options=(new_value : Stripe::IdentityVerificationSessionOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @options = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] redaction Object to be assigned
    def redaction=(new_value : Stripe::IdentityVerificationSessionRedaction?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @redaction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] related_customer Object to be assigned
    def related_customer=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("related_customer", new_value.to_s.size, MAX_LENGTH_FOR_RELATED_CUSTOMER)
      end

      @related_customer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("url", new_value.to_s.size, MAX_LENGTH_FOR_URL)
      end

      @url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] provided_details Object to be assigned
    def provided_details=(new_value : Stripe::IdentityVerificationSessionProvidedDetails?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @provided_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_flow Object to be assigned
    def verification_flow=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("verification_flow", new_value.to_s.size, MAX_LENGTH_FOR_VERIFICATION_FLOW)
      end

      @verification_flow = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verified_outputs Object to be assigned
    def verified_outputs=(new_value : Stripe::IdentityVerificationSessionVerifiedOutputs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @verified_outputs = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@client_reference_id, @client_secret, @created, @id, @last_error, @last_verification_report, @livemode, @metadata, @object, @options, @redaction, @related_customer, @status, @_type, @url, @provided_details, @provided_details_present, @verification_flow, @verified_outputs, @verified_outputs_present)
  end
end
