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
  class Duplicate
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    @[JSON::Field(key: "additional_documentation", type: BusinessProfileSpecsSupportUrl?, presence: true, ignore_serialize: additional_documentation.nil? && !additional_documentation_present?)]
    property additional_documentation : BusinessProfileSpecsSupportUrl?

    @[JSON::Field(ignore: true)]
    property? additional_documentation_present : Bool = false

    @[JSON::Field(key: "card_statement", type: BusinessProfileSpecsSupportUrl?, presence: true, ignore_serialize: card_statement.nil? && !card_statement_present?)]
    property card_statement : BusinessProfileSpecsSupportUrl?

    @[JSON::Field(ignore: true)]
    property? card_statement_present : Bool = false

    @[JSON::Field(key: "cash_receipt", type: BusinessProfileSpecsSupportUrl?, presence: true, ignore_serialize: cash_receipt.nil? && !cash_receipt_present?)]
    property cash_receipt : BusinessProfileSpecsSupportUrl?

    @[JSON::Field(ignore: true)]
    property? cash_receipt_present : Bool = false

    @[JSON::Field(key: "check_image", type: BusinessProfileSpecsSupportUrl?, presence: true, ignore_serialize: check_image.nil? && !check_image_present?)]
    property check_image : BusinessProfileSpecsSupportUrl?

    @[JSON::Field(ignore: true)]
    property? check_image_present : Bool = false

    @[JSON::Field(key: "explanation", type: String?, presence: true, ignore_serialize: explanation.nil? && !explanation_present?)]
    getter explanation : String?

    @[JSON::Field(ignore: true)]
    property? explanation_present : Bool = false

    @[JSON::Field(key: "original_transaction", type: String?, presence: true, ignore_serialize: original_transaction.nil? && !original_transaction_present?)]
    getter original_transaction : String?

    @[JSON::Field(ignore: true)]
    property? original_transaction_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @additional_documentation : BusinessProfileSpecsSupportUrl? = nil, 
      @card_statement : BusinessProfileSpecsSupportUrl? = nil, 
      @cash_receipt : BusinessProfileSpecsSupportUrl? = nil, 
      @check_image : BusinessProfileSpecsSupportUrl? = nil, 
      @explanation : String? = nil, 
      @original_transaction : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@explanation.nil? && @explanation.to_s.size > 1500
        invalid_properties.push("invalid value for \"explanation\", the character length must be smaller than or equal to 1500.")
      end

      if !@original_transaction.nil? && @original_transaction.to_s.size > 5000
        invalid_properties.push("invalid value for \"original_transaction\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@explanation.nil? && @explanation.to_s.size > 1500
      return false if !@original_transaction.nil? && @original_transaction.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] explanation Value to be assigned
    def explanation=(explanation)
      if !explanation.nil? && explanation.to_s.size > 1500
        raise ArgumentError.new("invalid value for \"explanation\", the character length must be smaller than or equal to 1500.")
      end

      @explanation = explanation
    end

    # Custom attribute writer method with validation
    # @param [Object] original_transaction Value to be assigned
    def original_transaction=(original_transaction)
      if !original_transaction.nil? && original_transaction.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"original_transaction\", the character length must be smaller than or equal to 5000.")
      end

      @original_transaction = original_transaction
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
    def_equals_and_hash(@additional_documentation, @card_statement, @cash_receipt, @check_image, @explanation, @original_transaction)
  end
end
