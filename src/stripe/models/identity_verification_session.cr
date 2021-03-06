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
  # A VerificationSession guides you through the process of collecting and verifying the identities of your users. It contains details about the type of verification, such as what [verification check](/docs/identity/verification-checks) to perform. Only create one VerificationSession for each verification in your system.  A VerificationSession transitions through [multiple statuses](/docs/identity/how-sessions-work) throughout its lifetime as it progresses through the verification flow. The VerificationSession contains the user’s verified data after verification checks are complete.  Related guide: [The Verification Sessions API](https://stripe.com/docs/identity/verification-sessions)
  @[JSON::Serializable::Options(emit_nulls: true)]
  class IdentityVerificationSession
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["identity.verification_session"])

    @[JSON::Field(key: "options", type: GelatoVerificationSessionOptions)]
    property options : GelatoVerificationSessionOptions

    # Status of this VerificationSession. [Learn more about the lifecycle of sessions](https://stripe.com/docs/identity/how-sessions-work).
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["canceled", "processing", "requires_input", "verified"])

    # The type of [verification check](https://stripe.com/docs/identity/verification-checks) to be performed.
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["document", "id_number"])

    # Optional properties

    # The short-lived client secret used by Stripe.js to [show a verification modal](https://stripe.com/docs/js/identity/modal) inside your app. This client secret expires after 24 hours and can only be used once. Don’t store it, log it, embed it in a URL, or expose it to anyone other than the user. Make sure that you have TLS enabled on any page that includes the client secret. Refer to our docs on [passing the client secret to the frontend](https://stripe.com/docs/identity/verification-sessions#client-secret) to learn more.
    @[JSON::Field(key: "client_secret", type: String?, presence: true, ignore_serialize: client_secret.nil? && !client_secret_present?)]
    getter client_secret : String?

    @[JSON::Field(ignore: true)]
    property? client_secret_present : Bool = false

    @[JSON::Field(key: "last_error", type: IdentityVerificationSessionLastError?, presence: true, ignore_serialize: last_error.nil? && !last_error_present?)]
    property last_error : IdentityVerificationSessionLastError?

    @[JSON::Field(ignore: true)]
    property? last_error_present : Bool = false

    @[JSON::Field(key: "last_verification_report", type: IdentityVerificationSessionLastVerificationReport?, presence: true, ignore_serialize: last_verification_report.nil? && !last_verification_report_present?)]
    property last_verification_report : IdentityVerificationSessionLastVerificationReport?

    @[JSON::Field(ignore: true)]
    property? last_verification_report_present : Bool = false

    @[JSON::Field(key: "redaction", type: IdentityVerificationSessionRedaction?, presence: true, ignore_serialize: redaction.nil? && !redaction_present?)]
    property redaction : IdentityVerificationSessionRedaction?

    @[JSON::Field(ignore: true)]
    property? redaction_present : Bool = false

    # The short-lived URL that you use to redirect a user to Stripe to submit their identity information. This URL expires after 48 hours and can only be used once. Don’t store it, log it, send it in emails or expose it to anyone other than the user. Refer to our docs on [verifying identity documents](https://stripe.com/docs/identity/verify-identity-documents?platform=web&type=redirect) to learn how to redirect users to Stripe.
    @[JSON::Field(key: "url", type: String?, presence: true, ignore_serialize: url.nil? && !url_present?)]
    getter url : String?

    @[JSON::Field(ignore: true)]
    property? url_present : Bool = false

    @[JSON::Field(key: "verified_outputs", type: IdentityVerificationSessionVerifiedOutputs?, presence: true, ignore_serialize: verified_outputs.nil? && !verified_outputs_present?)]
    property verified_outputs : IdentityVerificationSessionVerifiedOutputs?

    @[JSON::Field(ignore: true)]
    property? verified_outputs_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64,
      @id : String,
      @livemode : Bool,
      @metadata : Hash(String, String),
      @object : String,
      @options : GelatoVerificationSessionOptions,
      @status : String,
      @_type : String,
      # Optional properties
      @client_secret : String? = nil,
      @last_error : IdentityVerificationSessionLastError? = nil,
      @last_verification_report : IdentityVerificationSessionLastVerificationReport? = nil,
      @redaction : IdentityVerificationSessionRedaction? = nil,
      @url : String? = nil,
      @verified_outputs : IdentityVerificationSessionVerifiedOutputs? = nil
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

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      if !@client_secret.nil? && @client_secret.to_s.size > 5000
        invalid_properties.push("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      if !@url.nil? && @url.to_s.size > 5000
        invalid_properties.push("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false if !@client_secret.nil? && @client_secret.to_s.size > 5000
      return false if !@url.nil? && @url.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id : String)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status, false)
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method with validation
    # @param [Object] client_secret Value to be assigned
    def client_secret=(client_secret : String?)
      if !client_secret.nil? && client_secret.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"client_secret\", the character length must be smaller than or equal to 5000.")
      end

      @client_secret = client_secret
    end

    # Custom attribute writer method with validation
    # @param [Object] url Value to be assigned
    def url=(url : String?)
      if !url.nil? && url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
      end

      @url = url
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
    def_equals_and_hash(@created, @id, @livemode, @metadata, @object, @options, @status, @_type, @client_secret, @client_secret_present, @last_error, @last_error_present, @last_verification_report, @last_verification_report_present, @redaction, @redaction_present, @url, @url_present, @verified_outputs, @verified_outputs_present)
  end
end
