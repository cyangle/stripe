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
  class IssuingAuthorizationNetworkData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # ID from the network that identifies the acquiring financial institution. For Visa and Mastercard credit transactions this is as 6 digit code. For Maestro debit transactions this is a 9 digit code. Uncommonly, acquiring institution ID is not provided. When this occurs, the value will be null.
    @[JSON::Field(key: "acquiring_institution_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: acquiring_institution_id.nil? && !acquiring_institution_id_present?)]
    getter acquiring_institution_id : String? = nil
    MAX_LENGTH_FOR_ACQUIRING_INSTITUTION_ID = 5000

    @[JSON::Field(ignore: true)]
    property? acquiring_institution_id_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acquiring_institution_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_acquiring_institution_id = @acquiring_institution_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("acquiring_institution_id", _acquiring_institution_id.to_s.size, MAX_LENGTH_FOR_ACQUIRING_INSTITUTION_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_acquiring_institution_id = @acquiring_institution_id).nil?
        return false if _acquiring_institution_id.to_s.size > MAX_LENGTH_FOR_ACQUIRING_INSTITUTION_ID
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acquiring_institution_id Object to be assigned
    def acquiring_institution_id=(acquiring_institution_id : String?)
      if acquiring_institution_id.nil?
        return @acquiring_institution_id = nil
      end
      _acquiring_institution_id = acquiring_institution_id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("acquiring_institution_id", _acquiring_institution_id.to_s.size, MAX_LENGTH_FOR_ACQUIRING_INSTITUTION_ID)
      @acquiring_institution_id = _acquiring_institution_id
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@acquiring_institution_id, @acquiring_institution_id_present)
  end
end