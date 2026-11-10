require 'spec_helper'

describe CleverV3::ApiClient do
  subject(:client) { described_class.new }

  def event(type, id:)
    {
      data: {
        created: '2024-01-01T00:00:00.000Z',
        id: id,
        type: type,
        data: { object: { id: "#{id}-object" } }
      }
    }
  end

  describe '#convert_to_type' do
    it 'parses each event in an EventsResponse into its typed subclass' do
      payload = {
        data: [event('users.created', id: 'evt-1'), event('sections.deleted', id: 'evt-2')],
        links: []
      }

      response = client.convert_to_type(payload, 'EventsResponse')

      expect(response).to be_a(CleverV3::EventsResponse)
      expect(response.data.map(&:class)).to all(eq(CleverV3::EventResponse))
      expect(response.data.map { |r| r.data.class })
        .to eq([CleverV3::UsersCreated, CleverV3::SectionsDeleted])
      expect(response.data.map { |r| r.data.id }).to eq(['evt-1', 'evt-2'])
    end

    it 'parses a single EventResponse into its typed subclass' do
      response = client.convert_to_type(event('schools.updated', id: 'evt-3'), 'EventResponse')

      expect(response).to be_a(CleverV3::EventResponse)
      expect(response.data).to be_a(CleverV3::SchoolsUpdated)
      expect(response.data.type).to eq('schools.updated')
    end

    it 'falls back to the generic Event class for unknown event types' do
      response = nil
      expect {
        response = client.convert_to_type(event('widgets.created', id: 'evt-4'), 'EventResponse')
      }.to output(/WidgetsCreated class not found/).to_stdout

      expect(response.data).to be_an_instance_of(CleverV3::Event)
      expect(response.data.id).to eq('evt-4')
    end

    it 'converts arrays of models' do
      students = client.convert_to_type([{ grade: '1' }, { grade: '2' }], 'Array<Student>')

      expect(students.map(&:grade)).to eq(['1', '2'])
    end
  end
end
