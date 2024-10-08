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
  class DisputeEvidenceParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Any server or activity logs showing proof that the customer accessed or downloaded the purchased digital product. This information should include IP addresses, corresponding timestamps, and any detailed recorded activity. Has a maximum character count of 20,000.
    @[JSON::Field(key: "access_activity_log", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter access_activity_log : String? = nil
    MAX_LENGTH_FOR_ACCESS_ACTIVITY_LOG = 20000

    # The billing address provided by the customer.
    @[JSON::Field(key: "billing_address", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_address : String? = nil
    MAX_LENGTH_FOR_BILLING_ADDRESS = 5000

    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your subscription cancellation policy, as shown to the customer.
    @[JSON::Field(key: "cancellation_policy", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_policy : String? = nil

    # An explanation of how and when the customer was shown your refund policy prior to purchase. Has a maximum character count of 20,000.
    @[JSON::Field(key: "cancellation_policy_disclosure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_policy_disclosure : String? = nil
    MAX_LENGTH_FOR_CANCELLATION_POLICY_DISCLOSURE = 20000

    # A justification for why the customer's subscription was not canceled. Has a maximum character count of 20,000.
    @[JSON::Field(key: "cancellation_rebuttal", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_rebuttal : String? = nil
    MAX_LENGTH_FOR_CANCELLATION_REBUTTAL = 20000

    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any communication with the customer that you feel is relevant to your case. Examples include emails proving that the customer received the product or service, or demonstrating their use of or satisfaction with the product or service.
    @[JSON::Field(key: "customer_communication", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_communication : String? = nil

    # The email address of the customer.
    @[JSON::Field(key: "customer_email_address", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_email_address : String? = nil
    MAX_LENGTH_FOR_CUSTOMER_EMAIL_ADDRESS = 5000

    # The name of the customer.
    @[JSON::Field(key: "customer_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_name : String? = nil
    MAX_LENGTH_FOR_CUSTOMER_NAME = 5000

    # The IP address that the customer used when making the purchase.
    @[JSON::Field(key: "customer_purchase_ip", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_purchase_ip : String? = nil
    MAX_LENGTH_FOR_CUSTOMER_PURCHASE_IP = 5000

    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A relevant document or contract showing the customer's signature.
    @[JSON::Field(key: "customer_signature", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_signature : String? = nil

    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation for the prior charge that can uniquely identify the charge, such as a receipt, shipping label, work order, etc. This document should be paired with a similar document from the disputed payment that proves the two payments are separate.
    @[JSON::Field(key: "duplicate_charge_documentation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter duplicate_charge_documentation : String? = nil

    # An explanation of the difference between the disputed charge versus the prior charge that appears to be a duplicate. Has a maximum character count of 20,000.
    @[JSON::Field(key: "duplicate_charge_explanation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter duplicate_charge_explanation : String? = nil
    MAX_LENGTH_FOR_DUPLICATE_CHARGE_EXPLANATION = 20000

    # The Stripe ID for the prior charge which appears to be a duplicate of the disputed charge.
    @[JSON::Field(key: "duplicate_charge_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter duplicate_charge_id : String? = nil
    MAX_LENGTH_FOR_DUPLICATE_CHARGE_ID = 5000

    # A description of the product or service that was sold. Has a maximum character count of 20,000.
    @[JSON::Field(key: "product_description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product_description : String? = nil
    MAX_LENGTH_FOR_PRODUCT_DESCRIPTION = 20000

    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any receipt or message sent to the customer notifying them of the charge.
    @[JSON::Field(key: "receipt", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter receipt : String? = nil

    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your refund policy, as shown to the customer.
    @[JSON::Field(key: "refund_policy", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter refund_policy : String? = nil

    # Documentation demonstrating that the customer was shown your refund policy prior to purchase. Has a maximum character count of 20,000.
    @[JSON::Field(key: "refund_policy_disclosure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter refund_policy_disclosure : String? = nil
    MAX_LENGTH_FOR_REFUND_POLICY_DISCLOSURE = 20000

    # A justification for why the customer is not entitled to a refund. Has a maximum character count of 20,000.
    @[JSON::Field(key: "refund_refusal_explanation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter refund_refusal_explanation : String? = nil
    MAX_LENGTH_FOR_REFUND_REFUSAL_EXPLANATION = 20000

    # The date on which the customer received or began receiving the purchased service, in a clear human-readable format.
    @[JSON::Field(key: "service_date", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter service_date : String? = nil
    MAX_LENGTH_FOR_SERVICE_DATE = 5000

    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a service was provided to the customer. This could include a copy of a signed contract, work order, or other form of written agreement.
    @[JSON::Field(key: "service_documentation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter service_documentation : String? = nil

    # The address to which a physical product was shipped. You should try to include as complete address information as possible.
    @[JSON::Field(key: "shipping_address", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_address : String? = nil
    MAX_LENGTH_FOR_SHIPPING_ADDRESS = 5000

    # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc. If multiple carriers were used for this purchase, please separate them with commas.
    @[JSON::Field(key: "shipping_carrier", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_carrier : String? = nil
    MAX_LENGTH_FOR_SHIPPING_CARRIER = 5000

    # The date on which a physical product began its route to the shipping address, in a clear human-readable format.
    @[JSON::Field(key: "shipping_date", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_date : String? = nil
    MAX_LENGTH_FOR_SHIPPING_DATE = 5000

    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a product was shipped to the customer at the same address the customer provided to you. This could include a copy of the shipment receipt, shipping label, etc. It should show the customer's full shipping address, if possible.
    @[JSON::Field(key: "shipping_documentation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_documentation : String? = nil

    # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
    @[JSON::Field(key: "shipping_tracking_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping_tracking_number : String? = nil
    MAX_LENGTH_FOR_SHIPPING_TRACKING_NUMBER = 5000

    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any additional evidence or statements.
    @[JSON::Field(key: "uncategorized_file", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter uncategorized_file : String? = nil

    # Any additional evidence or statements. Has a maximum character count of 20,000.
    @[JSON::Field(key: "uncategorized_text", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter uncategorized_text : String? = nil
    MAX_LENGTH_FOR_UNCATEGORIZED_TEXT = 20000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @access_activity_log : String? = nil,
      @billing_address : String? = nil,
      @cancellation_policy : String? = nil,
      @cancellation_policy_disclosure : String? = nil,
      @cancellation_rebuttal : String? = nil,
      @customer_communication : String? = nil,
      @customer_email_address : String? = nil,
      @customer_name : String? = nil,
      @customer_purchase_ip : String? = nil,
      @customer_signature : String? = nil,
      @duplicate_charge_documentation : String? = nil,
      @duplicate_charge_explanation : String? = nil,
      @duplicate_charge_id : String? = nil,
      @product_description : String? = nil,
      @receipt : String? = nil,
      @refund_policy : String? = nil,
      @refund_policy_disclosure : String? = nil,
      @refund_refusal_explanation : String? = nil,
      @service_date : String? = nil,
      @service_documentation : String? = nil,
      @shipping_address : String? = nil,
      @shipping_carrier : String? = nil,
      @shipping_date : String? = nil,
      @shipping_documentation : String? = nil,
      @shipping_tracking_number : String? = nil,
      @uncategorized_file : String? = nil,
      @uncategorized_text : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_access_activity_log = @access_activity_log).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("access_activity_log", _access_activity_log.to_s.size, MAX_LENGTH_FOR_ACCESS_ACTIVITY_LOG)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_billing_address = @billing_address).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("billing_address", _billing_address.to_s.size, MAX_LENGTH_FOR_BILLING_ADDRESS)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_cancellation_policy_disclosure = @cancellation_policy_disclosure).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cancellation_policy_disclosure", _cancellation_policy_disclosure.to_s.size, MAX_LENGTH_FOR_CANCELLATION_POLICY_DISCLOSURE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_cancellation_rebuttal = @cancellation_rebuttal).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cancellation_rebuttal", _cancellation_rebuttal.to_s.size, MAX_LENGTH_FOR_CANCELLATION_REBUTTAL)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_customer_email_address = @customer_email_address).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer_email_address", _customer_email_address.to_s.size, MAX_LENGTH_FOR_CUSTOMER_EMAIL_ADDRESS)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_customer_name = @customer_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer_name", _customer_name.to_s.size, MAX_LENGTH_FOR_CUSTOMER_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_customer_purchase_ip = @customer_purchase_ip).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer_purchase_ip", _customer_purchase_ip.to_s.size, MAX_LENGTH_FOR_CUSTOMER_PURCHASE_IP)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_duplicate_charge_explanation = @duplicate_charge_explanation).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("duplicate_charge_explanation", _duplicate_charge_explanation.to_s.size, MAX_LENGTH_FOR_DUPLICATE_CHARGE_EXPLANATION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_duplicate_charge_id = @duplicate_charge_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("duplicate_charge_id", _duplicate_charge_id.to_s.size, MAX_LENGTH_FOR_DUPLICATE_CHARGE_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_product_description = @product_description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product_description", _product_description.to_s.size, MAX_LENGTH_FOR_PRODUCT_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_refund_policy_disclosure = @refund_policy_disclosure).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("refund_policy_disclosure", _refund_policy_disclosure.to_s.size, MAX_LENGTH_FOR_REFUND_POLICY_DISCLOSURE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_refund_refusal_explanation = @refund_refusal_explanation).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("refund_refusal_explanation", _refund_refusal_explanation.to_s.size, MAX_LENGTH_FOR_REFUND_REFUSAL_EXPLANATION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_service_date = @service_date).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("service_date", _service_date.to_s.size, MAX_LENGTH_FOR_SERVICE_DATE)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_shipping_address = @shipping_address).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("shipping_address", _shipping_address.to_s.size, MAX_LENGTH_FOR_SHIPPING_ADDRESS)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_shipping_carrier = @shipping_carrier).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("shipping_carrier", _shipping_carrier.to_s.size, MAX_LENGTH_FOR_SHIPPING_CARRIER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_shipping_date = @shipping_date).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("shipping_date", _shipping_date.to_s.size, MAX_LENGTH_FOR_SHIPPING_DATE)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_shipping_tracking_number = @shipping_tracking_number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("shipping_tracking_number", _shipping_tracking_number.to_s.size, MAX_LENGTH_FOR_SHIPPING_TRACKING_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_uncategorized_text = @uncategorized_text).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("uncategorized_text", _uncategorized_text.to_s.size, MAX_LENGTH_FOR_UNCATEGORIZED_TEXT)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_access_activity_log = @access_activity_log).nil?
        return false if _access_activity_log.to_s.size > MAX_LENGTH_FOR_ACCESS_ACTIVITY_LOG
      end

      unless (_billing_address = @billing_address).nil?
        return false if _billing_address.to_s.size > MAX_LENGTH_FOR_BILLING_ADDRESS
      end

      unless (_cancellation_policy_disclosure = @cancellation_policy_disclosure).nil?
        return false if _cancellation_policy_disclosure.to_s.size > MAX_LENGTH_FOR_CANCELLATION_POLICY_DISCLOSURE
      end

      unless (_cancellation_rebuttal = @cancellation_rebuttal).nil?
        return false if _cancellation_rebuttal.to_s.size > MAX_LENGTH_FOR_CANCELLATION_REBUTTAL
      end

      unless (_customer_email_address = @customer_email_address).nil?
        return false if _customer_email_address.to_s.size > MAX_LENGTH_FOR_CUSTOMER_EMAIL_ADDRESS
      end

      unless (_customer_name = @customer_name).nil?
        return false if _customer_name.to_s.size > MAX_LENGTH_FOR_CUSTOMER_NAME
      end

      unless (_customer_purchase_ip = @customer_purchase_ip).nil?
        return false if _customer_purchase_ip.to_s.size > MAX_LENGTH_FOR_CUSTOMER_PURCHASE_IP
      end

      unless (_duplicate_charge_explanation = @duplicate_charge_explanation).nil?
        return false if _duplicate_charge_explanation.to_s.size > MAX_LENGTH_FOR_DUPLICATE_CHARGE_EXPLANATION
      end

      unless (_duplicate_charge_id = @duplicate_charge_id).nil?
        return false if _duplicate_charge_id.to_s.size > MAX_LENGTH_FOR_DUPLICATE_CHARGE_ID
      end

      unless (_product_description = @product_description).nil?
        return false if _product_description.to_s.size > MAX_LENGTH_FOR_PRODUCT_DESCRIPTION
      end

      unless (_refund_policy_disclosure = @refund_policy_disclosure).nil?
        return false if _refund_policy_disclosure.to_s.size > MAX_LENGTH_FOR_REFUND_POLICY_DISCLOSURE
      end

      unless (_refund_refusal_explanation = @refund_refusal_explanation).nil?
        return false if _refund_refusal_explanation.to_s.size > MAX_LENGTH_FOR_REFUND_REFUSAL_EXPLANATION
      end

      unless (_service_date = @service_date).nil?
        return false if _service_date.to_s.size > MAX_LENGTH_FOR_SERVICE_DATE
      end

      unless (_shipping_address = @shipping_address).nil?
        return false if _shipping_address.to_s.size > MAX_LENGTH_FOR_SHIPPING_ADDRESS
      end

      unless (_shipping_carrier = @shipping_carrier).nil?
        return false if _shipping_carrier.to_s.size > MAX_LENGTH_FOR_SHIPPING_CARRIER
      end

      unless (_shipping_date = @shipping_date).nil?
        return false if _shipping_date.to_s.size > MAX_LENGTH_FOR_SHIPPING_DATE
      end

      unless (_shipping_tracking_number = @shipping_tracking_number).nil?
        return false if _shipping_tracking_number.to_s.size > MAX_LENGTH_FOR_SHIPPING_TRACKING_NUMBER
      end

      unless (_uncategorized_text = @uncategorized_text).nil?
        return false if _uncategorized_text.to_s.size > MAX_LENGTH_FOR_UNCATEGORIZED_TEXT
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] access_activity_log Object to be assigned
    def access_activity_log=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("access_activity_log", new_value.to_s.size, MAX_LENGTH_FOR_ACCESS_ACTIVITY_LOG)
      end

      @access_activity_log = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_address Object to be assigned
    def billing_address=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("billing_address", new_value.to_s.size, MAX_LENGTH_FOR_BILLING_ADDRESS)
      end

      @billing_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_policy Object to be assigned
    def cancellation_policy=(new_value : String?)
      @cancellation_policy = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_policy_disclosure Object to be assigned
    def cancellation_policy_disclosure=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("cancellation_policy_disclosure", new_value.to_s.size, MAX_LENGTH_FOR_CANCELLATION_POLICY_DISCLOSURE)
      end

      @cancellation_policy_disclosure = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_rebuttal Object to be assigned
    def cancellation_rebuttal=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("cancellation_rebuttal", new_value.to_s.size, MAX_LENGTH_FOR_CANCELLATION_REBUTTAL)
      end

      @cancellation_rebuttal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_communication Object to be assigned
    def customer_communication=(new_value : String?)
      @customer_communication = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_email_address Object to be assigned
    def customer_email_address=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("customer_email_address", new_value.to_s.size, MAX_LENGTH_FOR_CUSTOMER_EMAIL_ADDRESS)
      end

      @customer_email_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_name Object to be assigned
    def customer_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("customer_name", new_value.to_s.size, MAX_LENGTH_FOR_CUSTOMER_NAME)
      end

      @customer_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_purchase_ip Object to be assigned
    def customer_purchase_ip=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("customer_purchase_ip", new_value.to_s.size, MAX_LENGTH_FOR_CUSTOMER_PURCHASE_IP)
      end

      @customer_purchase_ip = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_signature Object to be assigned
    def customer_signature=(new_value : String?)
      @customer_signature = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] duplicate_charge_documentation Object to be assigned
    def duplicate_charge_documentation=(new_value : String?)
      @duplicate_charge_documentation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] duplicate_charge_explanation Object to be assigned
    def duplicate_charge_explanation=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("duplicate_charge_explanation", new_value.to_s.size, MAX_LENGTH_FOR_DUPLICATE_CHARGE_EXPLANATION)
      end

      @duplicate_charge_explanation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] duplicate_charge_id Object to be assigned
    def duplicate_charge_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("duplicate_charge_id", new_value.to_s.size, MAX_LENGTH_FOR_DUPLICATE_CHARGE_ID)
      end

      @duplicate_charge_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_description Object to be assigned
    def product_description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("product_description", new_value.to_s.size, MAX_LENGTH_FOR_PRODUCT_DESCRIPTION)
      end

      @product_description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] receipt Object to be assigned
    def receipt=(new_value : String?)
      @receipt = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_policy Object to be assigned
    def refund_policy=(new_value : String?)
      @refund_policy = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_policy_disclosure Object to be assigned
    def refund_policy_disclosure=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("refund_policy_disclosure", new_value.to_s.size, MAX_LENGTH_FOR_REFUND_POLICY_DISCLOSURE)
      end

      @refund_policy_disclosure = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_refusal_explanation Object to be assigned
    def refund_refusal_explanation=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("refund_refusal_explanation", new_value.to_s.size, MAX_LENGTH_FOR_REFUND_REFUSAL_EXPLANATION)
      end

      @refund_refusal_explanation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service_date Object to be assigned
    def service_date=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("service_date", new_value.to_s.size, MAX_LENGTH_FOR_SERVICE_DATE)
      end

      @service_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service_documentation Object to be assigned
    def service_documentation=(new_value : String?)
      @service_documentation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_address Object to be assigned
    def shipping_address=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("shipping_address", new_value.to_s.size, MAX_LENGTH_FOR_SHIPPING_ADDRESS)
      end

      @shipping_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_carrier Object to be assigned
    def shipping_carrier=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("shipping_carrier", new_value.to_s.size, MAX_LENGTH_FOR_SHIPPING_CARRIER)
      end

      @shipping_carrier = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_date Object to be assigned
    def shipping_date=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("shipping_date", new_value.to_s.size, MAX_LENGTH_FOR_SHIPPING_DATE)
      end

      @shipping_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_documentation Object to be assigned
    def shipping_documentation=(new_value : String?)
      @shipping_documentation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_tracking_number Object to be assigned
    def shipping_tracking_number=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("shipping_tracking_number", new_value.to_s.size, MAX_LENGTH_FOR_SHIPPING_TRACKING_NUMBER)
      end

      @shipping_tracking_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uncategorized_file Object to be assigned
    def uncategorized_file=(new_value : String?)
      @uncategorized_file = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uncategorized_text Object to be assigned
    def uncategorized_text=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("uncategorized_text", new_value.to_s.size, MAX_LENGTH_FOR_UNCATEGORIZED_TEXT)
      end

      @uncategorized_text = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@access_activity_log, @billing_address, @cancellation_policy, @cancellation_policy_disclosure, @cancellation_rebuttal, @customer_communication, @customer_email_address, @customer_name, @customer_purchase_ip, @customer_signature, @duplicate_charge_documentation, @duplicate_charge_explanation, @duplicate_charge_id, @product_description, @receipt, @refund_policy, @refund_policy_disclosure, @refund_refusal_explanation, @service_date, @service_documentation, @shipping_address, @shipping_carrier, @shipping_date, @shipping_documentation, @shipping_tracking_number, @uncategorized_file, @uncategorized_text)
  end
end
