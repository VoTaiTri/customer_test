require_relative 'lib/customer_test/version'

Gem::Specification.new do |spec|
  spec.name          = "customer_test"
  spec.version       = CustomerTest::VERSION
  spec.authors       = ["VoTaiTri"]
  spec.email         = ["votaitri.hust@gmail.com"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = "customer_test"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "cucumber", "~> 4.0"
  spec.add_development_dependency "aruba", "~> 1.0"
  spec.add_dependency "thor", "~> 1.0"
end
