$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'working_days/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'working_days'
  s.version     = WorkingDays::VERSION
  s.authors     = ['Sumit Mahamuni']
  s.email       = ['mahamunisumit@gmail.com']
  s.homepage    = ''
  s.summary     = ''
  s.description = ''

  s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'holidays'

  s.add_development_dependency 'rspec'
end
