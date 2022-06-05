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
  # The Report Type resource corresponds to a particular type of report, such as the \"Activity summary\" or \"Itemized payouts\" reports. These objects are identified by an ID belonging to a set of enumerated values. See [API Access to Reports documentation](https://stripe.com/docs/reporting/statements/api) for those Report Type IDs, along with required and optional parameters.  Note that certain report types can only be run based on your live-mode data (not test-mode data), and will error when queried without a [live-mode API key](https://stripe.com/docs/keys#test-live-modes).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ReportingReportType
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Most recent time for which this Report Type is available. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "data_available_end", type: Int64)]
    property data_available_end : Int64

    # Earliest time for which this Report Type is available. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "data_available_start", type: Int64)]
    property data_available_start : Int64

    # The [ID of the Report Type](https://stripe.com/docs/reporting/statements/api#available-report-types), such as `balance.summary.1`.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Human-readable name of the Report Type
    @[JSON::Field(key: "name", type: String)]
    getter name : String

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["reporting.report_type"])

    # When this Report Type was latest updated. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "updated", type: Int64)]
    property updated : Int64

    # Version of the Report Type. Different versions report with the same ID will have the same purpose, but may take different run parameters or have different result schemas.
    @[JSON::Field(key: "version", type: Int64)]
    property version : Int64

    # Optional properties

    # List of column names that are included by default when this Report Type gets run. (If the Report Type doesn't support the `columns` parameter, this will be null.)
    @[JSON::Field(key: "default_columns", type: Array(String)?, presence: true, ignore_serialize: default_columns.nil? && !default_columns_present?)]
    property default_columns : Array(String)?

    @[JSON::Field(ignore: true)]
    property? default_columns_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @data_available_end : Int64,
      @data_available_start : Int64,
      @id : String,
      @livemode : Bool,
      @name : String,
      @object : String,
      @updated : Int64,
      @version : Int64,
      # Optional properties
      @default_columns : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false if @name.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
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
    def_equals_and_hash(@data_available_end, @data_available_start, @id, @livemode, @name, @object, @updated, @version, @default_columns)
  end
end
