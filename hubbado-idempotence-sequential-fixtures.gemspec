Gem::Specification.new do |spec|
  spec.name     = "hubbado-idempotence-sequential-fixtures"
  spec.version  = "1.0.0"
  spec.authors  = ["Alexander Repnikov", "Sam Stickland"]
  spec.email    = ["aleksander.repnikov@gmail.com", "sam@hubbado.com"]

  spec.summary  = "TestBench fixtures for hubbado-idempotence-sequential"
  spec.homepage = "https://www.github.com/hubbado/hubbado-idempotence-sequential-fixtures"
  spec.license  = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.3")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.require_paths = ["lib"]
  spec.files = Dir.glob('{lib}/**/*')

  spec.add_dependency 'evt-entity_projection-fixtures'
  spec.add_dependency 'evt-messaging-fixtures'
  spec.add_dependency 'hubbado-idempotence-sequential'

  spec.add_development_dependency "hubbado-style"
  spec.add_development_dependency "test_bench"
end
