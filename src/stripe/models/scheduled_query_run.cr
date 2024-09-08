#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./scheduled_query_run_file"
require "./sigma_scheduled_query_run_error"

module Stripe
  # If you have [scheduled a Sigma query](https://stripe.com/docs/sigma/scheduled-queries), you'll receive a `sigma.scheduled_query_run.created` webhook each time the query runs. The webhook contains a `ScheduledQueryRun` object, which you can use to retrieve the query results.
  class ScheduledQueryRun
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # When the query was run, Sigma contained a snapshot of your Stripe data at this time.
    @[JSON::Field(key: "data_load_time", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter data_load_time : Int64? = nil

    @[JSON::Field(key: "file", type: Stripe::ScheduledQueryRunFile?, default: nil, required: true, nullable: true, emit_null: true)]
    getter file : Stripe::ScheduledQueryRunFile? = nil

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
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [scheduled_query_run]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("scheduled_query_run")

    # Time at which the result expires and is no longer available for download.
    @[JSON::Field(key: "result_available_until", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter result_available_until : Int64? = nil

    # SQL for the query.
    @[JSON::Field(key: "sql", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter sql : String? = nil
    MAX_LENGTH_FOR_SQL = 100000

    # The query's execution status, which will be `completed` for successful runs, and `canceled`, `failed`, or `timed_out` otherwise.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    MAX_LENGTH_FOR_STATUS = 5000

    # Title of the query.
    @[JSON::Field(key: "title", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter title : String? = nil
    MAX_LENGTH_FOR_TITLE = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "error", type: Stripe::SigmaScheduledQueryRunError?, default: nil, required: false, nullable: false, emit_null: false)]
    getter error : Stripe::SigmaScheduledQueryRunError? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @data_load_time : Int64? = nil,
      @file : Stripe::ScheduledQueryRunFile? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @result_available_until : Int64? = nil,
      @sql : String? = nil,
      @status : String? = nil,
      @title : String? = nil,
      # Optional properties
      @error : Stripe::SigmaScheduledQueryRunError? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"data_load_time\" is required and cannot be null") if @data_load_time.nil?

      unless (_file = @file).nil?
        invalid_properties.concat(_file.list_invalid_properties_for("file")) if _file.is_a?(OpenApi::Validatable)
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
      invalid_properties.push("\"result_available_until\" is required and cannot be null") if @result_available_until.nil?

      invalid_properties.push("\"sql\" is required and cannot be null") if @sql.nil?

      unless (_sql = @sql).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sql", _sql.to_s.size, MAX_LENGTH_FOR_SQL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("status", _status.to_s.size, MAX_LENGTH_FOR_STATUS)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"title\" is required and cannot be null") if @title.nil?

      unless (_title = @title).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("title", _title.to_s.size, MAX_LENGTH_FOR_TITLE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_error = @error).nil?
        invalid_properties.concat(_error.list_invalid_properties_for("error")) if _error.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      return false if @data_load_time.nil?

      unless (_file = @file).nil?
        return false if _file.is_a?(OpenApi::Validatable) && !_file.valid?
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

      return false if @result_available_until.nil?

      return false if @sql.nil?
      unless (_sql = @sql).nil?
        return false if _sql.to_s.size > MAX_LENGTH_FOR_SQL
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false if _status.to_s.size > MAX_LENGTH_FOR_STATUS
      end

      return false if @title.nil?
      unless (_title = @title).nil?
        return false if _title.to_s.size > MAX_LENGTH_FOR_TITLE
      end

      unless (_error = @error).nil?
        return false if _error.is_a?(OpenApi::Validatable) && !_error.valid?
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
    # @param [Object] data_load_time Object to be assigned
    def data_load_time=(new_value : Int64?)
      raise ArgumentError.new("\"data_load_time\" is required and cannot be null") if new_value.nil?

      @data_load_time = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] file Object to be assigned
    def file=(new_value : Stripe::ScheduledQueryRunFile?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @file = new_value
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
    # @param [Object] result_available_until Object to be assigned
    def result_available_until=(new_value : Int64?)
      raise ArgumentError.new("\"result_available_until\" is required and cannot be null") if new_value.nil?

      @result_available_until = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sql Object to be assigned
    def sql=(new_value : String?)
      raise ArgumentError.new("\"sql\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sql", new_value.to_s.size, MAX_LENGTH_FOR_SQL)
      end

      @sql = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("status", new_value.to_s.size, MAX_LENGTH_FOR_STATUS)
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] title Object to be assigned
    def title=(new_value : String?)
      raise ArgumentError.new("\"title\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("title", new_value.to_s.size, MAX_LENGTH_FOR_TITLE)
      end

      @title = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error Object to be assigned
    def error=(new_value : Stripe::SigmaScheduledQueryRunError?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @error = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @data_load_time, @file, @id, @livemode, @object, @result_available_until, @sql, @status, @title, @error)
  end
end
