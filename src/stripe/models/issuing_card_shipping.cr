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
  class IssuingCardShipping
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "address", type: Stripe::Address?, default: nil, required: true, nullable: false, emit_null: false)]
    getter address : Stripe::Address? = nil

    # Recipient name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # Shipment service, such as `standard` or `express`.
    @[JSON::Field(key: "service", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter service : String? = nil

    VALID_VALUES_FOR_SERVICE = StaticArray["express", "priority", "standard"]

    # Packaging options.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    VALID_VALUES_FOR__TYPE = StaticArray["bulk", "individual"]

    # Optional properties

    # The delivery company that shipped a card.
    @[JSON::Field(key: "carrier", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: carrier.nil? && !carrier_present?)]
    getter carrier : String? = nil

    @[JSON::Field(ignore: true)]
    property? carrier_present : Bool = false
    VALID_VALUES_FOR_CARRIER = StaticArray["dhl", "fedex", "royal_mail", "usps"]

    @[JSON::Field(key: "customs", type: Stripe::IssuingCardShippingCustoms1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: customs.nil? && !customs_present?)]
    getter customs : Stripe::IssuingCardShippingCustoms1? = nil

    @[JSON::Field(ignore: true)]
    property? customs_present : Bool = false

    # A unix timestamp representing a best estimate of when the card will be delivered.
    @[JSON::Field(key: "eta", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: eta.nil? && !eta_present?)]
    getter eta : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? eta_present : Bool = false

    # The phone number of the receiver of the bulk shipment. This phone number will be provided to the shipping company, who might use it to contact the receiver in case of delivery issues.
    @[JSON::Field(key: "phone_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: phone_number.nil? && !phone_number_present?)]
    getter phone_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? phone_number_present : Bool = false

    # Whether a signature is required for card delivery. This feature is only supported for US users. Standard shipping service does not support signature on delivery. The default value for standard shipping service is false and for express and priority services is true.
    @[JSON::Field(key: "require_signature", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: require_signature.nil? && !require_signature_present?)]
    getter require_signature : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? require_signature_present : Bool = false

    # The delivery status of the card.
    @[JSON::Field(key: "status", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String? = nil

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false
    VALID_VALUES_FOR_STATUS = StaticArray["canceled", "delivered", "failure", "pending", "returned", "shipped"]

    # A tracking number for a card shipment.
    @[JSON::Field(key: "tracking_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tracking_number.nil? && !tracking_number_present?)]
    getter tracking_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? tracking_number_present : Bool = false

    # A link to the shipping carrier's site where you can view detailed information about a card shipment.
    @[JSON::Field(key: "tracking_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tracking_url.nil? && !tracking_url_present?)]
    getter tracking_url : String? = nil

    @[JSON::Field(ignore: true)]
    property? tracking_url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address : Stripe::Address? = nil,
      @name : String? = nil,
      @service : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @carrier : String? = nil,
      @customs : Stripe::IssuingCardShippingCustoms1? = nil,
      @eta : Int64? = nil,
      @phone_number : String? = nil,
      @require_signature : Bool? = nil,
      @status : String? = nil,
      @tracking_number : String? = nil,
      @tracking_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"address\" is required and cannot be null") if @address.nil?

      if _address = @address
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      if _name = @name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"service\" is required and cannot be null") if @service.nil?

      if _service = @service
        invalid_properties.push(OpenApi::EnumValidator.error_message("service", VALID_VALUES_FOR_SERVICE)) unless OpenApi::EnumValidator.valid?(_service, VALID_VALUES_FOR_SERVICE)
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      if __type = @_type
        invalid_properties.push(OpenApi::EnumValidator.error_message("_type", VALID_VALUES_FOR__TYPE)) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      if _carrier = @carrier
        invalid_properties.push(OpenApi::EnumValidator.error_message("carrier", VALID_VALUES_FOR_CARRIER)) unless OpenApi::EnumValidator.valid?(_carrier, VALID_VALUES_FOR_CARRIER)
      end
      if _customs = @customs
        invalid_properties.concat(_customs.list_invalid_properties_for("customs")) if _customs.is_a?(OpenApi::Validatable)
      end

      if _phone_number = @phone_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone_number", _phone_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      if _status = @status
        invalid_properties.push(OpenApi::EnumValidator.error_message("status", VALID_VALUES_FOR_STATUS)) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      if _tracking_number = @tracking_number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tracking_number", _tracking_number.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _tracking_url = @tracking_url
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tracking_url", _tracking_url.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @address.nil?
      if _address = @address
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      return false if @name.nil?
      if _name = @name
        return false if _name.to_s.size > 5000
      end

      return false if @service.nil?
      if _service = @service
        return false unless OpenApi::EnumValidator.valid?(_service, VALID_VALUES_FOR_SERVICE)
      end

      return false if @_type.nil?
      if __type = @_type
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      if _carrier = @carrier
        return false unless OpenApi::EnumValidator.valid?(_carrier, VALID_VALUES_FOR_CARRIER)
      end

      if _customs = @customs
        return false if _customs.is_a?(OpenApi::Validatable) && !_customs.valid?
      end

      if _phone_number = @phone_number
        return false if _phone_number.to_s.size > 5000
      end

      if _status = @status
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      if _tracking_number = @tracking_number
        return false if _tracking_number.to_s.size > 5000
      end

      if _tracking_url = @tracking_url
        return false if _tracking_url.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::Address?)
      if address.nil?
        raise ArgumentError.new("\"address\" is required and cannot be null")
      end
      _address = address.not_nil!
      _address.validate if _address.is_a?(OpenApi::Validatable)
      @address = _address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        raise ArgumentError.new("\"name\" is required and cannot be null")
      end
      _name = name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service Object to be assigned
    def service=(service : String?)
      if service.nil?
        raise ArgumentError.new("\"service\" is required and cannot be null")
      end
      _service = service.not_nil!
      OpenApi::EnumValidator.validate("service", _service, VALID_VALUES_FOR_SERVICE)
      @service = _service
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] carrier Object to be assigned
    def carrier=(carrier : String?)
      if carrier.nil?
        return @carrier = nil
      end
      _carrier = carrier.not_nil!
      OpenApi::EnumValidator.validate("carrier", _carrier, VALID_VALUES_FOR_CARRIER)
      @carrier = _carrier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customs Object to be assigned
    def customs=(customs : Stripe::IssuingCardShippingCustoms1?)
      if customs.nil?
        return @customs = nil
      end
      _customs = customs.not_nil!
      _customs.validate if _customs.is_a?(OpenApi::Validatable)
      @customs = _customs
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eta Object to be assigned
    def eta=(eta : Int64?)
      if eta.nil?
        return @eta = nil
      end
      _eta = eta.not_nil!
      @eta = _eta
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_number Object to be assigned
    def phone_number=(phone_number : String?)
      if phone_number.nil?
        return @phone_number = nil
      end
      _phone_number = phone_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone_number", _phone_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @phone_number = _phone_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] require_signature Object to be assigned
    def require_signature=(require_signature : Bool?)
      if require_signature.nil?
        return @require_signature = nil
      end
      _require_signature = require_signature.not_nil!
      @require_signature = _require_signature
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        return @status = nil
      end
      _status = status.not_nil!
      OpenApi::EnumValidator.validate("status", _status, VALID_VALUES_FOR_STATUS)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tracking_number Object to be assigned
    def tracking_number=(tracking_number : String?)
      if tracking_number.nil?
        return @tracking_number = nil
      end
      _tracking_number = tracking_number.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tracking_number", _tracking_number.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @tracking_number = _tracking_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tracking_url Object to be assigned
    def tracking_url=(tracking_url : String?)
      if tracking_url.nil?
        return @tracking_url = nil
      end
      _tracking_url = tracking_url.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tracking_url", _tracking_url.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @tracking_url = _tracking_url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @name, @service, @_type, @carrier, @carrier_present, @customs, @customs_present, @eta, @eta_present, @phone_number, @phone_number_present, @require_signature, @require_signature_present, @status, @status_present, @tracking_number, @tracking_number_present, @tracking_url, @tracking_url_present)
  end
end
