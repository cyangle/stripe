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
  # A test clock enables deterministic control over objects in testmode. With a test clock, you can create objects at a frozen time in the past or future, and advance to a specific future time to observe webhooks and state changes. After the clock advances, you can either validate the current state of your scenario (and test your assumptions), change the current state of your scenario (and test more complex scenarios), or keep advancing forward in time.
  class TestHelpersTestClock
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Time at which this clock is scheduled to auto delete.
    @[JSON::Field(key: "deletes_after", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter deletes_after : Int64? = nil

    # Time at which all objects belonging to this clock are frozen.
    @[JSON::Field(key: "frozen_time", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter frozen_time : Int64? = nil

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
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [test_helpers.test_clock]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("test_helpers.test_clock")

    # The status of the Test Clock.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [advancing, internal_failure, ready]."
    VALID_VALUES_FOR_STATUS  = String.static_array("advancing", "internal_failure", "ready")

    # End of Required Properties

    # Optional Properties

    # The custom name supplied at creation.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @deletes_after : Int64? = nil,
      @frozen_time : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @status : String? = nil,
      # Optional properties
      @name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"deletes_after\" is required and cannot be null") if @deletes_after.nil?

      invalid_properties.push("\"frozen_time\" is required and cannot be null") if @frozen_time.nil?

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
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      return false if @deletes_after.nil?

      return false if @frozen_time.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
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
    # @param [Object] deletes_after Object to be assigned
    def deletes_after=(deletes_after : Int64?)
      if deletes_after.nil?
        raise ArgumentError.new("\"deletes_after\" is required and cannot be null")
      end
      _deletes_after = deletes_after.not_nil!
      @deletes_after = _deletes_after
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] frozen_time Object to be assigned
    def frozen_time=(frozen_time : Int64?)
      if frozen_time.nil?
        raise ArgumentError.new("\"frozen_time\" is required and cannot be null")
      end
      _frozen_time = frozen_time.not_nil!
      @frozen_time = _frozen_time
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
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
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      OpenApi::EnumValidator.validate("status", _status, VALID_VALUES_FOR_STATUS)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        return @name = nil
      end
      _name = name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
      @name = _name
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @deletes_after, @frozen_time, @id, @livemode, @object, @status, @name, @name_present)
  end
end
