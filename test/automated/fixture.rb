require_relative 'automated_init'

context "Fixture" do
  entity = Controls::Entity::New.example
  projection = Controls::Projection::Example.build(entity)
  event = Controls::Event.example

  fixture = Projection.build(
    projection,
    event,
    &:assert_sequential_idempotence
  )

  fixture.()

  context 'Before applying' do
    context "Causation message is not processed" do
      test "Passed" do
        assert fixture.test_session.test_passed?(
          'Before applying', 'Causation message is not processed'
        )
      end
    end

    context "Event is not processed" do
      test "Passed" do
        assert fixture.test_session.test_passed?(
          'Before applying', 'Event is not processed'
        )
      end
    end
  end

  context 'After applying' do
    context 'Causation message is processed' do
      test "Passed" do
        assert fixture.test_session.test_passed?(
          'After applying',
          'Causation message is processed'
        )
      end
    end

    context 'Event is not processed' do
      test "Passed" do
        assert fixture.test_session.test_passed?(
          'After applying',
          'Event is not processed'
        )
      end
    end
  end
end
