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

    # Ending timestamp of data to be included in the report run. Can be any UTC timestamp between 1 second after the user specified `interval_start` and 1 second before this report's last `data_available_end` value.
    @[JSON::Field(key: "interval_end", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interval_end : Int64? = nil

    # Starting timestamp of data to be included in the report run. Can be any UTC timestamp between 1 second after this report's `data_available_start` and 1 second before the user specified `interval_end` value.
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
    def columns=(new_value : Array(String)?)
      @columns = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] connected_account Object to be assigned
    def connected_account=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("connected_account", new_value.to_s.size, MAX_LENGTH_FOR_CONNECTED_ACCOUNT)
      end

      @connected_account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      @currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_end Object to be assigned
    def interval_end=(new_value : Int64?)
      @interval_end = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_start Object to be assigned
    def interval_start=(new_value : Int64?)
      @interval_start = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payout Object to be assigned
    def payout=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("payout", new_value.to_s.size, MAX_LENGTH_FOR_PAYOUT)
      end

      @payout = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reporting_category Object to be assigned
    def reporting_category=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("reporting_category", new_value.to_s.size, MAX_LENGTH_FOR_REPORTING_CATEGORY)
      end

      @reporting_category = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] timezone Object to be assigned
    def timezone=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("timezone", new_value.to_s.size, MAX_LENGTH_FOR_TIMEZONE)
      end

      @timezone = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@columns, @connected_account, @currency, @interval_end, @interval_start, @payout, @reporting_category, @timezone)
  end
end
