# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_games/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_games"
  spec.version       = RubyGames::VERSION
  spec.authors       = ["Ben Taitelbaum"]
  spec.email         = ["ben@coshx.com"]

  spec.summary       = %q{Ruby Card Games}
  spec.description   = %q{Longer Description}
  spec.homepage      = "https://github.com/btaitelb/ruby_rails_puppet_training"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = [ "README.md", "LICENSE.txt", "Gemfile" ]
  spec.files += Dir['lib/*.rb'] + Dir['lib/**/*.rb'] + Dir['exe/*']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "sinatra", "~> 2.0"
end
