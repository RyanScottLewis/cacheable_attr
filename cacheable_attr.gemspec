# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cacheable_attr"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Scott Lewis"]
  s.date = "2012-12-11"
  s.description = "Cache attributes on your objects."
  s.email = "ryan@rynet.us"
  s.files = ["LICENSE", "README.md", "cacheable_attr.gemspec", "lib/cacheable_attr.rb", "lib/cacheable_attr/version.rb", "pkg/cacheable_attr-0.1.0.gem"]
  s.homepage = "http://github.com/RyanScottLewis/cacheable_attr"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Adds cacheable attributes to any Ruby object."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<version>, ["~> 1.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.2"])
      s.add_development_dependency(%q<activesupport>, ["~> 3.2"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 2.1"])
      s.add_development_dependency(%q<guard-yard>, ["~> 2.0"])
      s.add_development_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_development_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_development_dependency(%q<redcarpet>, ["~> 2.2"])
      s.add_development_dependency(%q<github-markup>, ["~> 0.7"])
    else
      s.add_dependency(%q<version>, ["~> 1.0"])
      s.add_dependency(%q<bundler>, ["~> 1.2"])
      s.add_dependency(%q<activesupport>, ["~> 3.2"])
      s.add_dependency(%q<guard-rspec>, ["~> 2.1"])
      s.add_dependency(%q<guard-yard>, ["~> 2.0"])
      s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_dependency(%q<redcarpet>, ["~> 2.2"])
      s.add_dependency(%q<github-markup>, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<version>, ["~> 1.0"])
    s.add_dependency(%q<bundler>, ["~> 1.2"])
    s.add_dependency(%q<activesupport>, ["~> 3.2"])
    s.add_dependency(%q<guard-rspec>, ["~> 2.1"])
    s.add_dependency(%q<guard-yard>, ["~> 2.0"])
    s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
    s.add_dependency(%q<fuubar>, ["~> 1.1"])
    s.add_dependency(%q<redcarpet>, ["~> 2.2"])
    s.add_dependency(%q<github-markup>, ["~> 0.7"])
  end
end
