=begin
#CityPay Payment API

# This CityPay API is a HTTP RESTful payment API used for direct server to server transactional processing. It provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing, 3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and Completion processing. The API is also capable of tokinsed payments using Card Holder Accounts.  ## Compliance and Security <aside class=\"notice\">   Before we begin a reminder that your application will need to adhere to PCI-DSS standards to operate safely   and to meet requirements set out by Visa and MasterCard and the PCI Security Standards Council including: </aside>  * Data must be collected using TLS version 1.2 using [strong cryptography](#enabled-tls-ciphers). We will not accept calls to our API at   lower grade encryption levels. We regularly scan our TLS endpoints for vulnerabilities and perform TLS assessments   as part of our compliance program. * The application must not store sensitive card holder data (CHD) such as the card security code (CSC) or   primary access number (PAN) * The application must not display the full card number on receipts, it is recommended to mask the PAN   and show the last 4 digits. The API will return this for you for ease of receipt creation * If you are developing a website, you will be required to perform regular scans on the network where you host the   application to meet your compliance obligations * You will be required to be PCI Compliant and the application must adhere to the security standard. Further information   is available from [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/) * The API verifies that the request is for a valid account and originates from a trusted source using the remote IP   address. Our application firewalls analyse data that may be an attempt to break a large number of security common   security vulnerabilities. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CityPayApiClient::CardHolderAccount
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CardHolderAccount' do
  before do
    # run before each test
    @instance = CityPayApiClient::CardHolderAccount.new
    json1 = '{"CardHolderAccount": {
        "account_id": "abc123",
        "cards": [{
                      "bin_commercial": false,
                      "bin_corporate": false,
                      "bin_country_issued": "GBR",
                      "bin_currency": "GBP",
                      "bin_description": "Visa Classic",
                      "bin_eu": false,
                      "card_id": "2U1XV3PJSeUXFNzXidACn2TyCzAK",
                      "card_status": "ACTIVE",
                      "default": true,
                      "expmonth": 7,
                      "expyear": 2022,
                      "label": "TestVisa/0002",
                      "label2": "TestVisa/0002,Exp:7/2022",
                      "scheme": "TestVisa",
                      "token": "ctPCzxq4WxEwWbkG7whRPLRCG27vYFNzsEDNihYmDwqsBc5QEXnFRvq2j5oRyb56ErRVEQaBN7PFMEDtjQQXDQpfxKkp3AxbyeGo61RhKBjFTFegaP4LBZUxFZimsXW8Deae9VyhWSgS2o8AXzTJU9UP3bo8kRcpataxuH3fJj3JHDnyeZt"
                  }],
        "contact": {
            "address1": "7 Esplanade",
            "address2": "",
            "address3": "",
            "area": "St Helier",
            "company": "CityPay Ltd",
            "country": "JE",
            "email": "support@citypay.com",
            "firstname": "Joe",
            "lastname": "Wicks",
            "mobile_no": "077112123456",
            "postcode": "JE2 3QA",
            "telephone_no": "+4415341234567",
            "title": "Mr"},
        "date_created": "2020-08-01T09:15:24Z",
        "default_card_id": "2U1XV3PJSeUXFNzXidACn2TyCzAK",
        "default_card_index": 0,
        "status": "ACTIVE",
        "unique_id": "Ew3BKeWNdL3qKQU7XK7Sbt2eAL5WFW4AfoASDSA"
    }}'

    json2 = '{
        "account_id": "abc123",
        "cards": [{
                      "bin_commercial": false,
                      "bin_corporate": false,
                      "bin_country_issued": "GBR",
                      "bin_currency": "GBP",
                      "bin_description": "Visa Classic",
                      "bin_eu": false,
                      "card_id": "2U1XV3PJSeUXFNzXidACn2TyCzAK",
                      "card_status": "ACTIVE",
                      "default": true,
                      "expmonth": 7,
                      "expyear": 2022,
                      "label": "TestVisa/0002",
                      "label2": "TestVisa/0002,Exp:7/2022",
                      "scheme": "TestVisa",
                      "token": "ctPCzxq4WxEwWbkG7whRPLRCG27vYFNzsEDNihYmDwqsBc5QEXnFRvq2j5oRyb56ErRVEQaBN7PFMEDtjQQXDQpfxKkp3AxbyeGo61RhKBjFTFegaP4LBZUxFZimsXW8Deae9VyhWSgS2o8AXzTJU9UP3bo8kRcpataxuH3fJj3JHDnyeZt"
                  }],
        "contact": {
            "address1": "7 Esplanade",
            "address2": "",
            "address3": "",
            "area": "St Helier",
            "company": "CityPay Ltd",
            "country": "JE",
            "email": "support@citypay.com",
            "firstname": "Joe",
            "lastname": "Wicks",
            "mobile_no": "077112123456",
            "postcode": "JE2 3QA",
            "telephone_no": "+4415341234567",
            "title": "Mr"},
        "date_created": "2020-08-01T09:15:24Z",
        "default_card_id": "2U1XV3PJSeUXFNzXidACn2TyCzAK",
        "default_card_index": 0,
        "status": "ACTIVE",
        "unique_id": "Ew3BKeWNdL3qKQU7XK7Sbt2eAL5WFW4AfoASDSA"
    }'

    data1 = JSON.parse(json1, :symbolize_names => true)
    data2 = JSON.parse(json2, :symbolize_names => true)
    @account1 = CityPayApiClient::ApiClient.new.convert_to_type(data1, "CardHolderAccount")
    @account2 = CityPayApiClient::ApiClient.new.convert_to_type(data2, "CardHolderAccount")
  end

  after do
    # run after each test
  end

  describe 'JSON parser' do
    it 'should parse an account' do
      expect(@account1).to be_instance_of(CityPayApiClient::CardHolderAccount)
      expect(@account2).to be_instance_of(CityPayApiClient::CardHolderAccount)
    end
  end

  describe 'test an instance of CardHolderAccount' do
    it 'should create an instance of CardHolderAccount' do
      expect(@instance).to be_instance_of(CityPayApiClient::CardHolderAccount)
    end
  end
  describe 'test attribute "account_id"' do
    it 'should work' do
      expect(@account1.account_id).to eq("abc123")
      expect(@account2.account_id).to eq("abc123")
    end
  end

  describe 'test attribute "cards"' do
    it 'should work' do
      expect(@account1.cards.length).to eq(1)
      @c1 = @account1.cards[0]
      expect(@c1.bin_commercial).to eq(false)
      expect(@c1.bin_corporate).to eq(false)
      expect(@c1.bin_country_issued).to eq("GBR")
      expect(@c1.bin_currency).to eq("GBP")
      expect(@c1.bin_description).to eq("Visa Classic")
      expect(@c1.bin_eu).to eq(false)
      expect(@c1.card_id).to eq("2U1XV3PJSeUXFNzXidACn2TyCzAK")
      expect(@c1.card_status).to eq("ACTIVE")
      expect(@c1.default).to eq(true)
      expect(@c1.expmonth).to eq(7)
      expect(@c1.expyear).to eq(2022)
      expect(@c1.label).to eq("TestVisa/0002")
      expect(@c1.label2).to eq("TestVisa/0002,Exp:7/2022")
      expect(@c1.scheme).to eq("TestVisa")
      expect(@c1.token).to eq("ctPCzxq4WxEwWbkG7whRPLRCG27vYFNzsEDNihYmDwqsBc5QEXnFRvq2j5oRyb56ErRVEQaBN7PFMEDtjQQXDQpfxKkp3AxbyeGo61RhKBjFTFegaP4LBZUxFZimsXW8Deae9VyhWSgS2o8AXzTJU9UP3bo8kRcpataxuH3fJj3JHDnyeZt")
      expect(@account2.cards.length).to eq(1)
      @c2 = @account2.cards[0]
      expect(@c2.bin_commercial).to eq(false)
      expect(@c2.bin_corporate).to eq(false)
      expect(@c2.bin_country_issued).to eq("GBR")
      expect(@c2.bin_currency).to eq("GBP")
      expect(@c2.bin_description).to eq("Visa Classic")
      expect(@c2.bin_eu).to eq(false)
      expect(@c2.card_id).to eq("2U1XV3PJSeUXFNzXidACn2TyCzAK")
      expect(@c2.card_status).to eq("ACTIVE")
      expect(@c2.default).to eq(true)
      expect(@c2.expmonth).to eq(7)
      expect(@c2.expyear).to eq(2022)
      expect(@c2.label).to eq("TestVisa/0002")
      expect(@c2.label2).to eq("TestVisa/0002,Exp:7/2022")
      expect(@c2.scheme).to eq("TestVisa")
      expect(@c2.token).to eq("ctPCzxq4WxEwWbkG7whRPLRCG27vYFNzsEDNihYmDwqsBc5QEXnFRvq2j5oRyb56ErRVEQaBN7PFMEDtjQQXDQpfxKkp3AxbyeGo61RhKBjFTFegaP4LBZUxFZimsXW8Deae9VyhWSgS2o8AXzTJU9UP3bo8kRcpataxuH3fJj3JHDnyeZt")
    end
  end

  describe 'test attribute "contact"' do
    it 'should work' do
      @c1 = @account1.contact
      expect(@c1.address1).to eq("7 Esplanade")
      expect(@c1.address2).to eq("")
      expect(@c1.address3).to eq("")
      expect(@c1.area).to eq("St Helier")
      expect(@c1.company).to eq("CityPay Ltd")
      expect(@c1.country).to eq("JE")
      expect(@c1.email).to eq("support@citypay.com")
      expect(@c1.firstname).to eq("Joe")
      expect(@c1.lastname).to eq("Wicks")
      expect(@c1.mobile_no).to eq("077112123456")
      expect(@c1.postcode).to eq("JE2 3QA")
      expect(@c1.telephone_no).to eq("+4415341234567")
      expect(@c1.title).to eq("Mr")
      @c2 = @account2.contact
      expect(@c2.address1).to eq("7 Esplanade")
      expect(@c2.address2).to eq("")
      expect(@c2.address3).to eq("")
      expect(@c2.area).to eq("St Helier")
      expect(@c2.company).to eq("CityPay Ltd")
      expect(@c2.country).to eq("JE")
      expect(@c2.email).to eq("support@citypay.com")
      expect(@c2.firstname).to eq("Joe")
      expect(@c2.lastname).to eq("Wicks")
      expect(@c2.mobile_no).to eq("077112123456")
      expect(@c2.postcode).to eq("JE2 3QA")
      expect(@c2.telephone_no).to eq("+4415341234567")
      expect(@c2.title).to eq("Mr")
    end
  end

  describe 'test attribute "date_created"' do
    it 'should work' do
      expect(@account1.date_created).to eq(DateTime.parse("2020-08-01T09:15:24Z"))
      expect(@account2.date_created).to eq(DateTime.parse("2020-08-01T09:15:24Z"))
    end
  end

  describe 'test attribute "default_card_id"' do
    it 'should work' do
      expect(@account1.default_card_id).to eq("2U1XV3PJSeUXFNzXidACn2TyCzAK")
      expect(@account2.default_card_id).to eq("2U1XV3PJSeUXFNzXidACn2TyCzAK")
    end
  end

  describe 'test attribute "default_card_index"' do
    it 'should work' do
      expect(@account1.default_card_index).to eq("0")
      expect(@account2.default_card_index).to eq("0")
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      expect(@account1.status).to eq("ACTIVE")
      expect(@account2.status).to eq("ACTIVE")
    end
  end

  describe 'test attribute "unique_id"' do
    it 'should work' do
      expect(@account1.unique_id).to eq("Ew3BKeWNdL3qKQU7XK7Sbt2eAL5WFW4AfoASDSA")
      expect(@account2.unique_id).to eq("Ew3BKeWNdL3qKQU7XK7Sbt2eAL5WFW4AfoASDSA")
    end
  end

end
