module Idempotence
  module Sequential
    module Fixtures
      module Controls
        module Event
          def self.example
            attributes = {
              example_id: example_id
            }

            metadata = Controls::Metadata.data
            Example.build(attributes, metadata)
          end

          def self.example_id
            Entity.id
          end

          class Example
            include Messaging::Message

            attribute :example_id, String
          end
        end
      end
    end
  end
end
