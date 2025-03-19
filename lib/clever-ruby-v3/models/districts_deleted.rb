=begin
#Clever API

#The Clever API

OpenAPI spec version: 3.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require File.expand_path('../event.rb', __FILE__)

module CleverV3
  class DistrictsDeleted < Event
    attr_accessor :data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'data' => :'data',
        :'created' => :'created',
        :'id' => :'id',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'data' => :'',
        :'created' => :'',
        :'id' => :'',
        :'type' => :''
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CleverV3::DistrictsDeleted` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CleverV3::DistrictsDeleted`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'data')
        self.data = attributes[:'data']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      super
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          data == o.data &&
          super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [data].hash
    end
  end
end