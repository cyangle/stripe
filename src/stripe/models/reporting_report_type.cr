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
  # The Report Type resource corresponds to a particular type of report, such as the \"Activity summary\" or \"Itemized payouts\" reports. These objects are identified by an ID belonging to a set of enumerated values. See [API Access to Reports documentation](https://stripe.com/docs/reporting/statements/api) for those Report Type IDs, along with required and optional parameters.  Note that certain report types can only be run based on your live-mode data (not test-mode data), and will error when queried without a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).
  class ReportingReportType
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Most recent time for which this Report Type is available. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "data_available_end", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter data_available_end : Int64? = nil

    # Earliest time for which this Report Type is available. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "data_available_start", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter data_available_start : Int64? = nil

    # List of column names that are included by default when this Report Type gets run. (If the Report Type doesn't support the `columns` parameter, this will be null.)
    @[JSON::Field(key: "default_columns", type: Array(String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter default_columns : Array(String)? = nil

    # The [ID of the Report Type](https://stripe.com/docs/reporting/statements/api#available-report-types), such as `balance.summary.1`.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # Human-readable name of the Report Type
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [reporting.report_type]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("reporting.report_type")

    # When this Report Type was latest updated. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "updated", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter updated : Int64? = nil

    # Version of the Report Type. Different versions report with the same ID will have the same purpose, but may take different run parameters or have different result schemas.
    @[JSON::Field(key: "version", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter version : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @data_available_end : Int64? = nil,
      @data_available_start : Int64? = nil,
      @default_columns : Array(String)? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @name : String? = nil,
      @object : String? = nil,
      @updated : Int64? = nil,
      @version : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"data_available_end\" is required and cannot be null") if @data_available_end.nil?

      invalid_properties.push("\"data_available_start\" is required and cannot be null") if @data_available_start.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"updated\" is required and cannot be null") if @updated.nil?

      invalid_properties.push("\"version\" is required and cannot be null") if @version.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @data_available_end.nil?

      return false if @data_available_start.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @name.nil?
      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @updated.nil?

      return false if @version.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_available_end Object to be assigned
    def data_available_end=(new_value : Int64?)
      raise ArgumentError.new("\"data_available_end\" is required and cannot be null") if new_value.nil?

      @data_available_end = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_available_start Object to be assigned
    def data_available_start=(new_value : Int64?)
      raise ArgumentError.new("\"data_available_start\" is required and cannot be null") if new_value.nil?

      @data_available_start = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_columns Object to be assigned
    def default_columns=(new_value : Array(String)?)
      @default_columns = new_value
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
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      raise ArgumentError.new("\"name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name", new_value.to_s.size, MAX_LENGTH_FOR_NAME)
      end

      @name = new_value
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
    # @param [Object] updated Object to be assigned
    def updated=(new_value : Int64?)
      raise ArgumentError.new("\"updated\" is required and cannot be null") if new_value.nil?

      @updated = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] version Object to be assigned
    def version=(new_value : Int64?)
      raise ArgumentError.new("\"version\" is required and cannot be null") if new_value.nil?

      @version = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@data_available_end, @data_available_start, @default_columns, @id, @livemode, @name, @object, @updated, @version)
  end
end
