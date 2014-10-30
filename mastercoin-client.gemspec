# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mastercoin/version"

Gem::Specification.new do |s|
  s.licenses    = [ 'MIT' ]
  s.name        = "mastercoin-client"
  s.version     = Mastercoin::VERSION
  s.authors     = ["Loco"]
  s.email       = ["anton.nsoft@gmail.com"]
  s.homepage    = "http://github.com/MeLoco1/mastercoin-client"
  s.summary     = %q{Provides a Ruby library to the complete Mastercoin JSON-RPC API.}
  s.description = "Provides a Ruby library to the complete Bitcoin JSON-RPC API. "+
                  "Implements all methods listed at "+
                  "https://en.mastercoin.it/wiki/Original_Bitcoin_client/API_Calls_list and "+
                  "and Mastercoin API at " +
                  "https://github.com/mastercoin-MSC/mastercore/blob/mscore-0.0.8/doc/apidocumentation.md "+
                  "lets you set options such as the host and port number, and whether to use SSL."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake",    '~> 0.9'
  s.add_development_dependency "bundler"
  s.add_development_dependency "rspec",   '~> 2.6'
  s.add_development_dependency "fakeweb", '~> 1.3'
  s.add_development_dependency "coveralls"
  # s.add_development_dependency "bitcoin-client"
  # s.add_runtime_dependency "bitcoin-client"
end
