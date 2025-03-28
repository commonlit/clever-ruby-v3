=begin
#Clever API

#The Clever API

OpenAPI spec version: 3.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module CleverV3
  class Section
    attr_accessor :course

    attr_accessor :created

    attr_accessor :district

    attr_accessor :ext

    attr_accessor :grade

    attr_accessor :id

    attr_accessor :last_modified

    attr_accessor :name

    attr_accessor :period

    attr_accessor :school

    attr_accessor :section_number

    attr_accessor :sis_id

    attr_accessor :students

    attr_accessor :subject

    attr_accessor :teacher

    attr_accessor :teachers

    attr_accessor :term_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'course' => :'course',
        :'created' => :'created',
        :'district' => :'district',
        :'ext' => :'ext',
        :'grade' => :'grade',
        :'id' => :'id',
        :'last_modified' => :'last_modified',
        :'name' => :'name',
        :'period' => :'period',
        :'school' => :'school',
        :'section_number' => :'section_number',
        :'sis_id' => :'sis_id',
        :'students' => :'students',
        :'subject' => :'subject',
        :'teacher' => :'teacher',
        :'teachers' => :'teachers',
        :'term_id' => :'term_id'
      }
    end

    # Attribute type mapping.
        # Attribute type mapping.
    def self.openapi_types
      {
        :'course' => :'String',
        :'created' => :'String',
        :'district' => :'String',
        :'ext' => :'Object',
        :'grade' => :'String',
        :'id' => :'String',
        :'last_modified' => :'String',
        :'name' => :'String',
        :'period' => :'String',
        :'school' => :'String',
        :'section_number' => :'String',
        :'sis_id' => :'String',
        :'students' => :'Array<String>',
        :'subject' => :'String',
        :'teacher' => :'String',
        :'teachers' => :'Array<String>',
        :'term_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'course',
        :'grade',
        :'period',
        :'section_number',
        :'subject',
        :'teacher',
        :'term_id'
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CleverV3::Section` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CleverV3::Section`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'course')
        self.course = attributes[:'course']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'district')
        self.district = attributes[:'district']
      end

      if attributes.key?(:'ext')
        self.ext = attributes[:'ext']
      end

      if attributes.key?(:'grade')
        self.grade = attributes[:'grade']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'period')
        self.period = attributes[:'period']
      end

      if attributes.key?(:'school')
        self.school = attributes[:'school']
      end

      if attributes.key?(:'section_number')
        self.section_number = attributes[:'section_number']
      end

      if attributes.key?(:'sis_id')
        self.sis_id = attributes[:'sis_id']
      end

      if attributes.key?(:'students')
        if (value = attributes[:'students']).is_a?(Array)
          self.students = value
        end
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'teacher')
        self.teacher = attributes[:'teacher']
      end

      if attributes.key?(:'teachers')
        if (value = attributes[:'teachers']).is_a?(Array)
          self.teachers = value
        end
      end

      if attributes.key?(:'term_id')
        self.term_id = attributes[:'term_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      grade_validator = EnumAttributeValidator.new('String', ['InfantToddler', 'Preschool', 'PreKindergarten', 'TransitionalKindergarten', 'Kindergarten', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', 'PostGraduate', 'Ungraded', 'Other', ''])
      return false unless grade_validator.valid?(@grade)
      subject_validator = EnumAttributeValidator.new('String', ['english/language arts', 'math', 'science', 'social studies', 'language', 'homeroom/advisory', 'interventions/online learning', 'technology and engineering', 'PE and health', 'arts and music', 'other', ''])
      return false unless subject_validator.valid?(@subject)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] grade Object to be assigned
    def grade=(grade)
      validator = EnumAttributeValidator.new('String', ['InfantToddler', 'Preschool', 'PreKindergarten', 'TransitionalKindergarten', 'Kindergarten', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', 'PostGraduate', 'Ungraded', 'Other', ''])
      unless validator.valid?(grade)
        fail ArgumentError, "invalid value for \"grade\", must be one of #{validator.allowable_values}."
      end
      @grade = grade
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subject Object to be assigned
    def subject=(subject)
      validator = EnumAttributeValidator.new('String', ['english/language arts', 'math', 'science', 'social studies', 'language', 'homeroom/advisory', 'interventions/online learning', 'technology and engineering', 'PE and health', 'arts and music', 'other', ''])
      unless validator.valid?(subject)
        fail ArgumentError, "invalid value for \"subject\", must be one of #{validator.allowable_values}."
      end
      @subject = subject
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          course == o.course &&
          created == o.created &&
          district == o.district &&
          ext == o.ext &&
          grade == o.grade &&
          id == o.id &&
          last_modified == o.last_modified &&
          name == o.name &&
          period == o.period &&
          school == o.school &&
          section_number == o.section_number &&
          sis_id == o.sis_id &&
          students == o.students &&
          subject == o.subject &&
          teacher == o.teacher &&
          teachers == o.teachers &&
          term_id == o.term_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [course, created, district, ext, grade, id, last_modified, name, period, school, section_number, sis_id, students, subject, teacher, teachers, term_id].hash
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
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
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
      when :DateTime
        DateTime.parse(value)
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
        CleverV3.const_get(type).build_from_hash(value)
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
    end  end
end
