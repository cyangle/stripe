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
  class PostReportingReportRunsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The ID of the [report type](https://stripe.com/docs/reporting/statements/api#report-types) to run, such as `\"balance.summary.1\"`.
    @[JSON::Field(key: "report_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter report_type : String? = nil

    # End of Required Properties

    # Optional Properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "parameters", type: Stripe::RunParameterSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter parameters : Stripe::RunParameterSpecs? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @report_type : String? = nil,
      # Optional properties
      @expand : Array(String)? = nil,
      @parameters : Stripe::RunParameterSpecs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"report_type\" is required and cannot be null") if @report_type.nil?

      unless (_parameters = @parameters).nil?
        invalid_properties.concat(_parameters.list_invalid_properties_for("parameters")) if _parameters.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @report_type.nil?

      unless (_parameters = @parameters).nil?
        return false if _parameters.is_a?(OpenApi::Validatable) && !_parameters.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] report_type Object to be assigned
    def report_type=(report_type : String?)
      if report_type.nil?
        raise ArgumentError.new("\"report_type\" is required and cannot be null")
      end
      _report_type = report_type.not_nil!
      @report_type = _report_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] parameters Object to be assigned
    def parameters=(parameters : Stripe::RunParameterSpecs?)
      if parameters.nil?
        return @parameters = nil
      end
      _parameters = parameters.not_nil!
      _parameters.validate if _parameters.is_a?(OpenApi::Validatable)
      @parameters = _parameters
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@report_type, @expand, @parameters)
  end
end
