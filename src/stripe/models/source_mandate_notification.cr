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
  # Source mandate notifications should be created when a notification related to a source mandate must be sent to the payer. They will trigger a webhook or deliver an email to the customer.
  class SourceMandateNotification
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

    VALID_VALUES_FOR_OBJECT = StaticArray["source_mandate_notification"]

    # The reason of the mandate notification. Valid reasons are `mandate_confirmed` or `debit_initiated`.
    @[JSON::Field(key: "reason", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reason : String? = nil

    @[JSON::Field(key: "source", type: Stripe::Source?, default: nil, required: true, nullable: false, emit_null: false)]
    getter source : Stripe::Source? = nil

    # The status of the mandate notification. Valid statuses are `pending` or `submitted`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    # The type of source this mandate notification is attached to. Should be the source type identifier code for the payment method, such as `three_d_secure`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: Stripe::SourceMandateNotificationAcssDebitData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acss_debit : Stripe::SourceMandateNotificationAcssDebitData? = nil

    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount associated with the mandate notification. The amount is expressed in the currency of the underlying source. Required if the notification type is `debit_initiated`.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    getter amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

    @[JSON::Field(key: "bacs_debit", type: Stripe::SourceMandateNotificationBacsDebitData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bacs_debit : Stripe::SourceMandateNotificationBacsDebitData? = nil

    @[JSON::Field(key: "sepa_debit", type: Stripe::SourceMandateNotificationSepaDebitData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_debit : Stripe::SourceMandateNotificationSepaDebitData? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @reason : String? = nil,
      @source : Stripe::Source? = nil,
      @status : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @acss_debit : Stripe::SourceMandateNotificationAcssDebitData? = nil,
      @amount : Int64? = nil,
      @bacs_debit : Stripe::SourceMandateNotificationBacsDebitData? = nil,
      @sepa_debit : Stripe::SourceMandateNotificationSepaDebitData? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      if _object = @object
        invalid_properties.push(OpenApi::EnumValidator.error_message("object", VALID_VALUES_FOR_OBJECT)) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"reason\" is required and cannot be null") if @reason.nil?

      if _reason = @reason
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reason", _reason.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"source\" is required and cannot be null") if @source.nil?

      if _source = @source
        invalid_properties.concat(_source.list_invalid_properties_for("source")) if _source.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      if _status = @status
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("status", _status.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      if __type = @_type
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _acss_debit = @acss_debit
        invalid_properties.concat(_acss_debit.list_invalid_properties_for("acss_debit")) if _acss_debit.is_a?(OpenApi::Validatable)
      end

      if _bacs_debit = @bacs_debit
        invalid_properties.concat(_bacs_debit.list_invalid_properties_for("bacs_debit")) if _bacs_debit.is_a?(OpenApi::Validatable)
      end
      if _sepa_debit = @sepa_debit
        invalid_properties.concat(_sepa_debit.list_invalid_properties_for("sepa_debit")) if _sepa_debit.is_a?(OpenApi::Validatable)
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

      return false if @object.nil?
      if _object = @object
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @reason.nil?
      if _reason = @reason
        return false if _reason.to_s.size > 5000
      end

      return false if @source.nil?
      if _source = @source
        return false if _source.is_a?(OpenApi::Validatable) && !_source.valid?
      end

      return false if @status.nil?
      if _status = @status
        return false if _status.to_s.size > 5000
      end

      return false if @_type.nil?
      if __type = @_type
        return false if __type.to_s.size > 5000
      end

      if _acss_debit = @acss_debit
        return false if _acss_debit.is_a?(OpenApi::Validatable) && !_acss_debit.valid?
      end

      if _bacs_debit = @bacs_debit
        return false if _bacs_debit.is_a?(OpenApi::Validatable) && !_bacs_debit.valid?
      end

      if _sepa_debit = @sepa_debit
        return false if _sepa_debit.is_a?(OpenApi::Validatable) && !_sepa_debit.valid?
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
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason : String?)
      if reason.nil?
        raise ArgumentError.new("\"reason\" is required and cannot be null")
      end
      _reason = reason.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reason", _reason.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @reason = _reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source : Stripe::Source?)
      if source.nil?
        raise ArgumentError.new("\"source\" is required and cannot be null")
      end
      _source = source.not_nil!
      _source.validate if _source.is_a?(OpenApi::Validatable)
      @source = _source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("status", _status.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(acss_debit : Stripe::SourceMandateNotificationAcssDebitData?)
      if acss_debit.nil?
        return @acss_debit = nil
      end
      _acss_debit = acss_debit.not_nil!
      _acss_debit.validate if _acss_debit.is_a?(OpenApi::Validatable)
      @acss_debit = _acss_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs_debit Object to be assigned
    def bacs_debit=(bacs_debit : Stripe::SourceMandateNotificationBacsDebitData?)
      if bacs_debit.nil?
        return @bacs_debit = nil
      end
      _bacs_debit = bacs_debit.not_nil!
      _bacs_debit.validate if _bacs_debit.is_a?(OpenApi::Validatable)
      @bacs_debit = _bacs_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sepa_debit Object to be assigned
    def sepa_debit=(sepa_debit : Stripe::SourceMandateNotificationSepaDebitData?)
      if sepa_debit.nil?
        return @sepa_debit = nil
      end
      _sepa_debit = sepa_debit.not_nil!
      _sepa_debit.validate if _sepa_debit.is_a?(OpenApi::Validatable)
      @sepa_debit = _sepa_debit
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @id, @livemode, @object, @reason, @source, @status, @_type, @acss_debit, @amount, @amount_present, @bacs_debit, @sepa_debit)
  end
end
