# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("lib", __dir__)
require "jekyll-default-layout/version"

Gem::Specification.new do |s|
  s.name          = "jekyll-default-layout"
  s.version       = JekyllDefaultLayout::VERSION
  s.authors       = ["Ben Balter"]
  s.email         = ["ben.balter@github.com"]
  s.homepage      = "https://github.com/benbalter/jekyll-default-layout"
  s.summary       = "Silently sets default layouts for Jekyll pages and posts"

  s.files         = `git ls-files app lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ["lib"]
  s.license       = "MIT"

  s.add_runtime_dependency "jekyll", ">= 3.0", "< 5.0"
  s.add_development_dependency "kramdown-parser-gfm", "~> 1.0"
  s.add_development_dependency "rspec", "~> 3.5"
  s.add_development_dependency "rubocop", "~> 1.0"
  s.add_development_dependency "rubocop-jekyll", "~> 0.11"
  s.add_development_dependency "rubocop-performance", "~> 1.6"
  s.add_development_dependency "rubocop-rspec", "~> 3.0"
end
