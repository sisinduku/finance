require_relative 'lib/finance/version'

Gem::Specification.new do |spec|
  spec.name          = 'finance'
  spec.version       = Finance::VERSION
  spec.authors       = ['Saptanto Sindu']
  spec.email         = ['saptanto.sindu@gmail.com']

  spec.summary       = 'Finance app - Gem for helping your finance need'
  spec.description   = 'Fincance app can help you manage your income and tax.
  This support Individual, Government, and Enterprise reporting'
  spec.homepage      = 'https://github.com/sisinduku/finance'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.3')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/sisinduku/finance'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
