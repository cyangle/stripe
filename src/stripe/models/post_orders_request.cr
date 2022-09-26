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
  class PostOrdersRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost.
    @[JSON::Field(key: "line_items", type: Array(Stripe::CreateParams)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter line_items : Array(Stripe::CreateParams)? = nil

    # Optional properties

    @[JSON::Field(key: "automatic_tax", type: Stripe::AutomaticTax1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter automatic_tax : Stripe::AutomaticTax1? = nil

    @[JSON::Field(key: "billing_details", type: Stripe::PostOrdersRequestBillingDetails?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_details : Stripe::PostOrdersRequestBillingDetails? = nil

    @[JSON::Field(key: "client_permissions", type: Stripe::ClientPermissions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_permissions : Stripe::ClientPermissions? = nil

    # The customer associated with this order.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    @[JSON::Field(key: "discounts", type: Stripe::PostOrdersRequestDiscounts?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discounts : Stripe::PostOrdersRequestDiscounts? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # The IP address of the purchaser for this order.
    @[JSON::Field(key: "ip_address", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ip_address : String? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "payment", type: Stripe::CreateParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment : Stripe::CreateParams1? = nil

    @[JSON::Field(key: "shipping_cost", type: Stripe::PostOrdersRequestShippingCost?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_cost : Stripe::PostOrdersRequestShippingCost? = nil

    @[JSON::Field(key: "shipping_details", type: Stripe::PostOrdersRequestShippingDetails?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_details : Stripe::PostOrdersRequestShippingDetails? = nil

    @[JSON::Field(key: "tax_details", type: Stripe::TaxDetails?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_details : Stripe::TaxDetails? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currency : String? = nil,
      @line_items : Array(Stripe::CreateParams)? = nil,
      # Optional properties
      @automatic_tax : Stripe::AutomaticTax1? = nil,
      @billing_details : Stripe::PostOrdersRequestBillingDetails? = nil,
      @client_permissions : Stripe::ClientPermissions? = nil,
      @customer : String? = nil,
      @description : String? = nil,
      @discounts : Stripe::PostOrdersRequestDiscounts? = nil,
      @expand : Array(String)? = nil,
      @ip_address : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @payment : Stripe::CreateParams1? = nil,
      @shipping_cost : Stripe::PostOrdersRequestShippingCost? = nil,
      @shipping_details : Stripe::PostOrdersRequestShippingDetails? = nil,
      @tax_details : Stripe::TaxDetails? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?
      invalid_properties.push("\"line_items\" is required and cannot be null") if @line_items.nil?
      # Container line_items array has values of Stripe::CreateParams
      # This is a model automatic_tax : Stripe::AutomaticTax1?
      # This is a model billing_details : Stripe::PostOrdersRequestBillingDetails?
      # This is a model client_permissions : Stripe::ClientPermissions?
      if _customer = @customer
        if _customer.to_s.size > 5000
          invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _description = @description
        if _description.to_s.size > 5000
          invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model discounts : Stripe::PostOrdersRequestDiscounts?
      # This is a model payment : Stripe::CreateParams1?
      # This is a model shipping_cost : Stripe::PostOrdersRequestShippingCost?
      # This is a model shipping_details : Stripe::PostOrdersRequestShippingDetails?
      # This is a model tax_details : Stripe::TaxDetails?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @currency.nil?
      return false if @line_items.nil?
      if _customer = @customer
        return false if _customer.to_s.size > 5000
      end
      if _description = @description
        return false if _description.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      @currency = currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line_items Object to be assigned
    def line_items=(line_items : Array(Stripe::CreateParams)?)
      if line_items.nil?
        raise ArgumentError.new("\"line_items\" is required and cannot be null")
      end
      @line_items = line_items
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] automatic_tax Object to be assigned
    def automatic_tax=(automatic_tax : Stripe::AutomaticTax1?)
      if automatic_tax.nil?
        return @automatic_tax = nil
      end
      @automatic_tax = automatic_tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_details Object to be assigned
    def billing_details=(billing_details : Stripe::PostOrdersRequestBillingDetails?)
      if billing_details.nil?
        return @billing_details = nil
      end
      @billing_details = billing_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_permissions Object to be assigned
    def client_permissions=(client_permissions : Stripe::ClientPermissions?)
      if client_permissions.nil?
        return @client_permissions = nil
      end
      @client_permissions = client_permissions
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
      if _description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discounts Object to be assigned
    def discounts=(discounts : Stripe::PostOrdersRequestDiscounts?)
      if discounts.nil?
        return @discounts = nil
      end
      @discounts = discounts
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
    # @param [Object] ip_address Object to be assigned
    def ip_address=(ip_address : String?)
      if ip_address.nil?
        return @ip_address = nil
      end
      @ip_address = ip_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      @metadata = metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment Object to be assigned
    def payment=(payment : Stripe::CreateParams1?)
      if payment.nil?
        return @payment = nil
      end
      @payment = payment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_cost Object to be assigned
    def shipping_cost=(shipping_cost : Stripe::PostOrdersRequestShippingCost?)
      if shipping_cost.nil?
        return @shipping_cost = nil
      end
      @shipping_cost = shipping_cost
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_details Object to be assigned
    def shipping_details=(shipping_details : Stripe::PostOrdersRequestShippingDetails?)
      if shipping_details.nil?
        return @shipping_details = nil
      end
      @shipping_details = shipping_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_details Object to be assigned
    def tax_details=(tax_details : Stripe::TaxDetails?)
      if tax_details.nil?
        return @tax_details = nil
      end
      @tax_details = tax_details
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
    def_equals_and_hash(@currency, @line_items, @automatic_tax, @billing_details, @client_permissions, @customer, @description, @discounts, @expand, @ip_address, @metadata, @payment, @shipping_cost, @shipping_details, @tax_details)
  end
end
