module Idempotence
  module Sequential
    module Fixtures
      module Controls
        module Projection
          class Example
            include ::EntityProjection

            entity_name :example

            apply Event::Example do |event|
              example.record_sequence(event)
            end
          end
        end
      end
    end
  end
end
