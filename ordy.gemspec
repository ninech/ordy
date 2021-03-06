lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


Gem::Specification.new do |spec|
  spec.name        = 'ordy'
  spec.version     = File.read('VERSION')
  spec.date        = '2018-11-23'
  spec.summary     = 'Simple sorting gem'
  spec.description = 'Simple sorting gem for RubyObject\'s and ORM\'s '
  spec.authors     = ['nine.ch Development-Team']
  spec.email       = 'development@nine.ch'
  spec.files       = ['lib/ordy.rb']
  spec.homepage    = 'http://github.com/ninech/'
  spec.license     = 'MIT'

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'sqlite3', '<=1.3.13'
  spec.add_development_dependency 'appraisal'

  spec.add_runtime_dependency 'activerecord', '>= 4.0.0'
  spec.add_runtime_dependency 'actionview', '>= 4.0.0'
end
