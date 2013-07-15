Gem::Specification.new do |s|
  s.name = 'ruby_bank'
  s.version = '0.0.0'
  s.date = '2013-07-06'
  s.summary = 'A gem to model a simple banking application.'
  s.description = File.read(File.join(File.dirname(__FILE__), 'README.md'))
  s.author = 'Kryptyk Fysh'
  s.email = 'kryptykphysh@gmail.com'
  s.files = Dir["{bin,lib}/**/*"] + %w(LICENSE README)
  s.homepage = "https://github.com/kryptykfysh/ruby_bank"
  s.executables << ruby_bank
  s.licence = 'MIT'
  s.test_files    = Dir["spec/**/*"]
  s.bindir = 'bin'
  s.post_install_message = 'Thanks for installing RubyBank.'
  s.required_ruby_version = '>=1.9.0'
  s.add_dependency('active-record', '>=4.0.0')
  s.add_dependency('sqlite3', '>=1.3.7')
  s.add_dependency('hirb','>=0.7.1')
  s.add_development_dependency 'rspec'
end