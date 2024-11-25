module Idempotence
  module Sequential
    module Fixtures
      class Projection < EntityProjection::Fixtures::Projection
        initializer :projection, :control_entity, :entity, :event, :causation_message, :test_block

        def self.build(projection, event, causation_message = nil, &test_block)
          entity = projection.entity
          control_entity = entity.clone

          causation_message ||= Controls::Message.example
          event.metadata.global_position = causation_message.metadata.global_position + 1
          event.metadata.follow(causation_message.metadata)

          new(projection, control_entity, entity, event, causation_message, test_block)
        end

        def assert_sequential_idempotence
          context 'Before applying' do
            test 'Causation message is not processed' do
              refute control_entity.message_processed?(causation_message)
            end

            test 'Event is not processed' do
              refute control_entity.message_processed?(event)
            end
          end

          context 'After applying' do
            test 'Causation message is processed' do
              assert entity.message_processed?(causation_message)
            end

            test 'Event is not processed' do
              refute entity.message_processed?(event)
            end
          end
        end
      end
    end
  end
end
