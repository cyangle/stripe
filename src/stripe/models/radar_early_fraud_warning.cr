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
  # An early fraud warning indicates that the card issuer has notified us that a charge may be fraudulent.  Related guide: [Early Fraud Warnings](https://stripe.com/docs/disputes/measuring#early-fraud-warnings).
  class RadarEarlyFraudWarning
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

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

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = OpenApi::EnumValidator.new("object", "String", ["radar.early_fraud_warning"])

    # Optional properties

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
      if _charge = @charge
        invalid_properties.concat(_charge.list_invalid_properties_for("charge")) if _charge.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"fraud_type\" is required and cannot be null") if @fraud_type.nil?
      if _fraud_type = @fraud_type
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fraud_type", _fraud_type.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      if _payment_intent = @payment_intent
        invalid_properties.concat(_payment_intent.list_invalid_properties_for("payment_intent")) if _payment_intent.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @actionable.nil?

      return false if @charge.nil?
      if _charge = @charge
        return false if _charge.is_a?(OpenApi::Validatable) && !_charge.valid?
      end
      return false if @created.nil?

      return false if @fraud_type.nil?
      if _fraud_type = @fraud_type
        return false if _fraud_type.to_s.size > 5000
      end
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?

      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      if _payment_intent = @payment_intent
        return false if _payment_intent.is_a?(OpenApi::Validatable) && !_payment_intent.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] actionable Object to be assigned
    def actionable=(actionable : Bool?)
      if actionable.nil?
        raise ArgumentError.new("\"actionable\" is required and cannot be null")
      end
      _actionable = actionable.not_nil!
      @actionable = _actionable
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] charge Object to be assigned
    def charge=(charge : Stripe::RadarEarlyFraudWarningCharge?)
      if charge.nil?
        raise ArgumentError.new("\"charge\" is required and cannot be null")
      end
      _charge = charge.not_nil!
      _charge.validate if _charge.is_a?(OpenApi::Validatable)
      @charge = _charge
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
    # @param [Object] fraud_type Object to be assigned
    def fraud_type=(fraud_type : String?)
      if fraud_type.nil?
        raise ArgumentError.new("\"fraud_type\" is required and cannot be null")
      end
      _fraud_type = fraud_type.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fraud_type", _fraud_type.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @fraud_type = _fraud_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
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
    # @param [Object] payment_intent Object to be assigned
    def payment_intent=(payment_intent : Stripe::RadarEarlyFraudWarningPaymentIntent?)
      if payment_intent.nil?
        return @payment_intent = nil
      end
      _payment_intent = payment_intent.not_nil!
      _payment_intent.validate if _payment_intent.is_a?(OpenApi::Validatable)
      @payment_intent = _payment_intent
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@actionable, @charge, @created, @fraud_type, @id, @livemode, @object, @payment_intent)
  end
end
