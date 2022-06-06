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
  # A SetupAttempt describes one attempted confirmation of a SetupIntent, whether that confirmation was successful or unsuccessful. You can use SetupAttempts to inspect details of a specific attempt at setting up a payment method using a SetupIntent.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class SetupAttempt
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

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["setup_attempt"])

    @[JSON::Field(key: "payment_method", type: SetupAttemptPaymentMethod)]
    property payment_method : SetupAttemptPaymentMethod

    @[JSON::Field(key: "payment_method_details", type: SetupAttemptPaymentMethodDetails)]
    property payment_method_details : SetupAttemptPaymentMethodDetails

    @[JSON::Field(key: "setup_intent", type: SetupAttemptSetupIntent)]
    property setup_intent : SetupAttemptSetupIntent

    # Status of this SetupAttempt, one of `requires_confirmation`, `requires_action`, `processing`, `succeeded`, `failed`, or `abandoned`.
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    # The value of [usage](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-usage) on the SetupIntent at the time of this confirmation, one of `off_session` or `on_session`.
    @[JSON::Field(key: "usage", type: String)]
    getter usage : String

    # Optional properties

    @[JSON::Field(key: "application", type: SetupAttemptApplication?, presence: true, ignore_serialize: application.nil? && !application_present?)]
    property application : SetupAttemptApplication?

    @[JSON::Field(ignore: true)]
    property? application_present : Bool = false

    @[JSON::Field(key: "customer", type: SetupAttemptCustomer?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    property customer : SetupAttemptCustomer?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    @[JSON::Field(key: "on_behalf_of", type: SetupAttemptOnBehalfOf?, presence: true, ignore_serialize: on_behalf_of.nil? && !on_behalf_of_present?)]
    property on_behalf_of : SetupAttemptOnBehalfOf?

    @[JSON::Field(ignore: true)]
    property? on_behalf_of_present : Bool = false

    @[JSON::Field(key: "setup_error", type: SetupAttemptSetupError?, presence: true, ignore_serialize: setup_error.nil? && !setup_error_present?)]
    property setup_error : SetupAttemptSetupError?

    @[JSON::Field(ignore: true)]
    property? setup_error_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64,
      @id : String,
      @livemode : Bool,
      @object : String,
      @payment_method : SetupAttemptPaymentMethod,
      @payment_method_details : SetupAttemptPaymentMethodDetails,
      @setup_intent : SetupAttemptSetupIntent,
      @status : String,
      @usage : String,
      # Optional properties
      @application : SetupAttemptApplication? = nil,
      @customer : SetupAttemptCustomer? = nil,
      @on_behalf_of : SetupAttemptOnBehalfOf? = nil,
      @setup_error : SetupAttemptSetupError? = nil
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

      if @status.to_s.size > 5000
        invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      if @usage.to_s.size > 5000
        invalid_properties.push("invalid value for \"usage\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @status.to_s.size > 5000
      return false if @usage.to_s.size > 5000

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

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status : String)
      if status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] usage Value to be assigned
    def usage=(usage : String)
      if usage.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"usage\", the character length must be smaller than or equal to 5000.")
      end

      @usage = usage
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
    def_equals_and_hash(@created, @id, @livemode, @object, @payment_method, @payment_method_details, @setup_intent, @status, @usage, @application, @application_present, @customer, @customer_present, @on_behalf_of, @on_behalf_of_present, @setup_error, @setup_error_present)
  end
end
