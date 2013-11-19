# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pdf2html/version'

Gem::Specification.new do |s|
  s.name          = 'pdf2html'
  s.version       = Pdf2Html::VERSION.dup
  s.platform      = Gem::Platform::RUBY
  s.author        = 'Aleksandr Schigol'
  s.email         = 'aleksandr@schigol.com'
  s.description   = 'Ruby wrapper for the awesome pdf2htmlex'
  s.summary       = 'Much pdf2htmlex love'
  s.homepage      = 'https://github.com/4oZ/pdf2html'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_runtime_dependency 'cocaine', ['= 0.5.3']

  s.add_development_dependency 'bundler', '>= 1.3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
end
