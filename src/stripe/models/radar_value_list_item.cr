#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  # Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.  Related guide: [Managing list items](https://stripe.com/docs/radar/lists#managing-list-items)
  class RadarValueListItem
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # The name or email address of the user who added this item to the value list.
    @[JSON::Field(key: "created_by", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created_by : String? = nil
    MAX_LENGTH_FOR_CREATED_BY = 5000

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
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [radar.value_list_item]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("radar.value_list_item")

    # The value of the item.
    @[JSON::Field(key: "value", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter value : String? = nil
    MAX_LENGTH_FOR_VALUE = 5000

    # The identifier of the value list this item belongs to.
    @[JSON::Field(key: "value_list", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter value_list : String? = nil
    MAX_LENGTH_FOR_VALUE_LIST = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @created_by : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @value : String? = nil,
      @value_list : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"created_by\" is required and cannot be null") if @created_by.nil?

      unless (_created_by = @created_by).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("created_by", _created_by.to_s.size, MAX_LENGTH_FOR_CREATED_BY)
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
      invalid_properties.push("\"value\" is required and cannot be null") if @value.nil?

      unless (_value = @value).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("value", _value.to_s.size, MAX_LENGTH_FOR_VALUE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"value_list\" is required and cannot be null") if @value_list.nil?

      unless (_value_list = @value_list).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("value_list", _value_list.to_s.size, MAX_LENGTH_FOR_VALUE_LIST)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      return false if @created_by.nil?
      unless (_created_by = @created_by).nil?
        return false if _created_by.to_s.size > MAX_LENGTH_FOR_CREATED_BY
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

      return false if @value.nil?
      unless (_value = @value).nil?
        return false if _value.to_s.size > MAX_LENGTH_FOR_VALUE
      end

      return false if @value_list.nil?
      unless (_value_list = @value_list).nil?
        return false if _value_list.to_s.size > MAX_LENGTH_FOR_VALUE_LIST
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created_by Object to be assigned
    def created_by=(new_value : String?)
      raise ArgumentError.new("\"created_by\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("created_by", new_value.to_s.size, MAX_LENGTH_FOR_CREATED_BY)
      end

      @created_by = new_value
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
    # @param [Object] value Object to be assigned
    def value=(new_value : String?)
      raise ArgumentError.new("\"value\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("value", new_value.to_s.size, MAX_LENGTH_FOR_VALUE)
      end

      @value = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value_list Object to be assigned
    def value_list=(new_value : String?)
      raise ArgumentError.new("\"value_list\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("value_list", new_value.to_s.size, MAX_LENGTH_FOR_VALUE_LIST)
      end

      @value_list = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @created_by, @id, @livemode, @object, @value, @value_list)
  end
end
