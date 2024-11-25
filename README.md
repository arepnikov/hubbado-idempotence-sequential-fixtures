# Hubbado Idempotence Sequential Fixtures

This provides TestBench fixtures for https://github.com/hubbado/hubbado-idempotence-sequential/

## Usage

This gem acts like regular TestBench Projection fixture with an assertions that
let you check that correct projections have been made for sequential
idempotence to work.

```ruby
  require 'idempotence/sequential/fixtures'

  entity = Controls::Entity::New.example
  projection = Projection.build(entity)
  event = Controls::Event.example

  fixture(
    Idempotence::Sequential::Fixtures::Projection
    projection,
    event
  ) do |projection_fixture|
    projection_fixture.assert_sequential_idempotence
  )
```

### Installation

```ruby
gem 'hubbado-idempotence-sequential-fixtures'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hubbado-idempotence-sequential-fixtures
