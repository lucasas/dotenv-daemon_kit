# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "dotenv-daemon_kit"
  spec.version       = "0.0.1"
  spec.authors       = ["Ricardo Valeriano"]
  spec.email         = ["ricardo.valeriano@gmail.com"]
  spec.description   = %q{Autoload dotenv in a DaemonKit application.}
  spec.summary       = %q{Autoload dotenv in a DaemonKit application. Just with a require.}
  spec.homepage      = "https://github.com/ricardovaleriano/dotenv-daemon_kit"
  spec.license       = "MIT"

  spec.files         = ["lib/dotenv/daemon_kit.rb"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.name          = "dotenv-daemon_kit"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "dotenv"
  spec.add_dependency "daemon-kit"
end
