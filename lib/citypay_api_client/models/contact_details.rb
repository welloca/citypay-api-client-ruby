=begin
#CityPay Payment API

# This CityPay API is a HTTP RESTful payment API used for direct server to server transactional processing. It provides a number of payment mechanisms including: Internet, MOTO, Continuous Authority transaction processing, 3-D Secure decision handling using RFA Secure, Authorisation, Refunding, Pre-Authorisation, Cancellation/Voids and Completion processing. The API is also capable of tokinsed payments using Card Holder Accounts.  ## Compliance and Security Your application will need to adhere to PCI-DSS standards to operate safely and to meet requirements set out by  Visa and MasterCard and the PCI Security Standards Council. These include  * Data must be collected using TLS version 1.2 using [strong cryptography](#enabled-tls-ciphers). We will not accept calls to our API at   lower grade encryption levels. We regularly scan our TLS endpoints for vulnerabilities and perform TLS assessments   as part of our compliance program. * The application must not store sensitive card holder data (CHD) such as the card security code (CSC) or   primary access number (PAN) * The application must not display the full card number on receipts, it is recommended to mask the PAN   and show the last 4 digits. The API will return this for you for ease of receipt creation * If you are developing a website, you will be required to perform regular scans on the network where you host the   application to meet your compliance obligations * You will be required to be PCI Compliant and the application must adhere to the security standard. Further information   is available from [https://www.pcisecuritystandards.org/](https://www.pcisecuritystandards.org/) * The API verifies that the request is for a valid account and originates from a trusted source using the remote IP   address. Our application firewalls analyse data that may be an attempt to break a large number of security common   security vulnerabilities. 

