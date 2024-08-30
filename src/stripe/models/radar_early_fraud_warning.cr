#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./radar_early_fraud_warning_charge"
require "./radar_early_fraud_warning_payment_intent"

module Stripe
  # An early fraud warning indicates that the card issuer has notified us that a charge may be fraudulent.  Related guide: [Early fraud warnings](https://stripe.com/docs/disputes/measuring#early-fraud-warnings)
  class RadarEarlyFraudWarning
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # An EFW is actionable if it has not received a dispute and has not been fully refunded. You may wish to proactively refund a charge that receives an EFW, in order to avoid receiving a dispute later.
    @[JSON::Field(key: "actionable", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter actionable : Bool? = nil

    @[JSON::Field(key: "charge", type: Stripe::RadarEarlyFraudWarningCharge?, default: nil, required: true, nullable: false, emit_null: false)]
    getter charge : Stripe::RadarEarlyFraudWarningCharge? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # The type of fraud labelled by the issuer. One of `card_never_received`, `fraudulent_card_application`, `made_with_counterfeit_card`, `made_with_lost_card`, `made_with_stolen_card`, `misc`, `unauthorized_use_of_card`.
    @[JSON::Field(key: "fraud_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter fraud_type : String? = nil
    MAX_LENGTH_FOR_FRAUD_TYPE = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [radar.early_fraud_warning]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("radar.early_fraud_warning")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "payment_intent", type: Stripe::RadarEarlyFraudWarningPaymentIntent?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_intent : Stripe::RadarEarlyFraudWarningPaymentIntent? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @actionable : Bool? = nil,
      @charge : Stripe::RadarEarlyFraudWarningCharge? = nil,
      @created : Int64? = nil,
      @fraud_type : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      # Optional properties
      @payment_intent : Stripe::RadarEarlyFraudWarningPaymentIntent? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"actionable\" is required and cannot be null") if @actionable.nil?

      invalid_properties.push("\"charge\" is required and cannot be null") if @charge.nil?

      unless (_charge = @charge).nil?
        invalid_properties.concat(_charge.list_invalid_properties_for("charge")) if _charge.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"fraud_type\" is required and cannot be null") if @fraud_type.nil?

      unless (_fraud_type = @fraud_type).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fraud_type", _fraud_type.to_s.size, MAX_LENGTH_FOR_FRAUD_TYPE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      unless (_payment_intent = @payment_intent).nil?
        invalid_properties.concat(_payment_intent.list_invalid_properties_for("payment_intent")) if _payment_intent.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @actionable.nil?

      return false if @charge.nil?
      unless (_charge = @charge).nil?
        return false if _charge.is_a?(OpenApi::Validatable) && !_charge.valid?
      end

      return false if @created.nil?

      return false if @fraud_type.nil?
      unless (_fraud_type = @fraud_type).nil?
        return false if _fraud_type.to_s.size > MAX_LENGTH_FOR_FRAUD_TYPE
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      unless (_payment_intent = @payment_intent).nil?
        return false if _payment_intent.is_a?(OpenApi::Validatable) && !_payment_intent.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] actionable Object to be assigned
    def actionable=(new_value : Bool?)
      raise ArgumentError.new("\"actionable\" is required and cannot be null") if new_value.nil?

      @actionable = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] charge Object to be assigned
    def charge=(new_value : Stripe::RadarEarlyFraudWarningCharge?)
      raise ArgumentError.new("\"charge\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @charge = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fraud_type Object to be assigned
    def fraud_type=(new_value : String?)
      raise ArgumentError.new("\"fraud_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("fraud_type", new_value.to_s.size, MAX_LENGTH_FOR_FRAUD_TYPE)
      end

      @fraud_type = new_value
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
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
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
    # @param [Object] payment_intent Object to be assigned
    def payment_intent=(new_value : Stripe::RadarEarlyFraudWarningPaymentIntent?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_intent = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@actionable, @charge, @created, @fraud_type, @id, @livemode, @object, @payment_intent)
  end
end
