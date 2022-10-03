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
  #
  class FinancialReportingFinanceReportRunRunParameters
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The set of output columns requested for inclusion in the report run.
    @[JSON::Field(key: "columns", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter columns : Array(String)? = nil

    # Connected account ID by which to filter the report run.
    @[JSON::Field(key: "connected_account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter connected_account : String? = nil
    MAX_LENGTH_FOR_CONNECTED_ACCOUNT = 5000

    # Currency of objects to be included in the report run.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Ending timestamp of data to be included in the report run (exclusive).
    @[JSON::Field(key: "interval_end", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interval_end : Int64? = nil

    # Starting timestamp of data to be included in the report run.
    @[JSON::Field(key: "interval_start", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interval_start : Int64? = nil

    # Payout ID by which to filter the report run.
    @[JSON::Field(key: "payout", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payout : String? = nil
    MAX_LENGTH_FOR_PAYOUT = 5000

    # Category of balance transactions to be included in the report run.
    @[JSON::Field(key: "reporting_category", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reporting_category : String? = nil
    MAX_LENGTH_FOR_REPORTING_CATEGORY = 5000

    # Defaults to `Etc/UTC`. The output timezone for all timestamps in the report. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones). Has no effect on `interval_start` or `interval_end`.
    @[JSON::Field(key: "timezone", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter timezone : String? = nil
    MAX_LENGTH_FOR_TIMEZONE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @columns : Array(String)? = nil,
      @connected_account : String? = nil,
      @currency : String? = nil,
      @interval_end : Int64? = nil,
      @interval_start : Int64? = nil,
      @payout : String? = nil,
      @reporting_category : String? = nil,
      @timezone : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_connected_account = @connected_account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("connected_account", _connected_account.to_s.size, MAX_LENGTH_FOR_CONNECTED_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_payout = @payout).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payout", _payout.to_s.size, MAX_LENGTH_FOR_PAYOUT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_reporting_category = @reporting_category).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reporting_category", _reporting_category.to_s.size, MAX_LENGTH_FOR_REPORTING_CATEGORY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_timezone = @timezone).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("timezone", _timezone.to_s.size, MAX_LENGTH_FOR_TIMEZONE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_connected_account = @connected_account).nil?
        return false if _connected_account.to_s.size > MAX_LENGTH_FOR_CONNECTED_ACCOUNT
      end

      unless (_payout = @payout).nil?
        return false if _payout.to_s.size > MAX_LENGTH_FOR_PAYOUT
      end

      unless (_reporting_category = @reporting_category).nil?
        return false if _reporting_category.to_s.size > MAX_LENGTH_FOR_REPORTING_CATEGORY
      end

      unless (_timezone = @timezone).nil?
        return false if _timezone.to_s.size > MAX_LENGTH_FOR_TIMEZONE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] columns Object to be assigned
    def columns=(columns : Array(String)?)
      if columns.nil?
        return @columns = nil
      end
      _columns = columns.not_nil!
      @columns = _columns
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] connected_account Object to be assigned
    def connected_account=(connected_account : String?)
      if connected_account.nil?
        return @connected_account = nil
      end
      _connected_account = connected_account.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("connected_account", _connected_account.to_s.size, MAX_LENGTH_FOR_CONNECTED_ACCOUNT)
      @connected_account = _connected_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        return @currency = nil
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_end Object to be assigned
    def interval_end=(interval_end : Int64?)
      if interval_end.nil?
        return @interval_end = nil
      end
      _interval_end = interval_end.not_nil!
      @interval_end = _interval_end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_start Object to be assigned
    def interval_start=(interval_start : Int64?)
      if interval_start.nil?
        return @interval_start = nil
      end
      _interval_start = interval_start.not_nil!
      @interval_start = _interval_start
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payout Object to be assigned
    def payout=(payout : String?)
      if payout.nil?
        return @payout = nil
      end
      _payout = payout.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("payout", _payout.to_s.size, MAX_LENGTH_FOR_PAYOUT)
      @payout = _payout
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reporting_category Object to be assigned
    def reporting_category=(reporting_category : String?)
      if reporting_category.nil?
        return @reporting_category = nil
      end
      _reporting_category = reporting_category.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("reporting_category", _reporting_category.to_s.size, MAX_LENGTH_FOR_REPORTING_CATEGORY)
      @reporting_category = _reporting_category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] timezone Object to be assigned
    def timezone=(timezone : String?)
      if timezone.nil?
        return @timezone = nil
      end
      _timezone = timezone.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("timezone", _timezone.to_s.size, MAX_LENGTH_FOR_TIMEZONE)
      @timezone = _timezone
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@columns, @connected_account, @currency, @interval_end, @interval_start, @payout, @reporting_category, @timezone)
  end
end
