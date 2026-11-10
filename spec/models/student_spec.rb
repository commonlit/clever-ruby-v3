require 'spec_helper'

describe CleverV3::Student do
  describe '.build_from_hash' do
    it 'deserializes known attributes' do
      student = described_class.build_from_hash(
        ell_status: 'Y',
        grade: '5',
        sis_id: 'abc123',
        schools: ['school-1', 'school-2']
      )

      expect(student.ell_status).to eq('Y')
      expect(student.grade).to eq('5')
      expect(student.sis_id).to eq('abc123')
      expect(student.schools).to eq(['school-1', 'school-2'])
      expect(student).to be_valid
    end

    it 'accepts nil for nullable enum attributes' do
      student = described_class.build_from_hash(ell_status: nil, grade: nil)

      expect(student.ell_status).to be_nil
      expect(student.grade).to be_nil
      expect(student).to be_valid
    end

    it 'raises on a value outside an enum' do
      expect { described_class.build_from_hash(ell_status: 'maybe') }
        .to raise_error(ArgumentError, /invalid value for .ell_status./)
    end
  end

  describe '#to_hash' do
    it 'round-trips through build_from_hash' do
      attributes = { ell_status: 'N', gender: 'F', grade: 'Kindergarten', student_number: '42' }
      student = described_class.build_from_hash(attributes)

      expect(described_class.build_from_hash(student.to_hash)).to eq(student)
    end
  end

  describe 'equality' do
    it 'treats students with the same attributes as equal' do
      a = described_class.new(sis_id: '1', grade: '3')
      b = described_class.new(sis_id: '1', grade: '3')

      expect(a).to eq(b)
      expect(a.hash).to eq(b.hash)
    end

    it 'treats students with different attributes as unequal' do
      expect(described_class.new(sis_id: '1')).not_to eq(described_class.new(sis_id: '2'))
    end
  end
end
