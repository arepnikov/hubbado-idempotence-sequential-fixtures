#!/usr/bin/env ruby

require_relative 'interactive_init'

context "Projection" do
  entity = Controls::Entity::New.example
  projection = Controls::Projection::Example.build(entity)
  event = Controls::Event.example

  fixture(
    Projection,
    projection,
    event,
    &:assert_sequential_idempotence
  )
end
