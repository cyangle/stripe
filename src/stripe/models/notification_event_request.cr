#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class NotificationEventRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # ID of the API request that caused the event. If null, the event was automatic (e.g., Stripe's automatic subscription handling). Request logs are available in the [dashboard](https://dashboard.stripe.com/logs), but currently not in the API.
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: id.nil? && !id_present?)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # The idempotency key transmitted during the request, if any. *Note: This property is populated only for events on or after May 23, 2017*.
    @[JSON::Field(key: "idempotency_key", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: idempotency_key.nil? && !idempotency_key_present?)]
    getter idempotency_key : String? = nil
    MAX_LENGTH_FOR_IDEMPOTENCY_KEY = 5000

    @[JSON::Field(ignore: true)]
    property? idempotency_key_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @id : String? = nil,
      @idempotency_key : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_idempotency_key = @idempotency_key).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("idempotency_key", _idempotency_key.to_s.size, MAX_LENGTH_FOR_IDEMPOTENCY_KEY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      unless (_idempotency_key = @idempotency_key).nil?
        return false if _idempotency_key.to_s.size > MAX_LENGTH_FOR_IDEMPOTENCY_KEY
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] idempotency_key Object to be assigned
    def idempotency_key=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("idempotency_key", new_value.to_s.size, MAX_LENGTH_FOR_IDEMPOTENCY_KEY)
      end

      @idempotency_key = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @id_present, @idempotency_key, @idempotency_key_present)
  end
end
