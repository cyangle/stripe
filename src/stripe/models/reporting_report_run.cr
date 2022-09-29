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
  # The Report Run object represents an instance of a report type generated with specific run parameters. Once the object is created, Stripe begins processing the report. When the report has finished running, it will give you a reference to a file where you can retrieve your results. For an overview, see [API Access to Reports](https://stripe.com/docs/reporting/statements/api).  Note that certain report types can only be run based on your live-mode data (not test-mode data), and will error when queried without a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).
  class ReportingReportRun
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

    # `true` if the report is run on live mode data and `false` if it is run on test mode data.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = OpenApi::EnumValidator.new("object", "String", ["reporting.report_run"])

    @[JSON::Field(key: "parameters", type: Stripe::FinancialReportingFinanceReportRunRunParameters?, default: nil, required: true, nullable: false, emit_null: false)]
    getter parameters : Stripe::FinancialReportingFinanceReportRunRunParameters? = nil

    # The ID of the [report type](https://stripe.com/docs/reports/report-types) to run, such as `\"balance.summary.1\"`.
    @[JSON::Field(key: "report_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter report_type : String? = nil

    # Status of this report run. This will be `pending` when the run is initially created.  When the run finishes, this will be set to `succeeded` and the `result` field will be populated.  Rarely, we may encounter an error, at which point this will be set to `failed` and the `error` field will be populated.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    # Optional properties

    # If something should go wrong during the run, a message about the failure (populated when  `status=failed`).
    @[JSON::Field(key: "error", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: error.nil? && !error_present?)]
    getter error : String? = nil

    @[JSON::Field(ignore: true)]
    property? error_present : Bool = false

    @[JSON::Field(key: "result", type: Stripe::ReportingReportRunResult?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: result.nil? && !result_present?)]
    getter result : Stripe::ReportingReportRunResult? = nil

    @[JSON::Field(ignore: true)]
    property? result_present : Bool = false

    # Timestamp at which this run successfully finished (populated when  `status=succeeded`). Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "succeeded_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: succeeded_at.nil? && !succeeded_at_present?)]
    getter succeeded_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? succeeded_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @parameters : Stripe::FinancialReportingFinanceReportRunRunParameters? = nil,
      @report_type : String? = nil,
      @status : String? = nil,
      # Optional properties
      @error : String? = nil,
      @result : Stripe::ReportingReportRunResult? = nil,
      @succeeded_at : Int64? = nil
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

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"parameters\" is required and cannot be null") if @parameters.nil?
      if _parameters = @parameters
        invalid_properties.concat(_parameters.list_invalid_properties_for("parameters")) if _parameters.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"report_type\" is required and cannot be null") if @report_type.nil?
      if _report_type = @report_type
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("report_type", _report_type.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?
      if _status = @status
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("status", _status.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _error = @error
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("error", _error.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _result = @result
        invalid_properties.concat(_result.list_invalid_properties_for("result")) if _result.is_a?(OpenApi::Validatable)
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

      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @parameters.nil?
      if _parameters = @parameters
        return false if _parameters.is_a?(OpenApi::Validatable) && !_parameters.valid?
      end
      return false if @report_type.nil?
      if _report_type = @report_type
        return false if _report_type.to_s.size > 5000
      end
      return false if @status.nil?
      if _status = @status
        return false if _status.to_s.size > 5000
      end
      if _error = @error
        return false if _error.to_s.size > 5000
      end
      if _result = @result
        return false if _result.is_a?(OpenApi::Validatable) && !_result.valid?
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
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] parameters Object to be assigned
    def parameters=(parameters : Stripe::FinancialReportingFinanceReportRunRunParameters?)
      if parameters.nil?
        raise ArgumentError.new("\"parameters\" is required and cannot be null")
      end
      _parameters = parameters.not_nil!
      _parameters.validate if _parameters.is_a?(OpenApi::Validatable)
      @parameters = _parameters
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] report_type Object to be assigned
    def report_type=(report_type : String?)
      if report_type.nil?
        raise ArgumentError.new("\"report_type\" is required and cannot be null")
      end
      _report_type = report_type.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("report_type", _report_type.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @report_type = _report_type
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
    # @param [Object] error Object to be assigned
    def error=(error : String?)
      if error.nil?
        return @error = nil
      end
      _error = error.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("error", _error.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @error = _error
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] result Object to be assigned
    def result=(result : Stripe::ReportingReportRunResult?)
      if result.nil?
        return @result = nil
      end
      _result = result.not_nil!
      _result.validate if _result.is_a?(OpenApi::Validatable)
      @result = _result
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] succeeded_at Object to be assigned
    def succeeded_at=(succeeded_at : Int64?)
      if succeeded_at.nil?
        return @succeeded_at = nil
      end
      _succeeded_at = succeeded_at.not_nil!
      @succeeded_at = _succeeded_at
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @id, @livemode, @object, @parameters, @report_type, @status, @error, @error_present, @result, @result_present, @succeeded_at, @succeeded_at_present)
  end
end