Contact: support@citypay.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module CityPayApiClient
  class ContactDetails
    # The first line of the address for the shipping contact.
    attr_accessor :address1

    # The second line of the address for the shipping contact.
    attr_accessor :address2

    # The third line of the address for the shipping contact.
    attr_accessor :address3

    # The area such as city, department, parish for the shipping contact.
    attr_accessor :area

    # The company name for the shipping contact if the contact is a corporate contact.
    attr_accessor :company

    # The country code in ISO 3166 format. The country value may be used for fraud analysis and for   acceptance of the transaction. 
    attr_accessor :country

    # An email address for the shipping contact which may be used for correspondence.
    attr_accessor :email

    # The first name  of the shipping contact.
    attr_accessor :firstname

    # The last name or surname of the shipping contact.
    attr_accessor :lastname

    # A mobile number for the shipping contact the mobile number is often required by delivery companies to ensure they are able to be in contact when required.
    attr_accessor :mobile_no

    # The postcode or zip code of the address which may be used for fraud analysis.
    attr_accessor :postcode

    # A telephone number for the shipping contact.
    attr_accessor :telephone_no

    # A title for the shipping contact such as Mr, Mrs, Ms, M. Mme. etc.
    attr_accessor :title

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'address3' => :'address3',
        :'area' => :'area',
        :'company' => :'company',
        :'country' => :'country',
        :'email' => :'email',
        :'firstname' => :'firstname',
        :'lastname' => :'lastname',
        :'mobile_no' => :'mobile_no',
        :'postcode' => :'postcode',
        :'telephone_no' => :'telephone_no',
        :'title' => :'title'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'address1' => :'String',
        :'address2' => :'String',
        :'address3' => :'String',
        :'area' => :'String',
        :'company' => :'String',
        :'country' => :'String',
        :'email' => :'String',
        :'firstname' => :'String',
        :'lastname' => :'String',
        :'mobile_no' => :'String',
        :'postcode' => :'String',
        :'telephone_no' => :'String',
        :'title' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CityPayApiClient::ContactDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CityPayApiClient::ContactDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.key?(:'address3')
        self.address3 = attributes[:'address3']
      end

      if attributes.key?(:'area')
        self.area = attributes[:'area']
      end

      if attributes.key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'firstname')
        self.firstname = attributes[:'firstname']
      end

      if attributes.key?(:'lastname')
        self.lastname = attributes[:'lastname']
      end

      if attributes.key?(:'mobile_no')
        self.mobile_no = attributes[:'mobile_no']
      end

      if attributes.key?(:'postcode')
        self.postcode = attributes[:'postcode']
      end

      if attributes.key?(:'telephone_no')
        self.telephone_no = attributes[:'telephone_no']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@address1.nil? && @address1.to_s.length > 50
        invalid_properties.push('invalid value for "address1", the character length must be smaller than or equal to 50.')
      end

      if !@address2.nil? && @address2.to_s.length > 50
        invalid_properties.push('invalid value for "address2", the character length must be smaller than or equal to 50.')
      end

      if !@address3.nil? && @address3.to_s.length > 50
        invalid_properties.push('invalid value for "address3", the character length must be smaller than or equal to 50.')
      end

      if !@area.nil? && @area.to_s.length > 50
        invalid_properties.push('invalid value for "area", the character length must be smaller than or equal to 50.')
      end

      if !@company.nil? && @company.to_s.length > 50
        invalid_properties.push('invalid value for "company", the character length must be smaller than or equal to 50.')
      end

      if !@country.nil? && @country.to_s.length > 2
        invalid_properties.push('invalid value for "country", the character length must be smaller than or equal to 2.')
      end

      if !@country.nil? && @country.to_s.length < 2
        invalid_properties.push('invalid value for "country", the character length must be great than or equal to 2.')
      end

      if !@email.nil? && @email.to_s.length > 254
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 254.')
      end

      if !@mobile_no.nil? && @mobile_no.to_s.length > 20
        invalid_properties.push('invalid value for "mobile_no", the character length must be smaller than or equal to 20.')
      end

      if !@postcode.nil? && @postcode.to_s.length > 16
        invalid_properties.push('invalid value for "postcode", the character length must be smaller than or equal to 16.')
      end

      if !@telephone_no.nil? && @telephone_no.to_s.length > 20
        invalid_properties.push('invalid value for "telephone_no", the character length must be smaller than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@address1.nil? && @address1.to_s.length > 50
      return false if !@address2.nil? && @address2.to_s.length > 50
      return false if !@address3.nil? && @address3.to_s.length > 50
      return false if !@area.nil? && @area.to_s.length > 50
      return false if !@company.nil? && @company.to_s.length > 50
      return false if !@country.nil? && @country.to_s.length > 2
      return false if !@country.nil? && @country.to_s.length < 2
      return false if !@email.nil? && @email.to_s.length > 254
      return false if !@mobile_no.nil? && @mobile_no.to_s.length > 20
      return false if !@postcode.nil? && @postcode.to_s.length > 16
      return false if !@telephone_no.nil? && @telephone_no.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] address1 Value to be assigned
    def address1=(address1)
      if !address1.nil? && address1.to_s.length > 50
        fail ArgumentError, 'invalid value for "address1", the character length must be smaller than or equal to 50.'
      end

      @address1 = address1
    end

    # Custom attribute writer method with validation
    # @param [Object] address2 Value to be assigned
    def address2=(address2)
      if !address2.nil? && address2.to_s.length > 50
        fail ArgumentError, 'invalid value for "address2", the character length must be smaller than or equal to 50.'
      end

      @address2 = address2
    end

    # Custom attribute writer method with validation
    # @param [Object] address3 Value to be assigned
    def address3=(address3)
      if !address3.nil? && address3.to_s.length > 50
        fail ArgumentError, 'invalid value for "address3", the character length must be smaller than or equal to 50.'
      end

      @address3 = address3
    end

    # Custom attribute writer method with validation
    # @param [Object] area Value to be assigned
    def area=(area)
      if !area.nil? && area.to_s.length > 50
        fail ArgumentError, 'invalid value for "area", the character length must be smaller than or equal to 50.'
      end

      @area = area
    end

    # Custom attribute writer method with validation
    # @param [Object] company Value to be assigned
    def company=(company)
      if !company.nil? && company.to_s.length > 50
        fail ArgumentError, 'invalid value for "company", the character length must be smaller than or equal to 50.'
      end

      @company = company
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if !country.nil? && country.to_s.length > 2
        fail ArgumentError, 'invalid value for "country", the character length must be smaller than or equal to 2.'
      end

      if !country.nil? && country.to_s.length < 2
        fail ArgumentError, 'invalid value for "country", the character length must be great than or equal to 2.'
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length > 254
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 254.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] mobile_no Value to be assigned
    def mobile_no=(mobile_no)
      if !mobile_no.nil? && mobile_no.to_s.length > 20
        fail ArgumentError, 'invalid value for "mobile_no", the character length must be smaller than or equal to 20.'
      end

      @mobile_no = mobile_no
    end

    # Custom attribute writer method with validation
    # @param [Object] postcode Value to be assigned
    def postcode=(postcode)
      if !postcode.nil? && postcode.to_s.length > 16
        fail ArgumentError, 'invalid value for "postcode", the character length must be smaller than or equal to 16.'
      end

      @postcode = postcode
    end

    # Custom attribute writer method with validation
    # @param [Object] telephone_no Value to be assigned
    def telephone_no=(telephone_no)
      if !telephone_no.nil? && telephone_no.to_s.length > 20
        fail ArgumentError, 'invalid value for "telephone_no", the character length must be smaller than or equal to 20.'
      end

      @telephone_no = telephone_no
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          address3 == o.address3 &&
          area == o.area &&
          company == o.company &&
          country == o.country &&
          email == o.email &&
          firstname == o.firstname &&
          lastname == o.lastname &&
          mobile_no == o.mobile_no &&
          postcode == o.postcode &&
          telephone_no == o.telephone_no &&
          title == o.title
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address1, address2, address3, area, company, country, email, firstname, lastname, mobile_no, postcode, telephone_no, title].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = CityPayApiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
