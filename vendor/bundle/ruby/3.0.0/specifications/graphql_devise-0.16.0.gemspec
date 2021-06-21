# -*- encoding: utf-8 -*-
# stub: graphql_devise 0.16.0 ruby lib

Gem::Specification.new do |s|
  s.name = "graphql_devise".freeze
  s.version = "0.16.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "https://github.com/graphql-devise/graphql_devise", "source_code_uri" => "https://github.com/graphql-devise/graphql_devise" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mario Celi".freeze, "David Revelo".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-05-20"
  s.description = "GraphQL queries and mutations on top of devise_token_auth".freeze
  s.email = ["mcelicalderon@gmail.com".freeze, "david.revelo.uio@gmail.com".freeze]
  s.homepage = "https://github.com/graphql-devise/graphql_devise".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.0".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "GraphQL queries and mutations on top of devise_token_auth".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<devise_token_auth>.freeze, [">= 0.1.43", "< 2.0"])
    s.add_runtime_dependency(%q<graphql>.freeze, [">= 1.8", "< 1.13.0"])
    s.add_runtime_dependency(%q<rails>.freeze, [">= 4.2", "< 6.2"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_development_dependency(%q<coveralls-ruby>.freeze, ["~> 0.2"])
    s.add_development_dependency(%q<factory_bot>.freeze, [">= 0"])
    s.add_development_dependency(%q<faker>.freeze, [">= 0"])
    s.add_development_dependency(%q<generator_spec>.freeze, [">= 0"])
    s.add_development_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, ["~> 0.12.2"])
    s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 4.0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["= 0.68.1"])
    s.add_development_dependency(%q<rubocop-performance>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop-rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
  else
    s.add_dependency(%q<devise_token_auth>.freeze, [">= 0.1.43", "< 2.0"])
    s.add_dependency(%q<graphql>.freeze, [">= 1.8", "< 1.13.0"])
    s.add_dependency(%q<rails>.freeze, [">= 4.2", "< 6.2"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls-ruby>.freeze, ["~> 0.2"])
    s.add_dependency(%q<factory_bot>.freeze, [">= 0"])
    s.add_dependency(%q<faker>.freeze, [">= 0"])
    s.add_dependency(%q<generator_spec>.freeze, [">= 0"])
    s.add_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.12.2"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 4.0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.68.1"])
    s.add_dependency(%q<rubocop-performance>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
  end
end
