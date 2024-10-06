module Idempotence
  module Sequential
    module Fixtures
      module Controls
        module Entity
          def self.id
            ID.example(increment: id_increment)
          end

          def self.id_increment
            11
          end

          class Example
            include Schema::DataStructure
            include EntitySequences
          end

          module New
            def self.example
              Entity::Example.new
            end
          end
        end
      end
    end
  end
end
