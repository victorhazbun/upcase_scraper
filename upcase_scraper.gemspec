# frozen_string_literal: true
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'upcase_scraper/version'

Gem::Specification.new do |spec|
  spec.name          = 'upcase_scraper'
  spec.version       = UpcaseScraper::VERSION
  spec.authors       = ['victorhazbun']
  spec.email         = ['victorhazbun87@gmail.com']

  spec.summary       = 'Upcase web scrapper'
  spec.description   = 'CLI browser '
  spec.homepage      = 'https://www.homepage.com'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org/'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'cucumber', '~> 2.4'
  spec.add_development_dependency 'aruba', '~> 0.14.6'
  spec.add_dependency 'mechanize', '~> 2.7', '>= 2.7.4'
  spec.add_dependency 'thor', '~> 0.20'

end
