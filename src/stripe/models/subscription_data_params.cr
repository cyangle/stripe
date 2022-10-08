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
  class SubscriptionDataParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "application_fee_percent", type: Float64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_percent : Float64? = nil

    @[JSON::Field(key: "default_tax_rates", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_tax_rates : Array(String)? = nil

    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 500

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "transfer_data", type: Stripe::TransferDataSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_data : Stripe::TransferDataSpecs? = nil

    @[JSON::Field(key: "trial_end", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter trial_end : Int64? = nil

    @[JSON::Field(key: "trial_period_days", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter trial_period_days : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @application_fee_percent : Float64? = nil,
      @default_tax_rates : Array(String)? = nil,
      @description : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @transfer_data : Stripe::TransferDataSpecs? = nil,
      @trial_end : Int64? = nil,
      @trial_period_days : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_transfer_data = @transfer_data).nil?
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_transfer_data = @transfer_data).nil?
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_percent Object to be assigned
    def application_fee_percent=(application_fee_percent : Float64?)
      if application_fee_percent.nil?
        return @application_fee_percent = nil
      end
      _application_fee_percent = application_fee_percent.not_nil!
      @application_fee_percent = _application_fee_percent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_tax_rates Object to be assigned
    def default_tax_rates=(default_tax_rates : Array(String)?)
      if default_tax_rates.nil?
        return @default_tax_rates = nil
      end
      _default_tax_rates = default_tax_rates.not_nil!
      @default_tax_rates = _default_tax_rates
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::TransferDataSpecs?)
      if transfer_data.nil?
        return @transfer_data = nil
      end
      _transfer_data = transfer_data.not_nil!
      _transfer_data.validate if _transfer_data.is_a?(OpenApi::Validatable)
      @transfer_data = _transfer_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trial_end Object to be assigned
    def trial_end=(trial_end : Int64?)
      if trial_end.nil?
        return @trial_end = nil
      end
      _trial_end = trial_end.not_nil!
      @trial_end = _trial_end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trial_period_days Object to be assigned
    def trial_period_days=(trial_period_days : Int64?)
      if trial_period_days.nil?
        return @trial_period_days = nil
      end
      _trial_period_days = trial_period_days.not_nil!
      @trial_period_days = _trial_period_days
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@application_fee_percent, @default_tax_rates, @description, @metadata, @transfer_data, @trial_end, @trial_period_days)
  end
end
