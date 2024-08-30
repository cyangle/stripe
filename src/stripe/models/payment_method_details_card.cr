#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_flows_private_payment_methods_card_details_api_resource_enterprise_features_extended_authorization_extended_authorization"
require "./payment_flows_private_payment_methods_card_details_api_resource_enterprise_features_incremental_authorization_incremental_authorization"
require "./payment_flows_private_payment_methods_card_details_api_resource_enterprise_features_overcapture_overcapture"
require "./payment_flows_private_payment_methods_card_details_api_resource_multicapture"
require "./payment_method_details_card_checks"
require "./payment_method_details_card_installments"
require "./payment_method_details_card_network_token"
require "./payment_method_details_card_wallet"
require "./three_d_secure_details_charge"

module Stripe
  #
  class PaymentMethodDetailsCard
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The authorized amount.
    @[JSON::Field(key: "amount_authorized", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter amount_authorized : Int64? = nil

    # Authorization code on the charge.
    @[JSON::Field(key: "authorization_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter authorization_code : String? = nil
    MAX_LENGTH_FOR_AUTHORIZATION_CODE = 5000

    # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "brand", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter brand : String? = nil
    MAX_LENGTH_FOR_BRAND = 5000

    @[JSON::Field(key: "checks", type: Stripe::PaymentMethodDetailsCardChecks?, default: nil, required: true, nullable: true, emit_null: true)]
    getter checks : Stripe::PaymentMethodDetailsCardChecks? = nil

    # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # Two-digit number representing the card's expiration month.
    @[JSON::Field(key: "exp_month", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_month : Int64? = nil

    # Four-digit number representing the card's expiration year.
    @[JSON::Field(key: "exp_year", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter exp_year : Int64? = nil

    # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
    @[JSON::Field(key: "funding", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter funding : String? = nil
    MAX_LENGTH_FOR_FUNDING = 5000

    @[JSON::Field(key: "installments", type: Stripe::PaymentMethodDetailsCardInstallments?, default: nil, required: true, nullable: true, emit_null: true)]
    getter installments : Stripe::PaymentMethodDetailsCardInstallments? = nil

    # The last four digits of the card.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    # ID of the mandate used to make this payment or created by it.
    @[JSON::Field(key: "mandate", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter mandate : String? = nil
    MAX_LENGTH_FOR_MANDATE = 5000

    # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[JSON::Field(key: "network", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter network : String? = nil
    MAX_LENGTH_FOR_NETWORK = 5000

    @[JSON::Field(key: "three_d_secure", type: Stripe::ThreeDSecureDetailsCharge?, default: nil, required: true, nullable: true, emit_null: true)]
    getter three_d_secure : Stripe::ThreeDSecureDetailsCharge? = nil

    @[JSON::Field(key: "wallet", type: Stripe::PaymentMethodDetailsCardWallet?, default: nil, required: true, nullable: true, emit_null: true)]
    getter wallet : Stripe::PaymentMethodDetailsCardWallet? = nil

    # End of Required Properties

    # Optional Properties

    # When using manual capture, a future timestamp at which the charge will be automatically refunded if uncaptured.
    @[JSON::Field(key: "capture_before", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_before : Int64? = nil

    # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "extended_authorization", type: Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesExtendedAuthorizationExtendedAuthorization?, default: nil, required: false, nullable: false, emit_null: false)]
    getter extended_authorization : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesExtendedAuthorizationExtendedAuthorization? = nil

    # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.  *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String? = nil
    MAX_LENGTH_FOR_FINGERPRINT = 5000

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
    @[JSON::Field(key: "iin", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: iin.nil? && !iin_present?)]
    getter iin : String? = nil
    MAX_LENGTH_FOR_IIN = 5000

    @[JSON::Field(ignore: true)]
    property? iin_present : Bool = false

    @[JSON::Field(key: "incremental_authorization", type: Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization?, default: nil, required: false, nullable: false, emit_null: false)]
    getter incremental_authorization : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization? = nil

    # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
    @[JSON::Field(key: "issuer", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: issuer.nil? && !issuer_present?)]
    getter issuer : String? = nil
    MAX_LENGTH_FOR_ISSUER = 5000

    @[JSON::Field(ignore: true)]
    property? issuer_present : Bool = false

    # True if this payment was marked as MOTO and out of scope for SCA.
    @[JSON::Field(key: "moto", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: moto.nil? && !moto_present?)]
    getter moto : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? moto_present : Bool = false

    @[JSON::Field(key: "multicapture", type: Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture?, default: nil, required: false, nullable: false, emit_null: false)]
    getter multicapture : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture? = nil

    @[JSON::Field(key: "network_token", type: Stripe::PaymentMethodDetailsCardNetworkToken?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: network_token.nil? && !network_token_present?)]
    getter network_token : Stripe::PaymentMethodDetailsCardNetworkToken? = nil

    @[JSON::Field(ignore: true)]
    property? network_token_present : Bool = false

    @[JSON::Field(key: "overcapture", type: Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesOvercaptureOvercapture?, default: nil, required: false, nullable: false, emit_null: false)]
    getter overcapture : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesOvercaptureOvercapture? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_authorized : Int64? = nil,
      @authorization_code : String? = nil,
      @brand : String? = nil,
      @checks : Stripe::PaymentMethodDetailsCardChecks? = nil,
      @country : String? = nil,
      @exp_month : Int64? = nil,
      @exp_year : Int64? = nil,
      @funding : String? = nil,
      @installments : Stripe::PaymentMethodDetailsCardInstallments? = nil,
      @last4 : String? = nil,
      @mandate : String? = nil,
      @network : String? = nil,
      @three_d_secure : Stripe::ThreeDSecureDetailsCharge? = nil,
      @wallet : Stripe::PaymentMethodDetailsCardWallet? = nil,
      # Optional properties
      @capture_before : Int64? = nil,
      @description : String? = nil,
      @extended_authorization : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesExtendedAuthorizationExtendedAuthorization? = nil,
      @fingerprint : String? = nil,
      @iin : String? = nil,
      @incremental_authorization : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization? = nil,
      @issuer : String? = nil,
      @moto : Bool? = nil,
      @multicapture : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture? = nil,
      @network_token : Stripe::PaymentMethodDetailsCardNetworkToken? = nil,
      @overcapture : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesOvercaptureOvercapture? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_authorization_code = @authorization_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("authorization_code", _authorization_code.to_s.size, MAX_LENGTH_FOR_AUTHORIZATION_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_brand = @brand).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("brand", _brand.to_s.size, MAX_LENGTH_FOR_BRAND)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_checks = @checks).nil?
        invalid_properties.concat(_checks.list_invalid_properties_for("checks")) if _checks.is_a?(OpenApi::Validatable)
      end
      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"exp_month\" is required and cannot be null") if @exp_month.nil?

      invalid_properties.push("\"exp_year\" is required and cannot be null") if @exp_year.nil?

      unless (_funding = @funding).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("funding", _funding.to_s.size, MAX_LENGTH_FOR_FUNDING)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_installments = @installments).nil?
        invalid_properties.concat(_installments.list_invalid_properties_for("installments")) if _installments.is_a?(OpenApi::Validatable)
      end
      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_mandate = @mandate).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("mandate", _mandate.to_s.size, MAX_LENGTH_FOR_MANDATE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_network = @network).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("network", _network.to_s.size, MAX_LENGTH_FOR_NETWORK)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_three_d_secure = @three_d_secure).nil?
        invalid_properties.concat(_three_d_secure.list_invalid_properties_for("three_d_secure")) if _three_d_secure.is_a?(OpenApi::Validatable)
      end
      unless (_wallet = @wallet).nil?
        invalid_properties.concat(_wallet.list_invalid_properties_for("wallet")) if _wallet.is_a?(OpenApi::Validatable)
      end

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_extended_authorization = @extended_authorization).nil?
        invalid_properties.concat(_extended_authorization.list_invalid_properties_for("extended_authorization")) if _extended_authorization.is_a?(OpenApi::Validatable)
      end
      unless (_fingerprint = @fingerprint).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_iin = @iin).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("iin", _iin.to_s.size, MAX_LENGTH_FOR_IIN)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_incremental_authorization = @incremental_authorization).nil?
        invalid_properties.concat(_incremental_authorization.list_invalid_properties_for("incremental_authorization")) if _incremental_authorization.is_a?(OpenApi::Validatable)
      end
      unless (_issuer = @issuer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("issuer", _issuer.to_s.size, MAX_LENGTH_FOR_ISSUER)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_multicapture = @multicapture).nil?
        invalid_properties.concat(_multicapture.list_invalid_properties_for("multicapture")) if _multicapture.is_a?(OpenApi::Validatable)
      end
      unless (_network_token = @network_token).nil?
        invalid_properties.concat(_network_token.list_invalid_properties_for("network_token")) if _network_token.is_a?(OpenApi::Validatable)
      end
      unless (_overcapture = @overcapture).nil?
        invalid_properties.concat(_overcapture.list_invalid_properties_for("overcapture")) if _overcapture.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_authorization_code = @authorization_code).nil?
        return false if _authorization_code.to_s.size > MAX_LENGTH_FOR_AUTHORIZATION_CODE
      end

      unless (_brand = @brand).nil?
        return false if _brand.to_s.size > MAX_LENGTH_FOR_BRAND
      end

      unless (_checks = @checks).nil?
        return false if _checks.is_a?(OpenApi::Validatable) && !_checks.valid?
      end

      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      return false if @exp_month.nil?

      return false if @exp_year.nil?

      unless (_funding = @funding).nil?
        return false if _funding.to_s.size > MAX_LENGTH_FOR_FUNDING
      end

      unless (_installments = @installments).nil?
        return false if _installments.is_a?(OpenApi::Validatable) && !_installments.valid?
      end

      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
      end

      unless (_mandate = @mandate).nil?
        return false if _mandate.to_s.size > MAX_LENGTH_FOR_MANDATE
      end

      unless (_network = @network).nil?
        return false if _network.to_s.size > MAX_LENGTH_FOR_NETWORK
      end

      unless (_three_d_secure = @three_d_secure).nil?
        return false if _three_d_secure.is_a?(OpenApi::Validatable) && !_three_d_secure.valid?
      end

      unless (_wallet = @wallet).nil?
        return false if _wallet.is_a?(OpenApi::Validatable) && !_wallet.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_extended_authorization = @extended_authorization).nil?
        return false if _extended_authorization.is_a?(OpenApi::Validatable) && !_extended_authorization.valid?
      end

      unless (_fingerprint = @fingerprint).nil?
        return false if _fingerprint.to_s.size > MAX_LENGTH_FOR_FINGERPRINT
      end

      unless (_iin = @iin).nil?
        return false if _iin.to_s.size > MAX_LENGTH_FOR_IIN
      end

      unless (_incremental_authorization = @incremental_authorization).nil?
        return false if _incremental_authorization.is_a?(OpenApi::Validatable) && !_incremental_authorization.valid?
      end

      unless (_issuer = @issuer).nil?
        return false if _issuer.to_s.size > MAX_LENGTH_FOR_ISSUER
      end

      unless (_multicapture = @multicapture).nil?
        return false if _multicapture.is_a?(OpenApi::Validatable) && !_multicapture.valid?
      end

      unless (_network_token = @network_token).nil?
        return false if _network_token.is_a?(OpenApi::Validatable) && !_network_token.valid?
      end

      unless (_overcapture = @overcapture).nil?
        return false if _overcapture.is_a?(OpenApi::Validatable) && !_overcapture.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_authorized Object to be assigned
    def amount_authorized=(new_value : Int64?)
      @amount_authorized = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorization_code Object to be assigned
    def authorization_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("authorization_code", new_value.to_s.size, MAX_LENGTH_FOR_AUTHORIZATION_CODE)
      end

      @authorization_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] brand Object to be assigned
    def brand=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("brand", new_value.to_s.size, MAX_LENGTH_FOR_BRAND)
      end

      @brand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] checks Object to be assigned
    def checks=(new_value : Stripe::PaymentMethodDetailsCardChecks?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @checks = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("country", new_value.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      end

      @country = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_month Object to be assigned
    def exp_month=(new_value : Int64?)
      raise ArgumentError.new("\"exp_month\" is required and cannot be null") if new_value.nil?

      @exp_month = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exp_year Object to be assigned
    def exp_year=(new_value : Int64?)
      raise ArgumentError.new("\"exp_year\" is required and cannot be null") if new_value.nil?

      @exp_year = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding Object to be assigned
    def funding=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("funding", new_value.to_s.size, MAX_LENGTH_FOR_FUNDING)
      end

      @funding = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] installments Object to be assigned
    def installments=(new_value : Stripe::PaymentMethodDetailsCardInstallments?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @installments = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last4", new_value.to_s.size, MAX_LENGTH_FOR_LAST4)
      end

      @last4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate Object to be assigned
    def mandate=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("mandate", new_value.to_s.size, MAX_LENGTH_FOR_MANDATE)
      end

      @mandate = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("network", new_value.to_s.size, MAX_LENGTH_FOR_NETWORK)
      end

      @network = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] three_d_secure Object to be assigned
    def three_d_secure=(new_value : Stripe::ThreeDSecureDetailsCharge?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @three_d_secure = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallet Object to be assigned
    def wallet=(new_value : Stripe::PaymentMethodDetailsCardWallet?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @wallet = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_before Object to be assigned
    def capture_before=(new_value : Int64?)
      @capture_before = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] extended_authorization Object to be assigned
    def extended_authorization=(new_value : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesExtendedAuthorizationExtendedAuthorization?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @extended_authorization = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("fingerprint", new_value.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
      end

      @fingerprint = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iin Object to be assigned
    def iin=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("iin", new_value.to_s.size, MAX_LENGTH_FOR_IIN)
      end

      @iin = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] incremental_authorization Object to be assigned
    def incremental_authorization=(new_value : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @incremental_authorization = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuer Object to be assigned
    def issuer=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("issuer", new_value.to_s.size, MAX_LENGTH_FOR_ISSUER)
      end

      @issuer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] moto Object to be assigned
    def moto=(new_value : Bool?)
      @moto = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] multicapture Object to be assigned
    def multicapture=(new_value : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @multicapture = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network_token Object to be assigned
    def network_token=(new_value : Stripe::PaymentMethodDetailsCardNetworkToken?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @network_token = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] overcapture Object to be assigned
    def overcapture=(new_value : Stripe::PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesOvercaptureOvercapture?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @overcapture = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_authorized, @authorization_code, @brand, @checks, @country, @exp_month, @exp_year, @funding, @installments, @last4, @mandate, @network, @three_d_secure, @wallet, @capture_before, @description, @description_present, @extended_authorization, @fingerprint, @fingerprint_present, @iin, @iin_present, @incremental_authorization, @issuer, @issuer_present, @moto, @moto_present, @multicapture, @network_token, @network_token_present, @overcapture)
  end
end
