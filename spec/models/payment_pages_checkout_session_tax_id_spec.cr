#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for Stripe::PaymentPagesCheckoutSessionTaxId
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Stripe::PaymentPagesCheckoutSessionTaxId do
  describe "test an instance of PaymentPagesCheckoutSessionTaxId" do
    it "should create an instance of PaymentPagesCheckoutSessionTaxId" do
      # instance = Stripe::PaymentPagesCheckoutSessionTaxId.new
      # expect(instance).to be_instance_of(Stripe::PaymentPagesCheckoutSessionTaxId)
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["ae_trn", "au_abn", "au_arn", "br_cnpj", "br_cpf", "ca_bn", "ca_gst_hst", "ca_pst_bc", "ca_pst_mb", "ca_pst_sk", "ca_qst", "ch_vat", "cl_tin", "es_cif", "eu_vat", "gb_vat", "ge_vat", "hk_br", "id_npwp", "il_vat", "in_gst", "jp_cn", "jp_rn", "kr_brn", "li_uid", "mx_rfc", "my_frp", "my_itn", "my_sst", "no_vat", "nz_gst", "ru_inn", "ru_kpp", "sa_vat", "sg_gst", "sg_uen", "th_vat", "tw_vat", "ua_vat", "unknown", "us_ein", "za_vat"])
      # validator.allowable_values.each do |value|
      #   expect { instance._type = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'value'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end