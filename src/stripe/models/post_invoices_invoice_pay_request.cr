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
  class PostInvoicesInvoicePayRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # In cases where the source used to pay the invoice has insufficient funds, passing `forgive=true` controls whether a charge should be attempted for the full amount available on the source, up to the amount to fully pay the invoice. This effectively forgives the difference between the amount available on the source and the amount due.   Passing `forgive=false` will fail the charge if the source hasn't been pre-funded with the right amount. An example for this case is with ACH Credit Transfers and wires: if the amount wired is less than the amount due by a small amount, you might want to forgive the difference. Defaults to `false`.
    @[JSON::Field(key: "forgive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter forgive : Bool? = nil

    # ID of the mandate to be used for this invoice. It must correspond to the payment method used to pay the invoice, including the payment_method param or the invoice's default_payment_method or default_source, if set.
    @[JSON::Field(key: "mandate", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mandate : String? = nil

    # Indicates if a customer is on or off-session while an invoice payment is attempted. Defaults to `true` (off-session).
    @[JSON::Field(key: "off_session", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter off_session : Bool? = nil

    # Boolean representing whether an invoice is paid outside of Stripe. This will result in no charge being made. Defaults to `false`.
    @[JSON::Field(key: "paid_out_of_band", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paid_out_of_band : Bool? = nil

    # A PaymentMethod to be charged. The PaymentMethod must be the ID of a PaymentMethod belonging to the customer associated with the invoice being paid.
    @[JSON::Field(key: "payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method : String? = nil

    # A payment source to be charged. The source must be the ID of a source belonging to the customer associated with the invoice being paid.
    @[JSON::Field(key: "source", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter source : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @expand : Array(String)? = nil,
      @forgive : Bool? = nil,
      @mandate : String? = nil,
      @off_session : Bool? = nil,
      @paid_out_of_band : Bool? = nil,
      @payment_method : String? = nil,
      @source : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _mandate = @mandate
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("mandate", _mandate.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      if _payment_method = @payment_method
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_method", _payment_method.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _source = @source
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("source", _source.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _mandate = @mandate
        return false if _mandate.to_s.size > 5000
      end

      if _payment_method = @payment_method
        return false if _payment_method.to_s.size > 5000
      end

      if _source = @source
        return false if _source.to_s.size > 5000
      end

      true
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
    # @param [Object] forgive Object to be assigned
    def forgive=(forgive : Bool?)
      if forgive.nil?
        return @forgive = nil
      end
      _forgive = forgive.not_nil!
      @forgive = _forgive
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate Object to be assigned
    def mandate=(mandate : String?)
      if mandate.nil?
        return @mandate = nil
      end
      _mandate = mandate.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("mandate", _mandate.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @mandate = _mandate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] off_session Object to be assigned
    def off_session=(off_session : Bool?)
      if off_session.nil?
        return @off_session = nil
      end
      _off_session = off_session.not_nil!
      @off_session = _off_session
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paid_out_of_band Object to be assigned
    def paid_out_of_band=(paid_out_of_band : Bool?)
      if paid_out_of_band.nil?
        return @paid_out_of_band = nil
      end
      _paid_out_of_band = paid_out_of_band.not_nil!
      @paid_out_of_band = _paid_out_of_band
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method : String?)
      if payment_method.nil?
        return @payment_method = nil
      end
      _payment_method = payment_method.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_method", _payment_method.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @payment_method = _payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source : String?)
      if source.nil?
        return @source = nil
      end
      _source = source.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("source", _source.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @source = _source
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@expand, @forgive, @mandate, @off_session, @paid_out_of_band, @payment_method, @source)
  end
end
