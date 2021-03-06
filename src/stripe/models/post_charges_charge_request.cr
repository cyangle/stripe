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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostChargesChargeRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # The ID of an existing customer that will be associated with this request. This field may only be updated if there is no existing associated customer with this charge.
    @[JSON::Field(key: "customer", type: String?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : String?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # An arbitrary string which you can attach to a charge object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "fraud_details", type: FraudDetails?, presence: true, ignore_serialize: fraud_details.nil? && !fraud_details_present?)]
    property fraud_details : FraudDetails?

    @[JSON::Field(ignore: true)]
    property? fraud_details_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # This is the email address that the receipt for this charge will be sent to. If this field is updated, then a new email receipt will be sent to the updated address.
    @[JSON::Field(key: "receipt_email", type: String?, presence: true, ignore_serialize: receipt_email.nil? && !receipt_email_present?)]
    getter receipt_email : String?

    @[JSON::Field(ignore: true)]
    property? receipt_email_present : Bool = false

    @[JSON::Field(key: "shipping", type: OptionalFieldsShipping?, presence: true, ignore_serialize: shipping.nil? && !shipping_present?)]
    property shipping : OptionalFieldsShipping?

    @[JSON::Field(ignore: true)]
    property? shipping_present : Bool = false

    # A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://stripe.com/docs/connect/charges-transfers#transfer-options) for details.
    @[JSON::Field(key: "transfer_group", type: String?, presence: true, ignore_serialize: transfer_group.nil? && !transfer_group_present?)]
    property transfer_group : String?

    @[JSON::Field(ignore: true)]
    property? transfer_group_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @customer : String? = nil,
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @fraud_details : FraudDetails? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @receipt_email : String? = nil,
      @shipping : OptionalFieldsShipping? = nil,
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@customer.nil? && @customer.to_s.size > 5000
        invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 40000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 40000.")
      end

      if !@receipt_email.nil? && @receipt_email.to_s.size > 5000
        invalid_properties.push("invalid value for \"receipt_email\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@customer.nil? && @customer.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 40000
      return false if !@receipt_email.nil? && @receipt_email.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer Value to be assigned
    def customer=(customer : String?)
      if !customer.nil? && customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = customer
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description : String?)
      if !description.nil? && description.to_s.size > 40000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 40000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] receipt_email Value to be assigned
    def receipt_email=(receipt_email : String?)
      if !receipt_email.nil? && receipt_email.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"receipt_email\", the character length must be smaller than or equal to 5000.")
      end

      @receipt_email = receipt_email
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
    def_equals_and_hash(@customer, @customer_present, @description, @description_present, @expand, @expand_present, @fraud_details, @fraud_details_present, @metadata, @metadata_present, @receipt_email, @receipt_email_present, @shipping, @shipping_present, @transfer_group, @transfer_group_present)
  end
end
