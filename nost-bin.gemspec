require File.expand_path("lib/nost-bin/version", File.dirname(__FILE__))

Gem::Specification.new do |s|
  s.name              = "nost-bin"
  s.version           = NostBin::VERSION
  s.summary           = "nost(1)"
  s.authors           = ["Julian Porta"]
  s.email             = ["julian.porta@gmail.com"]
  s.homepage          = "https://github.com/Porta/nost-bin"

  s.files = Dir[
    "*.gemspec",
    "CHANGELOG*",
    "LICENSE",
    "README.markdown",
    "Rakefile",
    "lib/**/*.rb",
    "test/*.*"
  ]

  s.executables << "nost"

  s.add_dependency "clap"

  s.add_development_dependency "cutest"
end
