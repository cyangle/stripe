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
  class PostChargesChargeRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # The ID of an existing customer that will be associated with this request. This field may only be updated if there is no existing associated customer with this charge.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil

    # An arbitrary string which you can attach to a charge object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "fraud_details", type: Stripe::FraudDetails?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fraud_details : Stripe::FraudDetails? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    # This is the email address that the receipt for this charge will be sent to. If this field is updated, then a new email receipt will be sent to the updated address.
    @[JSON::Field(key: "receipt_email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter receipt_email : String? = nil

    @[JSON::Field(key: "shipping", type: Stripe::OptionalFieldsShipping?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : Stripe::OptionalFieldsShipping? = nil

    # A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://stripe.com/docs/connect/charges-transfers#transfer-options) for details.
    @[JSON::Field(key: "transfer_group", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_group : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @customer : String? = nil,
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @fraud_details : Stripe::FraudDetails? = nil,
      @metadata : Stripe::PostAccountRequestMetadata? = nil,
      @receipt_email : String? = nil,
      @shipping : Stripe::OptionalFieldsShipping? = nil,
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if _customer = @customer
        if _customer.to_s.size > 5000
          invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _description = @description
        if _description.to_s.size > 40000
          invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 40000.")
        end
      end
      # This is a model fraud_details : Stripe::FraudDetails?
      # This is a model metadata : Stripe::PostAccountRequestMetadata?
      if _receipt_email = @receipt_email
        if _receipt_email.to_s.size > 5000
          invalid_properties.push("invalid value for \"receipt_email\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model shipping : Stripe::OptionalFieldsShipping?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _customer = @customer
        return false if _customer.to_s.size > 5000
      end
      if _description = @description
        return false if _description.to_s.size > 40000
      end
      if _receipt_email = @receipt_email
        return false if _receipt_email.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : String?)
      if customer.nil?
        return @customer = nil
      end
      _customer = customer.not_nil!
      if _customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      if _description.to_s.size > 40000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 40000.")
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      @expand = expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fraud_details Object to be assigned
    def fraud_details=(fraud_details : Stripe::FraudDetails?)
      if fraud_details.nil?
        return @fraud_details = nil
      end
      @fraud_details = fraud_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      @metadata = metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt_email Object to be assigned
    def receipt_email=(receipt_email : String?)
      if receipt_email.nil?
        return @receipt_email = nil
      end
      _receipt_email = receipt_email.not_nil!
      if _receipt_email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"receipt_email\", the character length must be smaller than or equal to 5000.")
      end

      @receipt_email = receipt_email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : Stripe::OptionalFieldsShipping?)
      if shipping.nil?
        return @shipping = nil
      end
      @shipping = shipping
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_group Object to be assigned
    def transfer_group=(transfer_group : String?)
      if transfer_group.nil?
        return @transfer_group = nil
      end
      @transfer_group = transfer_group
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
    def_equals_and_hash(@customer, @description, @expand, @fraud_details, @metadata, @receipt_email, @shipping, @transfer_group)
  end
end
