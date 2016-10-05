# encoding: utf-8

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'jekyll-default-layout/version'

Gem::Specification.new do |s|
  s.name          = 'jekyll-default-layout'
  s.version       = Jekyll::Default::Layout::VERSION
  s.authors       = ['Ben Balter']
  s.email         = ['ben.balter@github.com']
  s.homepage      = 'https://github.com/benbalter/jekyll-default-layout'
  s.summary       = 'TODO: summary'
  s.description   = 'TODO: description'

  s.files         = `git ls-files app lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
end
